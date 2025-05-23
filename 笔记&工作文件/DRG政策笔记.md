### DRG结算

> 1.DRG结算的方式有两种：**点数法、费率法**
> 
> 威海市DRG结算采用的是**点数法**
> 
> 烟台市DRG结算采用的是**费率法**

> 2.影响月度结算的三个指标：**点数、点值、系数**

---

### 一、DRG费用分析

> 1.出院人数：符合DRG结算的病例出院后的人数
> 
> 2.预计盈亏（账面）：医保预计结算金额-花费的总费用（患者实际医疗费用）
> 
>     实际盈亏：医保实际结算金额-医院实际成本
> 
>     平均盈亏：盈亏/出院人数
> 
> 3.均次费用：总费用/出院人数

---

### 二、入组&组数

> **A、P、Y、Z优先入组（MDCA\MDCP\MDCY\MDCZ）**
> 
> 病例--(主要诊断)-->MDC--(主要诊断&主要操作)-->ADRG--(个体特征)-->DRGs

> V2.0 DRG组数 634个。
> 
> **组数越多代表医院收治病例种数越多。**
> 
> *三甲医院比普通医院组数要多*

---

### 三、合并症并发症

> 1.合并症并发症是通过**其他诊断**判断的
> 
> 2.0：17岁以下
> 
> *存在严重的/伴有一般的/死亡转院都优先于17岁以下。只有在不伴有/不做区分/无死亡无转院时才会用0.*
> 
>     1.伴有严重的并发症合并症(MCC)
> 
>     3.伴有一般的合并症并发症(CC)
> 
>     5.不伴有合并症并发症(Non-CC)
> 
>     7.死亡或转院
> 
> *只要发生死亡/转院优先用7，无论年龄，是否伴有合并症并发症（1、3）*
> 
>     9.不做区分：不做区分代表根据主要诊断不应该有合并症并发症
> 
> 3.存在多个并发症合并症，要挨个遍历13579，可以入1就不会进去3 5 7 ，进不了1，能进3，那就进不了5 7 9.

| 编码    | 含义               | 优先级 | 适用条件                             |
| ----- | ---------------- | --- | -------------------------------- |
| **1** | 严重并发症与合并症（MCC）   | 最高  | 存在严重并发症（如脓毒症、多器官衰竭）或需高资源消耗的合并症   |
| **3** | 一般并发症与合并症（CC）    | 次高  | 存在一般并发症（如轻度肺炎、可控高血压）或需中等资源消耗的合并症 |
| **7** | 死亡或转院            | 高   | 患者死亡或非医嘱转院（无论是否伴并发症）             |
| **0** | 17岁以下无并发症        | 中   | 年龄<17岁且无任何并发症/合并症                |
| **5** | 无并发症与合并症（Non-CC） | 低   | 年龄≥17岁且无并发症/合并症                  |
| **9** | 未区分情况            | 特殊  | 特定病组（如精神类疾病）或数据不完整时使用            |

---

### 四、基准点数计算

> RW权重计算：
> 
> RW=该DRG组平均费用/全市所有组平均费用​
> 
> 总权重=∑(某DRG组费用权重×该DRG组病例数)
> 
> **当年基准点数：**
> 
>     全市以当前为基准向前推3年，以20%，30%，50%比例，剔除超高费用，超低费用，全部入组。
> 
> **RW*1000=当年组基准点数**

> **1.稳定病组**：病组内例数>5，变异系数**小于或等于**1
> 
> *特点：组内费用分布相对均匀，符合大数定理，适合作为医保支付标准的基础。*
> 
> **基准点数**：该DRG病组住院**次均费用**/全部DRG结算住院次均费用**1000（保留8位小数）*
> 
> **2.非稳定病组**：组内病例数**小于或等于**5，以及组内例数**大于**5且变异系数（cv）大于1
> 
> *特点:组内费用差异大或样本量不足，需采用特殊结算方式（如按项目付费或中位数费用结算）。*
> 
> **基准点数**：该DRG病组住院**中位费用**/全部DRG结算住院次均费用*1000（保留8位小数）

