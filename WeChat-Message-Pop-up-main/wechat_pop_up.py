import os
import re
import time
import hashlib
import glob
import sys
import threading
import pystray
from PIL import Image, ImageTk, ImageDraw
import uiautomation as auto
import sqlite3

# 尝试导入Tkinter并处理可能的导入错误
try:
    import tkinter as tk
    from tkinter import PhotoImage
    HAS_GUI = True
except ImportError:
    HAS_GUI = False
    print("警告: Tkinter库未安装，无法显示图形界面弹窗")
    print("请确保Python安装时已勾选Tcl/Tk组件")

class WeChatNotifier:
    def __init__(self):
        # ==================== 配置区域 ====================
        # 微信安装路径（用户可在此处修改）
        self.wechat_install_path = r"C:\Program Files\Tencent\Weixin"  # <-- 这里是微信安装路径
        # ================================================

        self.last_message = None
        self.wxid = self.get_wxid()
        self.avatar_cache_path = self.get_avatar_cache_path()
        self.running = True
        self.tray_icon = None

        # 添加当前弹窗引用，确保同一时间只有一个弹窗
        self.current_popup = None
        self.countdown_timer_id = None  # 倒计时定时器ID
        self.destroy_timer_id = None    # 强制销毁定时器ID

        # 获取当前脚本所在目录
        self.script_dir = os.path.dirname(os.path.abspath(__file__))
        self.logo_path = os.path.join(self.script_dir, "WCLogo.png")

        # 初始化数据库连接
        self.db_path = os.path.join(self.script_dir, "wechatpop.db")
        self.init_database()

        if HAS_GUI:
            self.root = tk.Tk()
            self.root.withdraw()  # 隐藏主窗口
            self.screen_width = self.root.winfo_screenwidth()
            self.screen_height = self.root.winfo_screenheight()
        else:
            # 使用临时窗口获取屏幕尺寸
            temp_root = tk.Tk()
            temp_root.withdraw()
            self.screen_width = temp_root.winfo_screenwidth()
            self.screen_height = temp_root.winfo_screenheight()
            temp_root.destroy()
    
    def is_dark_mode_time(self):
        """判断当前时间是否在暗黑模式时间段（17:00-7:00）"""
        current_hour = time.localtime().tm_hour
        # 如果当前小时在17-23或0-6（即17:00-次日7:00），则为暗黑模式时间
        return current_hour >= 17 or current_hour <= 6

    def get_colors(self):
        """获取当前时间段的颜色配置"""
        if self.is_dark_mode_time():
            # 暗黑模式颜色
            return {
                'bg': '#2d2d2d',           # 弹窗背景色
                'canvas_bg': '#2d2d2d',    # Canvas背景色
                'text_color': '#ffffff',   # 文字颜色
                'time_color': '#aaaaaa',   # 时间文字颜色
                'title_color': '#ffffff',  # 标题文字颜色
                'content_color': '#cccccc', # 内容文字颜色
                'border_color': '#555555',  # 边框颜色
                'icon_bg': '#1e1e1e'       # 图标背景色
            }
        else:
            # 正常模式颜色
            return {
                'bg': '#f0f0f0',           # 弹窗背景色
                'canvas_bg': '#f0f0f0',    # Canvas背景色
                'text_color': '#000000',   # 文字颜色
                'time_color': '#808080',   # 时间文字颜色
                'title_color': '#000000',  # 标题文字颜色
                'content_color': '#333333', # 内容文字颜色
                'border_color': '#cccccc',  # 边框颜色
                'icon_bg': '#2DC100'       # 图标背景色
            }

    def init_database(self):
        """初始化数据库，创建表（如果不存在）"""
        try:
            conn = sqlite3.connect(self.db_path)
            cursor = conn.cursor()

            # 检查表是否存在
            cursor.execute("SELECT name FROM sqlite_master WHERE type='table' AND name='wechat_message';")
            table_exists = cursor.fetchone()

            if not table_exists:
                # 如果表不存在，创建新表，包含create_date字段
                create_table_sql = '''
                CREATE TABLE wechat_message (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    person TEXT,
                    message TEXT,
                    date DATE,
                    create_date DATETIME DEFAULT CURRENT_TIMESTAMP
                );
                '''
                cursor.execute(create_table_sql)
                conn.commit()
            else:
                # 检查是否已有create_date字段，如果没有则添加
                cursor.execute("PRAGMA table_info(wechat_message);")
                columns = [column[1] for column in cursor.fetchall()]
                if 'create_date' not in columns:
                    # 添加create_date字段
                    alter_table_sql = 'ALTER TABLE wechat_message ADD COLUMN create_date DATETIME DEFAULT CURRENT_TIMESTAMP;'
                    cursor.execute(alter_table_sql)
                    conn.commit()

            conn.close()
            print(f"数据库初始化完成: {self.db_path}")
        except Exception as e:
            print(f"数据库初始化失败: {e}")

    def save_message_to_db(self, nickname, message_content, msg_time=None):
        """将消息保存到数据库"""
        try:
            conn = sqlite3.connect(self.db_path)
            cursor = conn.cursor()

            # 如果有从微信获取的时间，则使用该时间，否则使用当前时间
            if msg_time:
                # 构建今天日期和从微信获取的时间
                today_date = time.strftime("%Y-%m-%d")
                full_time = f"{today_date} {msg_time}:00"
            else:
                # 使用当前时间
                full_time = time.strftime("%Y-%m-%d %H:%M:%S")

            # 插入消息记录，同时记录创建时间
            insert_sql = '''
            INSERT INTO wechat_message (person, message, date, create_date)
            VALUES (?, ?, ?, CURRENT_TIMESTAMP)
            '''
            cursor.execute(insert_sql, (nickname, message_content, full_time))

            conn.commit()
            conn.close()

            print(f"消息已保存到数据库: {nickname} - {message_content} at {full_time}")
        except Exception as e:
            print(f"保存消息到数据库失败: {e}")

    def get_wxid(self):
        """获取当前登录用户的wxid"""
        try:
            # 微信数据目录可能的位置，优先使用安装路径下的用户数据
            possible_paths = [
                os.path.join(self.wechat_install_path, 'WeChat Files'),
                os.path.join(os.environ['USERPROFILE'], 'Documents', 'WeChat Files'),
                os.path.join(os.environ['USERPROFILE'], 'AppData', 'Roaming', 'Tencent', 'WeChat', 'WeChat Files')
            ]

            for path in possible_paths:
                if os.path.exists(path):
                    # 查找以wxid_开头的文件夹
                    for item in os.listdir(path):
                        if item.startswith('wxid_'):
                            return item
            return None
        except Exception as e:
            print(f"获取wxid失败: {e}")
            return None

    def get_avatar_cache_path(self):
        """获取头像缓存路径"""
        if self.wxid:
            # 尝试不同位置的头像缓存，优先使用安装路径
            possible_paths = [
                os.path.join(self.wechat_install_path, 'WeChat Files', self.wxid, 'Avatar'),
                os.path.join(os.environ['USERPROFILE'], 'Documents', 'WeChat Files', self.wxid, 'Avatar'),
                os.path.join(os.environ['USERPROFILE'], 'AppData', 'Roaming', 'Tencent', 'WeChat', 'WeChat Files', self.wxid, 'Avatar')
            ]
            for path in possible_paths:
                if os.path.exists(path):
                    return path
        return None

    def get_avatar_path(self, wxid):
        """根据wxid获取头像路径"""
        if not self.avatar_cache_path or not os.path.exists(self.avatar_cache_path):
            return None

        # 计算wxid的MD5值，用于查找头像文件
        md5_hash = hashlib.md5(wxid.encode()).hexdigest()
        # 查找匹配的头像文件
        for ext in ['jpg', 'png', 'jpeg']:
            avatar_pattern = os.path.join(self.avatar_cache_path, f'*{md5_hash}*.{ext}')
            avatar_files = glob.glob(avatar_pattern)
            if avatar_files:
                return avatar_files[0]
        return None

    def get_latest_message_content(self, session_control):
        """尝试从会话列表中获取最新消息内容和时间"""
        try:
            # 尝试获取会话中的消息预览文本
            # 在会话列表中，通常会显示最后一条消息的预览
            session_name = session_control.Name
            print(f"解析会话名称: {session_name}")  # 调试输出

            # 查找会话中包含的消息内容部分
            # 微信会话列表通常会显示最后一条消息的预览和时间
            # 会话名称格式通常为 "昵称 消息内容 时间"
            parts = session_name.split(' ')  # 分割所有部分
            if len(parts) >= 3:
                # 最后一部分通常是时间
                time_part = parts[-1]
                # 检查是否为时间格式 (HH:MM)
                if ':' in time_part and len(time_part) == 5 and time_part.replace(':', '').isdigit():
                    # 提取时间
                    message_time = time_part
                    # 提取消息内容 (除了昵称和时间的部分)
                    message_content = ' '.join(parts[1:-1])  # 排除昵称和时间部分
                else:
                    # 如果最后部分不是时间格式，则使用当前时间
                    message_time = time.strftime("%H:%M", time.localtime())
                    message_content = ' '.join(parts[1:])  # 排除昵称部分
            else:
                # 如果格式不符合预期，使用当前时间
                message_time = time.strftime("%H:%M", time.localtime())
                message_content = "有新消息"

            # 尝试通过其他方式获取信息 - 使用uiautomation的其他方法
            # 获取子控件
            children = session_control.GetChildren()
            for child in children:
                if hasattr(child, 'Name') and child.Name:
                    child_text = child.Name
                    print(f"子控件文本: {child_text}")  # 调试输出
                    # 检查是否是时间格式
                    if len(child_text) == 5 and ':' in child_text and child_text.replace(':', '').isdigit():
                        message_time = child_text
                    elif child_text and '条新消息' not in child_text and '条未读' not in child_text:
                        # 这可能是消息内容，但要确保不覆盖已找到的内容
                        if message_content == "有新消息" or len(child_text) > len(message_content):
                            message_content = child_text[:100]

            # 特别处理包含"条新消息"或"条未读"的情况，提取真正的消息内容
            if '条新消息' in session_name or '条未读' in session_name:
                # 使用正则表达式匹配昵称和消息数量
                match_new = re.search(r'(.+?)(\d+)条新消息(.*)', session_name)
                match_unread = re.search(r'(.+?)(\d+)条未读(.*)', session_name)

                if match_new and match_new.group(3):
                    # 提取"条新消息"后面的内容作为消息内容
                    additional_content = match_new.group(3).strip()
                    if additional_content and '消息免打扰' not in additional_content:
                        message_content = additional_content
                elif match_unread and match_unread.group(3):
                    # 提取"条未读"后面的内容作为消息内容
                    additional_content = match_unread.group(3).strip()
                    if additional_content and '消息免打扰' not in additional_content:
                        message_content = additional_content

            print(f"解析结果 - 内容: {message_content}, 时间: {message_time}")  # 调试输出
            return message_content[:100], message_time  # 返回内容和时间

        except Exception as e:
            print(f"获取消息内容失败: {e}")
            import traceback
            traceback.print_exc()  # 打印详细错误信息
            return "有新消息", time.strftime("%H:%M", time.localtime())

    def check_duplicate_message(self, nickname, content, msg_time=None):
        """检查数据库中是否已存在相同的消息记录，必须严格按照person、message、date三个字段进行重复检查"""
        try:
            conn = sqlite3.connect(self.db_path)
            cursor = conn.cursor()

            # 必须有时间信息才能进行精确的三字段重复检查
            if not msg_time:
                print(f"警告: 没有时间信息，无法进行精确重复检查，视为新消息: {nickname} - {content}")
                conn.close()
                return False

            # 构建完整的日期时间字符串
            today_date = time.strftime("%Y-%m-%d")
            full_time = f"{today_date} {msg_time}:00"

            # 精确查询 person、message 和 date 三个字段完全匹配的记录
            query = '''
            SELECT COUNT(*) FROM wechat_message
            WHERE person = ? AND message = ? AND date = ?
            '''
            cursor.execute(query, (nickname, content, full_time))

            result = cursor.fetchone()
            count = result[0] if result else 0
            conn.close()

            is_duplicate = count > 0
            if is_duplicate:
                print(f"检测到重复消息: {nickname} - {content}，时间: {full_time}")
            else:
                print(f"未检测到重复消息: {nickname} - {content}，时间: {full_time}")

            return is_duplicate
        except Exception as e:
            print(f"检查重复消息时出错: {e}")
            import traceback
            traceback.print_exc()
            return False

    def round_rectangle(self, canvas, x1, y1, x2, y2, radius=25, **kwargs):
        """在Canvas上绘制圆角矩形"""
        points = [x1+radius, y1,
                  x1+radius, y1,
                  x2-radius, y1,
                  x2-radius, y1,
                  x2, y1,
                  x2, y1+radius,
                  x2, y1+radius,
                  x2, y2-radius,
                  x2, y2-radius,
                  x2, y2,
                  x2-radius, y2,
                  x2-radius, y2,
                  x1+radius, y2,
                  x1+radius, y2,
                  x1, y2,
                  x1, y2-radius,
                  x1, y2-radius,
                  x1, y1+radius,
                  x1, y1+radius,
                  x1, y1]

        return canvas.create_polygon(points, **kwargs, smooth=True)

    def is_night_time(self):
        """判断当前是否为夜间时间(17:00-7:00)"""
        current_hour = time.localtime().tm_hour
        # 如果是17点到23点，或者是0点到7点，都认为是夜间
        return current_hour >= 17 or current_hour < 7

    def create_popup(self, nickname, content, msg_time=None):
        """创建消息弹窗"""
        # 检查是否已存在相同的消息记录（包含时间因素）
        if self.check_duplicate_message(nickname, content, msg_time):
            print(f"检测到重复消息，跳过: {nickname} - {content}")
            # 即使是重复消息，也要保存到数据库（避免时间不同但内容相同的消息被忽略）
            self.save_message_to_db(nickname, content, msg_time)
            return

        if not HAS_GUI:
            print(f"GUI不可用，无法创建弹窗。消息来自 {nickname}: {content}")
            # 保存消息到数据库
            self.save_message_to_db(nickname, content, msg_time)
            return

        # 获取当前颜色配置
        colors = self.get_colors()

        # 如果已经有弹窗存在，先销毁它
        if self.current_popup and self.current_popup.winfo_exists():
            self.destroy_popup_safely(self.current_popup)
            self.current_popup = None

        try:
            # 创建顶层窗口
            popup = tk.Toplevel()
            # 设置窗口标题
            popup.title("wechatpopupcys")
            popup.overrideredirect(True)  # 无边框窗口

            # 设置窗口位置在右上角
            window_width = 300
            window_height = 128  # 减少高度，因为不再需要倒计时标签

            # 确保屏幕坐标获取正确
            if HAS_GUI:
                # 确保root窗口已初始化
                if not hasattr(self, 'root') or not self.root:
                    self.root = tk.Tk()
                    self.root.withdraw()  # 隐藏主窗口
                self.screen_width = self.root.winfo_screenwidth()
                self.screen_height = self.root.winfo_screenheight()
            else:
                # 如果没有GUI，使用临时窗口获取屏幕尺寸
                temp_root = tk.Tk()
                temp_root.withdraw()
                self.screen_width = temp_root.winfo_screenwidth()
                self.screen_height = temp_root.winfo_screenheight()
                temp_root.destroy()

            x = self.screen_width - window_width - 30
            y = 40
            popup.geometry(f"{window_width}x{window_height}+{x}+{y}")

            # 设置窗口背景为对应颜色
            popup.configure(bg=colors['bg'])

            # 创建Canvas用于绘制圆角矩形
            canvas = tk.Canvas(popup, width=window_width, height=window_height,
                               highlightthickness=0, bg=colors['canvas_bg'], bd=0)
            canvas.place(x=0, y=0)

            # 使用PIL绘制带圆角的矩形
            img = Image.new('RGBA', (window_width, window_height), (0, 0, 0, 0))
            draw = ImageDraw.Draw(img)

            # 绘制带圆角的矩形 - 根据模式选择颜色
            if self.is_dark_mode_time():
                # 暗黑模式：深色背景，浅色边框
                fill_color = '#2d2d2d'
                outline_color = '#555555'
            else:
                # 正常模式：白色背景，浅灰色边框
                fill_color = 'white'
                outline_color = '#cccccc'

            draw.rounded_rectangle(
                [(2, 2), (window_width-2, window_height-2)],
                radius=15,  # 圆角半径
                fill=fill_color,
                outline=outline_color,
                width=2
            )

            # 转换为tkinter可用的图像
            rounded_img = ImageTk.PhotoImage(img)

            # 在Canvas上显示圆角矩形
            canvas.create_image(1, 1, anchor='nw', image=rounded_img)

            # 保存图像引用，防止被垃圾回收
            canvas.rounded_img = rounded_img

            # 添加微信图标
            if os.path.exists(self.logo_path):
                try:
                    img = Image.open(self.logo_path).resize((40, 40), Image.LANCZOS)
                    logo_img = ImageTk.PhotoImage(img)
                    logo_label = tk.Label(popup, image=logo_img, bg=fill_color)
                    logo_label.image = logo_img
                    logo_label.place(x=10, y=10)
                except Exception as e:
                    print(f"加载Logo失败: {e}")
                    # 使用颜色块作为替代 - 根据模式选择颜色
                    icon_label = tk.Label(popup, bg=colors['icon_bg'], width=6, height=3)
                    icon_label.place(x=10, y=10)
            else:
                # 使用颜色块作为替代 - 根据模式选择颜色
                icon_label = tk.Label(popup, bg=colors['icon_bg'], width=6, height=3)
                icon_label.place(x=10, y=10)

            # 添加"新的消息"文本
            title_label = tk.Label(popup, text="新的消息", font=("微软雅黑", 10, "bold"), 
                                   bg=fill_color, fg=colors['title_color'])
            title_label.place(x=60, y=10)

            # 添加时间标签 - 使用从微信获取的时间
            display_time = msg_time if msg_time else time.strftime("%H:%M", time.localtime())
            time_label = tk.Label(popup, text=display_time, font=("微软雅黑", 8), 
                                  fg=colors['time_color'], bg=fill_color)
            time_label.place(x=window_width - 60, y=10)

            # 添加昵称标签
            nickname_label = tk.Label(popup, text=nickname, font=("微软雅黑", 10), 
                                      bg=fill_color, fg=colors['text_color'])
            nickname_label.place(x=60, y=40)

            # 添加消息内容标签
            content_label = tk.Label(popup, text=content, font=("微软雅黑", 9), 
                                     bg=fill_color, fg=colors['content_color'], wraplength=200)
            content_label.place(x=60, y=65)

            # 设置5秒后自动销毁弹窗
            self.destroy_timer_id = popup.after(5000, lambda: self.destroy_popup_safely(popup))

            # 绑定窗口关闭事件，确保清理引用
            popup.protocol("WM_DELETE_WINDOW", lambda: self.destroy_popup_safely(popup))

            # 将当前弹窗引用保存
            self.current_popup = popup

            # 显示窗口
            popup.attributes('-topmost', True)  # 置顶显示
            popup.update()

            # 确保窗口可见
            popup.lift()  # 提升到最顶层
            popup.focus_force()  # 强制获得焦点

            print(f"弹窗已创建并显示在位置: ({x}, {y})，屏幕尺寸: {self.screen_width}x{self.screen_height}")
            print(f"弹窗详细信息: 昵称={nickname}, 内容={content}, 时间={display_time}")
            print(f"当前模式: {'暗黑模式' if self.is_dark_mode_time() else '正常模式'}")

            # 保存消息到数据库
            self.save_message_to_db(nickname, content, msg_time)

        except Exception as e:
            print(f"创建弹窗失败: {e}")
            import traceback
            traceback.print_exc()  # 打印详细错误信息
            print(f"新消息来自 {nickname}: {content}")
            # 即使创建弹窗失败，也要保存消息到数据库
            self.save_message_to_db(nickname, content, msg_time)

    def start_countdown_display(self, popup):
        """移除倒计时显示功能"""
        # 此函数不再需要，因为不再显示倒计时
        pass

    def destroy_popup_immediately(self):
        """立即销毁当前弹窗"""
        if self.current_popup:
            try:
                # 取消所有定时器
                if self.countdown_timer_id:
                    self.current_popup.after_cancel(self.countdown_timer_id)
                    self.countdown_timer_id = None
                if self.destroy_timer_id:
                    self.current_popup.after_cancel(self.destroy_timer_id)
                    self.destroy_timer_id = None

                # 销毁弹窗
                self.current_popup.destroy()
            except tk.TclError:
                # 弹窗可能已被销毁，忽略错误
                pass
            finally:
                self.current_popup = None

    def destroy_popup_safely(self, popup):
        """安全地销毁弹窗"""
        try:
            if popup and popup.winfo_exists():
                # 取消倒计时定时器
                if self.countdown_timer_id:
                    try:
                        popup.after_cancel(self.countdown_timer_id)
                    except tk.TclError:
                        pass  # 定时器可能已经执行完毕
                    self.countdown_timer_id = None

                # 取消销毁定时器
                if self.destroy_timer_id:
                    try:
                        popup.after_cancel(self.destroy_timer_id)
                    except tk.TclError:
                        pass  # 定时器可能已经执行完毕
                    self.destroy_timer_id = None

                # 销毁弹窗
                popup.destroy()

            # 确保弹窗引用被清除
            if self.current_popup == popup:
                self.current_popup = None
        except tk.TclError:
            # 弹窗可能已被销毁，忽略错误
            pass
        except Exception as e:
            print(f"销毁弹窗时出错: {e}")

    def destroy_all_popups(self):
        """销毁所有弹窗"""
        print("销毁所有弹窗...")
        if self.current_popup:
            try:
                # 取消所有定时器
                if self.countdown_timer_id:
                    self.current_popup.after_cancel(self.countdown_timer_id)
                    self.countdown_timer_id = None
                if self.destroy_timer_id:
                    self.current_popup.after_cancel(self.destroy_timer_id)
                    self.destroy_timer_id = None

                # 销毁弹窗
                if self.current_popup.winfo_exists():
                    self.current_popup.destroy()
            except tk.TclError:
                # 弹窗可能已被销毁，忽略错误
                pass
            finally:
                self.current_popup = None
                print("弹窗已销毁")

    def monitor_wechat(self):
        """监控微信新消息"""
        print("微信新消息监控已启动... (在系统托盘中运行)")
        print(f"使用微信安装路径: {self.wechat_install_path}")

        # 尝试查找所有可能的微信窗口
        try:
            # 遍历所有顶级窗口
            for window in auto.GetRootControl().GetChildren():
                if "微信" in window.Name or "WeChat" in window.Name:
                    print(f"找到可能的微信窗口: 名称={window.Name}, 类名={window.ClassName}")
        except Exception as e:
            print(f"尝试扫描窗口时出错: {e}")

        while self.running:
            found_unread = False  # 将变量移到循环开始处
            try:
                # 获取微信窗口 - 使用实际的类名
                wechat_win = auto.WindowControl(Name="微信", ClassName="mmui::MainWindow")
                if not wechat_win.Exists(maxSearchSeconds=1):  # 设置较短的搜索时间
                    print("未找到微信窗口，请确保微信窗口处于打开状态（不能最小化到托盘）")
                    # 尝试使用英文名称
                    wechat_win = auto.WindowControl(Name="WeChat", ClassName="mmui::MainWindow")
                    if not wechat_win.Exists(maxSearchSeconds=1):
                        print("尝试使用英文名称和实际类名也未找到微信窗口")

                        # 再次尝试查找所有可能的微信窗口
                        for window in auto.GetRootControl().GetChildren():
                            if "微信" in window.Name or "WeChat" in window.Name:
                                print(f"当前运行的可能微信窗口: 名称={window.Name}, 类名={window.ClassName}")

                        time.sleep(5)  # 修改为5秒
                        continue

                # 获取会话列表
                session_list = wechat_win.ListControl(Name="会话")
                if not session_list.Exists():
                    print("未找到会话列表，可能微信界面已改变")
                    time.sleep(5)  # 修改为5秒
                    continue

                # 定义需要过滤的会话名称列表
                filtered_sessions = [
                    "公众号", "QQ邮箱提醒", "折叠的聊天", "服务号",
                    "微信支付", "微信团队", "服务通知", "腾讯新闻",
                    "文件传输助手", "微信读书", "腾讯视频", "微云",
                    "腾讯客服", "腾讯文档", "腾讯会议", "企业微信",
                    "订阅号消息", "微信红包", "腾讯公益", "微信城市服务"
                ]

                # 遍历会话查找未读消息
                has_new_message = False  # 添加新消息标志
                for session in session_list.GetChildren():
                    session_name = session.Name
                    print(f"检测会话: {session_name}")  # 调试输出

                    # 检查是否在过滤列表中
                    is_filtered = False
                    for filter_name in filtered_sessions:
                        if filter_name in session_name or session_name == filter_name:
                            is_filtered = True
                            break

                    if is_filtered:
                        print(f"跳过过滤会话: {session_name}")
                        continue

                    # 检查是否包含未读消息标记 - 同时支持"条新消息"和"条未读"格式
                    has_unread = "条新消息" in session_name or "条未读" in session_name

                    if has_unread:
                        found_unread = True
                        # 匹配"条新消息"或"条未读"格式
                        match_new = re.search(r'(.+?)(\d+)条新消息', session_name)
                        match_unread = re.search(r'(.+?)(\d+)条未读', session_name)

                        if match_new:
                            nickname = match_new.group(1).strip()
                            message_count = int(match_new.group(2))
                        elif match_unread:
                            nickname = match_unread.group(1).strip()
                            message_count = int(match_unread.group(2))
                        else:
                            continue  # 如果没有匹配到，跳过这个会话

                        # 去除可能的"已置顶"等标记
                        nickname = re.sub(r'\s*已置顶$', '', nickname)

                        # 再次检查过滤列表，确保昵称也不在过滤列表中
                        is_filtered_by_nickname = False
                        for filter_name in filtered_sessions:
                            if filter_name in nickname or nickname == filter_name:
                                is_filtered_by_nickname = True
                                break

                        if is_filtered_by_nickname:
                            print(f"跳过过滤昵称: {nickname}")
                            continue

                        print(f"检测到新消息: {nickname} - {message_count}条")  # 调试输出

                        # 获取会话中的实际消息内容和时间（不点击进入聊天窗口）
                        actual_content, msg_time = self.get_latest_message_content(session)

                        # 检查是否为重复消息（即是否为新消息）
                        if not self.check_duplicate_message(nickname, actual_content, msg_time):
                            # 这是一个新消息，设置标志
                            has_new_message = True
                            # 创建弹窗显示实际消息内容
                            print(f"准备创建弹窗: {nickname} - {actual_content} at {msg_time}")  # 调试输出
                            self.create_popup(nickname, actual_content, msg_time)
                            print(f"弹窗创建调用完成")  # 调试输出
                        else:
                            print(f"跳过重复消息，不创建弹窗: {nickname} - {actual_content}")

                # 只有在没有新消息时才销毁弹窗
                if not has_new_message:
                    print("当前周期未检测到新消息，销毁所有弹窗")
                    self.destroy_all_popups()
                else:
                    print("当前周期检测到新消息，保留现有弹窗")

                time.sleep(5)  # 修改为5秒

            except Exception as e:
                # 忽略找不到窗口的异常
                if "comtypes" not in str(e):
                    print(f"监控出错: {e}")
                # 在异常情况下也要确保清理弹窗
                self.destroy_all_popups()
                time.sleep(5)  # 修改为5秒

    def stop(self, icon=None, item=None):
        """停止监控"""
        self.running = False
        if self.tray_icon:
            self.tray_icon.stop()
        print("程序已退出")

        # 销毁当前弹窗
        if self.current_popup:
            self.destroy_popup_immediately()

        if HAS_GUI:
            self.root.destroy()
        sys.exit(0)

    def create_tray_icon(self):
        """创建系统托盘图标"""
        if not HAS_GUI or not os.path.exists(self.logo_path):
            return

        try:
            # 加载托盘图标
            image = Image.open(self.logo_path)

            # 创建托盘菜单
            menu = pystray.Menu(
                pystray.MenuItem('退出', self.stop)
            )

            # 创建托盘图标
            self.tray_icon = pystray.Icon(
                "wechat_notifier",
                image,
                "微信消息通知",
                menu
            )

            # 在单独的线程中启动托盘图标
            threading.Thread(target=self.tray_icon.run, daemon=True).start()

        except Exception as e:
            print(f"创建系统托盘图标失败: {e}")

    def main_loop(self):
        """主循环，定期检查时间变化以更新模式"""
        while self.running:
            # 检查当前时间是否跨越了模式边界（7:00或17:00）
            current_hour = time.localtime().tm_hour
            # 检查是否在模式切换的边界时间
            if current_hour == 7 or current_hour == 17:
                # 短暂休眠以确保时间变化稳定
                time.sleep(60)  # 等待1分钟以避免重复触发
            time.sleep(300)  # 每5分钟检查一次

def main():
    notifier = WeChatNotifier()

    # 创建系统托盘图标
    if HAS_GUI and os.path.exists(notifier.logo_path):
        notifier.create_tray_icon()
        print("程序已在后台运行，请查看系统托盘图标...")
    else:
        print("警告: 未找到WCLogo.png或GUI不可用，程序将在控制台运行")

    # 启动监控
    try:
        # 在单独线程中运行主循环以检查时间变化
        threading.Thread(target=notifier.main_loop, daemon=True).start()
        notifier.monitor_wechat()
    except KeyboardInterrupt:
        notifier.stop()

if __name__ == "__main__":
    main()