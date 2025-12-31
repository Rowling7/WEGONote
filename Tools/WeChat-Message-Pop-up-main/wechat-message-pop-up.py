
import os
import re
import time
import hashlib
import glob
import sys
import threading
import pystray
from PIL import Image, ImageTk
import uiautomation as auto

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
        
        # 获取当前脚本所在目录
        self.script_dir = os.path.dirname(os.path.abspath(__file__))
        self.logo_path = os.path.join(self.script_dir, "WCLogo.png")
        
        if HAS_GUI:
            self.root = tk.Tk()
            self.root.withdraw()  # 隐藏主窗口
            self.screen_width = self.root.winfo_screenwidth()
        else:
            self.screen_width = 1920

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

    def create_popup(self, nickname, content):
        """创建消息弹窗"""
        if not HAS_GUI:
            print(f"新消息来自 {nickname}: {content}")
            return
            
        # 如果已经有弹窗存在，先销毁它
        if self.current_popup and self.current_popup.winfo_exists():
            self.current_popup.destroy()
            
        try:
            # 创建顶层窗口
            popup = tk.Toplevel()
            popup.title("微信新消息")
            popup.overrideredirect(True)  # 无边框窗口
            
            # 设置窗口位置在右上角
            window_width = 300
            window_height = 120  # 增加高度以容纳倒计时标签
            x = self.screen_width - window_width - 20
            y = 20
            popup.geometry(f"{window_width}x{window_height}+{x}+{y}")
            
            # 设置窗口背景为白色
            popup.configure(bg='white')
            
            # 添加微信图标
            if os.path.exists(self.logo_path):
                try:
                    img = Image.open(self.logo_path).resize((40, 40), Image.LANCZOS)
                    logo_img = ImageTk.PhotoImage(img)
                    logo_label = tk.Label(popup, image=logo_img, bg='white')
                    logo_label.image = logo_img
                    logo_label.place(x=10, y=10)
                except Exception as e:
                    print(f"加载Logo失败: {e}")
                    # 使用绿色方块作为替代
                    icon_label = tk.Label(popup, bg='#2DC100', width=6, height=3)
                    icon_label.place(x=10, y=10)
            else:
                # 使用绿色方块作为替代
                icon_label = tk.Label(popup, bg='#2DC100', width=6, height=3)
                icon_label.place(x=10, y=10)
            
            # 添加"新的消息"文本
            title_label = tk.Label(popup, text="新的消息", font=("微软雅黑", 10, "bold"), bg='white')
            title_label.place(x=60, y=10)
            
            # 添加时间标签
            current_time = time.strftime("%H:%M", time.localtime())
            time_label = tk.Label(popup, text=current_time, font=("微软雅黑", 8), fg='gray', bg='white')
            time_label.place(x=window_width - 60, y=10)
            
            # 添加昵称标签
            nickname_label = tk.Label(popup, text=nickname, font=("微软雅黑", 10), bg='white')
            nickname_label.place(x=60, y=40)
            
            # 添加消息内容标签
            content_label = tk.Label(popup, text=content, font=("微软雅黑", 9), bg='white', wraplength=200)
            content_label.place(x=60, y=65)
            
            # 添加倒计时标签
            countdown_label = tk.Label(popup, text="5秒后关闭", font=("微软雅黑", 8), fg='gray', bg='white')
            countdown_label.place(x=10, y=window_height-20)  # 放在窗口底部
            
            # 启动倒计时
            self.start_countdown(popup, countdown_label, 5)  # 5秒倒计时
            
            # 设置5秒后强制销毁弹窗
            popup.after(5000, lambda: self.force_destroy_popup(popup))
            
            # 将当前弹窗引用保存
            self.current_popup = popup
            
            # 显示窗口
            popup.attributes('-topmost', True)  # 置顶显示
            popup.update()
            
        except Exception as e:
            print(f"创建弹窗失败: {e}")
            print(f"新消息来自 {nickname}: {content}")

    def start_countdown(self, popup, label, seconds):
        """开始倒计时"""
        # 检查弹窗是否仍然存在
        if not popup.winfo_exists():
            return  # 如果弹窗已经不存在，则停止倒计时

        if seconds > 0:
            label.config(text=f"{seconds}秒后关闭")
            # 使用after方法递归调用，每次减1秒
            popup.after(1000, self.start_countdown, popup, label, seconds-1)
        else:
            label.config(text="0秒后关闭")
            # 注意：这里不再调用销毁方法，因为after(5000)会强制销毁
            pass

    def force_destroy_popup(self, popup):
        """强制销毁弹窗"""
        try:
            if popup.winfo_exists():  # 检查窗口是否仍然存在
                popup.destroy()
        except tk.TclError:
            # 窗口可能已被手动关闭或通过其他方式关闭，忽略错误
            pass

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

                        time.sleep(10)  # 修改为8秒
                        continue

                # 获取会话列表
                session_list = wechat_win.ListControl(Name="会话")
                if not session_list.Exists():
                    print("未找到会话列表，可能微信界面已改变")
                    time.sleep(8)  # 修改为8秒
                    continue

                # 遍历会话查找未读消息
                found_unread = False
                for session in session_list.GetChildren():
                    print(f"检测会话: {session.Name}")  # 调试输出
                    # 检查是否包含未读消息标记 - 同时支持"条新消息"和"条未读"格式
                    has_unread = "条新消息" in session.Name or "条未读" in session.Name

                    if has_unread:
                        found_unread = True
                        # 匹配"条新消息"或"条未读"格式
                        match_new = re.search(r'(.+?)(\d+)条新消息', session.Name)
                        match_unread = re.search(r'(.+?)(\d+)条未读', session.Name)

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

                        print(f"检测到新消息: {nickname} - {message_count}条")  # 调试输出

                        # 直接创建弹窗，不点击进入会话
                        # 创建一个通用的消息内容提示
                        message_content = f"有{message_count}条新消息"
                        print(f"创建弹窗: {nickname} - {message_content}")  # 调试输出
                        self.create_popup(nickname, message_content)

                if not found_unread:
                    print("当前没有检测到新消息标记")

                time.sleep(8)  # 修改为8秒

            except Exception as e:
                # 忽略找不到窗口的异常
                if "comtypes" not in str(e):
                    print(f"监控出错: {e}")
                time.sleep(8)  # 修改为8秒

    def stop(self, icon=None, item=None):
        """停止监控"""
        self.running = False
        if self.tray_icon:
            self.tray_icon.stop()
        print("程序已退出")
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

if __name__ == "__main__":
    notifier = WeChatNotifier()

    # 创建系统托盘图标
    if HAS_GUI and os.path.exists(notifier.logo_path):
        notifier.create_tray_icon()
        print("程序已在后台运行，请查看系统托盘图标...")
    else:
        print("警告: 未找到WCLogo.png或GUI不可用，程序将在控制台运行")

    # 启动监控
    try:
        notifier.monitor_wechat()
    except KeyboardInterrupt:
        notifier.stop()