> **变异系数**：**CV是判断病组是否稳定的关键指标**
> 
> **$CV=标准差（Standard Deviation）/平均值（Mean）​×100\%$**
> 
> 标准差：反映数据与平均值的偏离程度。
> 
> 平均值：数据的算术平均数。
> 
> *比如两个病组，一个平均费用1万，标准差500，CV是5%；另一个平均费用也是1万，但标准差2000，CV是20%。显然第一个病组更稳定，费用波动小，适合作为稳定病组。*
> 
> **CV越小，说明数据越集中（费用差异小）；CV越大，说明数据越分散（费用差异大）。**

---

### 五、CMI（病例组合指数,Case Mix Index）

> 所有医疗机构治疗此类病例所消耗的医疗资源都较高，那么说明治疗此类疾病的**难度较大**。
> 
> 某个DRG组CMI：RW OR 该DRG组总权重/总病例数
> 
> $CMI=∑(该医院各DRG组权重×该DRG组病例数)/该医院总​病例数$
> 
> *总权重累加/总病例数*

---

### 六、调整系数

> 1.稳定病组：**该医疗机构该病组**例均住院费用/**全市该病例**均住院费用   （0.4-1.5）

> **2.基数统一为1：**
> 
>     2.1基准点数**大于1000**，单一定点医疗机构病例数**占全市的70% 且 调整系数小于1**，**全市**该病组系数调整为1。
> 
>     2.2基准点数**小于1000**，历史测算数据中该病组例数占全市总病组例数**大于5%**，该病组**所有顶点医疗机构**调整系数为1。
> 
>     2.3临床常见多发、治疗方式成熟、治疗费用稳定、费用水平较低、诊疗病例数量较多且不伴有合并症及并发症的病组，经与相关医疗机构专家协商，最终确定同城同价病组，全市实行 DRG 付费医疗机构（一级及未定级医疗机构除外）同城同价病组调整系数确定为 1。
> 
>     2.4非稳定病组 系数为1。
> 
>     2.5新增病组当年的调整系数为1。

> **3.系数校正**
> 
> 全市同等级医疗机构 病例数大于5，医疗机构级别调整系数=该**等级**医疗机构drg病组**次均住院费用**/**所有试点医疗机构**本DRG病组**次均住院费用**。大于1 确定为1.
> 
> 小于等于5例时，采用本院全部病例数大于5的病组**调整系数加权平均值**确定系数。大于1 确定为1
> 
> 试点医疗机构**当年新发生病组**的调整系数，按**同等级**医疗机构级别调整系数确定

> **4.调整**
> 
> 正常时至少两年调整一次。目前时一年小调，两年大调

---

### 七、倍率

> 病例按照分组进入稳定病组、非稳定病组、无法分入已有病组。
> 
> 稳定病组包含 高倍率、低倍率、正常倍率病例。

> **1.高倍率：能正常入组，但住院费用高于病组支付标准（例均）倍数。**
> 
> | 基准点数        | 倍数   |
> | ----------- | ---- |
> | <1000       | >3   |
> | [1000,2500) | >2   |
> | >=2500      | >1.5 |
> 
> **高倍率入组错误**：实际为高倍率但因编码错误误分入低权重病组
> 
> 原因：*漏填并发症/合并症；主要诊断选择错误*
> 
> 影响：医保支付少，医院亏。
> 
> **高倍率高码低编**：实际诊疗复杂程度高（应进高权重病组），但因编码问题分入**低权重病组**
> 
> 原因：*漏填手术操作，诊断选择错误；为了规避高倍率审查，刻意降低编码复杂度*
> 
> 影响：医保会查，影响收入。
> 
> **出现罕见病或极其严重的并发症**：申请特病单议
> 
> *三级综合医院 占2%*  *三级专科医院 占1.7%*
> 
> *二级综合医院 占1%*  *二级专科医院 占0.5%*
> 
> *一级及未定 占0.3%*
> 
> **采用新技术新项目**：申请新技术补偿
> 
> **未合理控制费用、住院天数过长、大量使用高价值耗材及高价值药品**：合理控制费用

