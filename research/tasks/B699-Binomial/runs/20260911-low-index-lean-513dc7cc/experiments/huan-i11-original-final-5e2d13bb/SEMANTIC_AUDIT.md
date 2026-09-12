# 原题端到端语义审计（未运行Lean）

原题采用任务README第3行：∀自然数n,i,j，1≤i<j≤floor(n/2)时，有素数p≥i同时整除两个choose，等价于整除它们的gcd。本包只实例化i=11，不声称其它指标。

| 层 | 精确输入和输出 | 对齐与剩余状态 |
|---|---|---|
| 原始Common | GapBridge.lean第9-10行：存在p，p.Prime、i≤p、p∣gcd(n.choose i)(n.choose j) | 阈值含等号；p=11始终保留 |
| HuanAllA | 第155-163行：∀n j，1≤i∧i<j∧j≤n/2→p.Prime∧i≤p∧p∣choose(n,i)∧p∣choose(n,j) | 当前源码SHA与已验state匹配；只作类型参照，不加入i11证明导入闭包 |
| 假设反例 | Final.common_i11只接hij:11<j、hjn:j≤n/2，局部by_contra引入hno | hno不是最终前提；n/j无其它限制 |
| 初始高度 | I11InitialHeight.Compression.actual_i11_below_109仅hij/hjn/hno→n<2^109 | 冻结实际消费者，无待证数据field；尚需完整Padé链真实验收 |
| 四阶段下降 | AllStages.initial_to_stage04仅hij/hjn/hno/n<2^109→n<Stage04.H | 4级24矩形内部调用，仍待真实数值和消费者验收；发现的命名问题另列 |
| stage04定值 | H29294603、M500；证书(2*11!)^11*H^7≤i11K*M^33及1≤M来自实际NumericMetadata | 本包用stageConstantsCheck_spec包装，不重判大整数 |
| 完整六表 | 23:24×15；25:24×10；27:24×8；35:15×10；37:15×8；57:10×8，正指数从1开始 | 1142cells/23982signed/47136完整t；实际cap=min(M,(H-1)/power)，所有d=-10..10；仍待Lean数值验收 |
| 12个顺序 | 实际generic消费者由6个无序pair含swap覆盖12有序组合 | 不在本包新增排序、不同位置或正d假设；d=0和相同offset仍保留 |
| 小n分支 | max(M,109)=500，实际small_cover检查24..500 | 原合法域推出n≥24；n≤M或n<110不进入有界cofactor大n分支 |
| 列表padding | candidates=(0,23)::originalCandidates | RowCell计算保留0..23；已验Extended证明n≥24时剥掉头项，会员回到旧表 |
| 终端见证 | Assembly.common_of_original_candidates仅旧candidateMem/hij/hjn→Common | 1055项具体覆盖内部供给；特殊330只由固定全合法j见证处理；完整数值/组装仍待验 |
| 原题输出 | original_i11_gcd及original_i11均∀n j，原HuanAllA同形条件 | gcd→两整除使用已验Row029原包装同样的dvd_trans与gcd_dvd_left/right；不更改p≥11 |

n<24没有合法j；第一个合法对为n24,j12。上端严格高度n<29294603包括n29294602，旧表末段正是[29294601,29294602]。没有把n≤upper直接当成n<upper；四阶段以nextHeight=upper+1连接。奇数n仍用Nat除法的floor语义，j=n/2端点包含。

新的公开最终根有三个：common_i11（仅hij/hjn）、original_i11_gcd（显式prime/gcd）、original_i11（HuanAllA同形双整除）。Membership层5个辅助公开根包括固定data、列表等式、常数、small_cover及条件会员；最终3根均不暴露它们作为参数。无高度、grid、cofactor、表正确性、会员、任意Common或未定义G作为最终假设。

预期仅解锁i11整链验收入口。当前新增B仍0；其余18个B无新增。纸面语义审计、有限边界检查、完整候选源码、Lean验收是不同证据层。