> 场景：患者行冠状动脉支架植入术（ICD-9-CM3 36.06），同时存在不稳定型心绞痛（I20.0)
> 
> **错误操作**：主诊断选择"I25.103（冠状动脉粥样硬化性心脏病）“而非手术指征"I20.0”。
> **后果**：
> 
> - 正确入组应进入循环系统手术高权重FM11组（RW=2.8，支付标准4.2万元）
> - 实际误入非手术组FQ13（RW=1.2，支付标准1.8万元）
>   （实际治疗成本3.5万元 vs 支付标准1.8万元)
> - **最终医院亏损2.4万元** 4.2-3.5=0.7 3.5-1.8=1.7 1.7+0.7=2.4

> **2.低倍率：可以正常入组，但是住院费用低于病组支付标准的 50%（威海2025年）。威海以前是40%，其他地区有30%**
> 
> 入组错误：医院被质疑低效治疗。
> 
> 低码高编：可能被医保认定为“骗保”，面临罚款、追回资金等处罚。
> 
>     *低码高编是DRG监管重点，医保部门通过大数据分析（如费用与诊断匹配度）筛查异常病例*
> 
> 治疗不充分、不完整、病情过重死亡、提前出院/无住院指征、分解住院、日间手术、日间病房：严格把握患者入院指征，规范诊疗行为

---

### 八、点数计算

> **1.正常倍率：**
> 
> 病例单病例点数：病组基准点数*调整系数
> 
> 病组总点数：**基准点数\*调整系数\*病组病例数**

> **按人头算**：正常倍率病例的支付点数仅根据病例入组的DRG病组基准点数计算，与实际发生的医疗费用无关。
> 
>     *本质是"按病组预付”：通过固定点数支付，倒逼医院控制成本。*
> 
> **按项目付费**：该模式本质是DRG刚性支付框架下的柔性调节机制，需严格把控适用范围
> 
> $结算金额 = ∑（各项目单价 × 数量） × 报销比例$
> 
> 示例：某正常倍率病例实际发生费用如下：
> 
> - 检查费：2000元（DRG标准内检查费1500元）
> - 手术费：8000元（DRG标准内手术费6000元）
> - 报销比例：70%
>   则结算金额 = (2000+8000) ×70% = 7000元（而非按DRG标准7500×70%=5250元）
> 
> | 对比项      | 按人头算（DRG点数法） | 按项目付费        |
> | -------- | ------------ | ------------ |
> | **支付依据** | 病组基准点数（固定值）  | 实际发生费用（浮动值）  |
> | **风险承担** | **医院**承担超支风险 | **医保**承担超支风险 |
> | **控费激励** | 鼓励医院优化成本     | 无成本控制动力      |
> | **控费效果** | 强（倒逼成本优化）    | 弱（回归按项目付费模式） |
> | **适用病例** | 正常倍率病例       | 高/低倍率、特病单议   |

> **2.高倍率**
> 
> 病例单病例点数：病组基准点数\*调整系数\+追加点数
> 
> 追加点数=[(实际住院费用-不合理的费用)/所有医疗机构例均费用-高倍率界值]\*病组基准点数

> <u>例如：基准点数为2000的病组，例均费用1万，出现了总费用为2.5万的病例，超过例均费用2倍了，为高倍率病例；</u>**不合理费用为1千，则追加点数=【（25000-1000）/10000-2】\*2000=800**；**该病组调整系数为1.4，则该倍率病例总点数为2800+800=3600**；出现总费用2.2万的病例，追加点数={(22000-1000）÷10000-2}=200，该病例最终点数为2800+200=3000.

> **最终实际支付费用=高倍率点数\*调整倍率\*点值**

> **3.低倍率**
> 
> 病例单病例点数=（该病例**实际住院总费用**/所有定点医疗机构该DRG病组历史**次均住院费用**）\*该DRG基准点数
> 
> 基准点数**为2000**的病组，**全市例均费用1万**，**实际费用3500**；
> **该病例点数=3500÷10000\*2000=0.35\*2000=700**

> **实际支付费用 = 实际费用/支付标准（例均费用）× 基准点数 × 调整系数 × 点值。**
> <u>例如，某病例实际费用为2500元，支付标准为10000元，基准点数135.5889，**调整系数0.98**，点值75元：</u>
> 支付金额 = (2500÷10000)×135.5889×0.98×75≈ 2502.56元

> **4.其他**
> 
> **整组单议病例**（非稳定病组、新技术组、年度新增病组）、**历史缺失病组**、**未入组病例**、**大于60天病例**=（该病例实际发生的住院费用-该病例不合理的费用）/全部DRG住院次均费用\*1000

> QY组\0000组折算点数=病例的实际费用/全体病例的例均费用*基准点数
> 
> QY组的拨付点数=QY组折算点数\*60%
> 
> 0000组的拨付点数=0000组折算点数*60%
> 
> *歧义组比正常入组的结算费用会少，医院会亏损*

---

### 九、预算办法

> **1.月度住院预算DRG总费用**
> 
> 月度住院预算DRG总费用=<mark>月度DRG医保基金住院预算总额</mark>+（月度
> DRG结算住院总费用-<mark>月度DRG结算按项目付费统筹支付总额</mark>）
> 
> **基础预算部分**
> 
> **月度DRG医保基金住院预算总额**：
> 根据年度医保基金总额和DRG付费规则预先分配的月度预算。
> 
> **动态调整部分**
> 
> **(月度DRG结算住院总费用 - 月度DRG结算按项目付费统筹支付总额)**
> 
> **补偿机制**：若实际发生的DRG住院总费用 **超过** 按项目付费的医保支付额，差额部分需从预算外补充，避免医疗机构因DRG控费而亏损。
> 
> **控费平衡**：若实际费用 **低于** 按项目付费额，差额可能滚存至后续月份或年度清算，体现“**结余留用、超支不补**”原则

> **假设某月：**
> 
> - **预算总额** = 1000万元
> - **DRG实际住院总费用** = 1200万元
> - **按项目付费统筹支付** = 1100万元
> 
> **月度DRG总费用** = 1000万 + (1200万 - 1100万) = **1100万元**
> （超支的100万由医院分担部分，结余则反之)

> **2.年度住院预算DRG总费用**
> 
> 年度住院预算DRG总费用=年度DRG医保基金住院预算总额+（年度DRG结算住院总费用-年度DRG结算按项目付费统筹支付总额）

---

### 十、月度结算

> 1.月总点数

> ***病组的权重和点数是全市所有医疗机构一起算***

> ***分模块下，点值是模块内所有医疗机构放在一起算的***
> 
> 。。。。。。

---

### 涉嫌高套

> **定义：**
> 
> “高套”指通过**虚报诊断或手术编码**（如低码高编、无对应治疗却填报高资源消耗诊断），将病例分入支付标准更高的DRG/DIP组别，从而获取超额医保基金的行为。
> 
> **具体表现：**
> 
> 1.无对应诊治费用却填报高资源消耗诊断（如未使用阿替普酶却填报溶栓治疗组BL10）；
> 
> 2.主诊断选择错误或主手术编码与诊断不匹配；
> 
> 3.将未治疗的并发症或合并症作为主要诊断填报。
> 
> **后果：**
> 
> 1.违法违规：违反《医疗保障基金监管条例》第三十八条，属于“造成医保基金损失的其他违法行为”，可能面临罚款、追回基金等处罚；
> 
> 2.数据失真：导致未来DRG/DIP分组和支付标准测算偏差，影响医院长期收益（即“自己挖坑自己跳”）；
> 
> 3.信用受损：被纳入医保重点监管名单，影响医院评级和医保协议续签。

---

---

---

### 思考

**一、DRG结算下 ，导致医院结算亏损的原因有哪些，并给出改进建议。**

> 1.高倍率病例因漏填并发症合并症或者主诊断选择错误导致入组错误进入低权重病组，会亏损
> 
> 2.高倍率病例因漏填手术操作，诊断选择错误或者刻意降低编码复杂度导致高码低编进入低权重病组，会亏损
> 
>     **建议**：加强病案首页、结算清单填写规范和监管。
> 
> 3.过度使用高价值耗材、检查过多；超长住院病例、住院时间延长
> 
>     **建议**：管控成本，使用其他国产耗材替代、规范检查和住院操作加强监管
> 
> 4.罕见病患者、新技术新项目、合并症并发症过多且治疗成本远超DRG标准费用，未能正确提出特病单议导致亏损
> 
> 5.歧义组，0000组病患过多且医保结算少，会亏损
> 
>     **建议**：合理控制费用，及时正确的向医保提出补偿
> 
> 6.ICU病例长亏损但仍需要收治的。急诊抢救病例因多发伤急诊手术、术前评估时间不足入低权重组。
> 
>     **建议**：全院统筹平衡
> 
> 7.治疗不充分、不完整，病情过重死亡，提前出院，无住院指征，分解住院有可能造成亏损
> 
>     **建议**：严格把握入院指，征规范诊疗行为

---

**二、住院患者都是DRG结算么，说明原因**

> *不一定*
> 
> 1.特殊病例、罕见病、中医优势病种住院按实际项目费用结算。
> 
> 2.长期住院的中医康复病按床日付费，不参与DRG结算。
> 
> 3.住院患者没有医保或者不选择医保报销，所有费用完全自费，不参与DRG结算。
> 
> 4.住院的医院未纳入DRG试点，不参与DRG结算。
> 
> 5.工伤、生育有保险，不参与DRG结算。
> 
> 6.精神病患者通常不纳入DRG结算范围，主要采用按床日付费或单病种付费
> 
> 7,异地患者未结算病例对医院的影响分析
> 
> | 场景             | 医院收入来源       | DRG分组参与情况    | 财务风险        |
> | -------------- | ------------ | ------------ | ----------- |
> | 患者自费结算         | 患者全额支付       | 不参与DRG       | 无医保支付风险     |
> | 患者回参保地手工报销     | 参保地按项目/单病种付费 | 不参与就诊地DRG    | 可能因超目录费用被核减 |
> | **患者直接结算（备案）** | 医保基金按DRG标准支付 | **参与就诊地DRG** | 承担DRG盈亏     |

## 问题：

> **Q:** DRG中 TS25的基准点数 24年为5622，TS21的基准点数 24年为3146 ，为什么伴有严重合并症并发症的点数比不伴有还低，不因该治疗费用更高点数更高嘛
> 
> **A:** DRG（按疾病诊断相关分组）的基准点数差异可能由以下原因导致：
> 
> 1. **基准点数计算逻辑** ：  
>    基准点数是基于某DRG组的 **次均费用** 与 **所有DRG组次均费用的比值** 计算得出的123。若伴有严重合并症/并发症（MCC）的>DRG组（如TS25）的次均费用 **相对于总体DRG平均费用的增幅未达到预期** ，其基准点数可能不会显著高于无并发症组（如>TS21）。例如，若TS25的次均费用虽高于TS21，但整体DRG的平均费用也大幅上涨，则两者的相对比例可能导致TS25的基准点数增幅>有限。
> 
> 2. **数据裁剪与异常值排除** ：  
>    基准点数计算时通常会对极端费用数据进行裁剪（如剔除过高或过低费用病例）34。若伴有严重并发症的病例中存在大量极端高费用案例被裁剪，可能导致该组的 **统计学意义上的次均费用降低** ，进而拉低基准点数。
> 
> 3. **本地化调整与政策影响** ：  
>    各地可能根据历史数据和医保基金预算，对DRG组的基准点数进行调整以控制费用56。例如，对某些高资源消耗组（如TS25）可能主动压低基准点数，以避免医保支出过度增长。
> 
> 4. **分组细化与权重（RW）差异** ：  
>    DRG细分组（如2.0版本）会结合临床特征和资源消耗重新分组78。若TS25被分入 **权重（RW）较低的细分组** ，或与低费用病例合并分组，可能导致其基准点数未如预期更高。
> 
> 5. **治疗方案与医保覆盖范围** ：  
>    伴有严重并发症的治疗可能更依赖医保覆盖范围外的项目（如高价药物或耗材），导致 **医保结算的次均费用反而降低** ，从而影响基准点数。
> 
> **总结** ：  
> 虽然理论上伴有严重并发症的病例资源消耗更高，但DRG基准点数受多重因素影响（如费用计算方式、本地政策调整、数据裁剪等）。需结合具体DRG组的权重、次均费用、本地分组规则及调整系数综合分析，才能准确解释点数差异。建议参考当地医保部门发布的分组方案及权重调整细则进一步核实。

> 

### 