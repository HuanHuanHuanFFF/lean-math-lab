# B686 / Four：第一轮探索检查点

日期：2026-09-07（Asia/Shanghai）。这是部分数学进展，不是原存在性目标的解答。

## 结论与文件归属

原目标为：存在自然数 k≥2、n≥0、m≥n+k，使 Pₖ(m)=4Pₖ(n)，其中 Pₖ(t)=∏ᵢ₌₁ᵏ(t+i)。目前没有找到合法三元组，也没有排除所有 k。

本子任务维护 exploration.md、experiments/、lean/；主任务维护其余协调和独立核验文件。本轮完成：

- **k=6：已知数学草证的显式补全与 Lean 形式化。** [K6.lean](lean/K6.lean) 的 B686K6.not_four 覆盖全部自然数 n,m（假设 n+6≤m），不是有限搜索结论。
- **k=8：主任务推导并形式化的局部补充。** [K8.lean](independent/K8.lean) 的 B686K8.not_four 覆盖全部自然数 n,m（假设 n+8≤m）。本子任务独立核对恒等式、边界和最终文件，并成功重跑。数学新颖性未确认。
- 精确扫描 14 个 k、1,424 个 (k,d) 切片，各切片覆盖全部 n；没有命中。覆盖边界见下，不作全局推断。

研究状态：有局部结论，完整目标未完成。证明状态：k=6、8 已通过本地 Lean 内核及可失败公理审计。审阅状态：同任务两个 AI 路线交叉核验，无人类同行评审。公开状态：本地未提交、未推送、未作平台提交或外部联络。

## 先例核查

主来源：[Erdős 686 公开讨论](https://www.erdosproblems.com/forum/thread/686?order=oldest)。2026-09-07 通过 Invoke-WebRequest 取得完整 HTML，保存在 [原文快照](experiments/forum-686-2026-09-07.html)；另有只读提取的 [文本](experiments/forum-686-2026-09-07.txt)。最终文件哈希见 [验证清单](experiments/verification-manifest.json)。

完整讨论有两条相邻的 Vjeko_Kovac 帖子：2026-03-13 11:32 针对 N=64,k=6；11:47 另针对 **N=4,k=6**，采用平方根多项式和半整数间隙。第二条才是本次 k=6 的数学先例。搜索摘要可能只显示其中一帖，应以完整原文为准。我们将其未写出的显式余项界与有限剩余段补齐，不把 k=6 排除称为新发现。

k=3 的公开论证由 Tao 介绍 Chan/Bennett 路线，vilc 给出 N=4 的有效有理逼近估计及有限计算声明。正确中心变量是 X=m+2、Y=n+2，满足 X³−X=4(Y³−Y)。本轮未重新核验原论文常数和其声明的全部大范围计算，也未借上游的占位证明声称 Lean 已验证 k=3。

k=4 到 k=2 的代数归约也在该讨论中已有。对 k=8，本轮检查完整讨论及检索 "Erdos" "686" "k=8"、"Erdős" "686" "k = 8"、"consecutive integers" "four" "eight" "ratio"，没有找到相同特例证明；这是有限检索范围，不能证明首次性或无人做过。

## k=6 的可复核推导

记

A(t)=16t³+168t²+518t+441，
E(t)=189(2t+7)²+900。

直接展开得到 A(t)²=256P₆(t)+E(t)。A(t) 对整数 t 恒为奇数。

当 t=44+s、s≥0 时，

A(t)−E(t)=16s³+1524s²+36410s+4800>0。

又 E(t)>0，且 A(t)−E(t) 为整数，所以

(2A(t)−1)² < 1024P₆(t) < 4A(t)²。

用实数语言解释，这相当于 A(t)−1/2 < 16√P₆(t) < A(t)；Lean 证明只比较整数平方，无需实数平方根。

假如 n,m≥44 且 P₆(m)=4P₆(n)，上述区间强迫 A(m)=2A(n)：若 A(m)≤2A(n)−1，m 的平方上界与 n 的下界冲突；若 A(m)≥2A(n)+1，m 的下界与 n 的上界冲突。奇数 A(m) 不能等于偶数 2A(n)。

只剩 n<44。若 m≥2n+6，则六个因子分别至少翻倍，P₆(m)≥64P₆(n)>4P₆(n)，故 m<2n+6。于是实际需查的合法对为 n=0,…,43，m=n+6,…,2n+5，共 946 对；主任务以独立脚本精确枚举，无解。Lean 用稍宽的 Fin 44 × Fin 92 配合相同条件作内核 decide，并正式证明这一有限覆盖包含剩余全部情况。

## k=8 的独立核对

主任务给出

H(t)=t⁴+18t³+111t²+270t+204，
E(t)=16(2t+9)²，
H(t)²=P₈(t)+E(t)。

本子任务的 Sympy 精确展开独立确认上述恒等式，以及 t=5+s 时

H(t)−E(t)=s⁴+38s³+467s²+2014s+1428>0。

因此 n,m≥5 时，平方间隙先强迫 H(m)=2H(n)，再由恒等式推出 E(m)=4E(n)。两中心均为正数，故 2m+9=2(2n+9)，与奇偶性矛盾。n<5 部分由 m<2n+8 覆盖；实际只剩 10 个合法对。最终 Lean 文件的自然数条件、八项乘积、有限分支和传递公理均已独立审核。

## 精确位移扫描

脚本：[explore.py](experiments/explore.py)；结果：[displacement-scan.json](experiments/displacement-scan.json)。

令 d=m−n≥k，固定 (k,d)，考察正实数函数

Rₖ,ᵈ(n)=Pₖ(n+d)/Pₖ(n)=∏ᵢ₌₁ᵏ(1+d/(n+i))。

对 n≥0，每个因子严格递减，故 R 严格递减；R(0)≥6，且 n→∞ 时 R→1。因此存在唯一越过 4 的位置。脚本先用 n=1,2,4,… 找到两侧符号，再作整数二分，只检查最后相邻两项。每次比较都直接比较整数 Pₖ(n+d) 和 4Pₖ(n)，没有浮点筛除。

实际参数为

k ∈ {5,7,8,9,10,11,12,16,24,32,48,64,96,128}，
每个 k 均取 d=k,…,4k（含端点）。

总计 1,424 个切片，主扩界/二分循环作 36,268 次符号评估（此计数不含断言和候选重新计算）；最大交界上端为 n=46,955；没有等式命中。这里只覆盖列出的 k 和 d，不能解释成 d>4k 或未列出的 k 无解。

主任务另外用 math.comb 表示连续乘积之比，并顺序枚举交界，独立核验 k=2,…,12、d=k,…,4k 的 242 个切片，与二分结果全部一致，见 independent/check_search.py 及其输出。

复现（项目根目录；本机解释器为 C:/Python314/python.exe，设置 PYTHONDONTWRITEBYTECODE=1、TEMP/TMP=D:/CodingProject/Math/.tools/tmp）：

~~~text
C:/Python314/python.exe research/tasks/B686-Four/experiments/explore.py search --output research/tasks/B686-Four/experiments/displacement-scan.json
C:/Python314/python.exe research/tasks/B686-Four/experiments/explore.py symbolic --max-k 16 --output research/tasks/B686-Four/experiments/even-root-polynomials.json
pwsh -File scripts/lake.ps1 env lean research/tasks/B686-Four/lean/K6.lean
pwsh -File scripts/lake.ps1 env lean research/tasks/B686-Four/independent/K8.lean
~~~

Python 3.14.0；Sympy 1.14.0；Lean 4.33.1（commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6）。未安装新软件、未改变锁定依赖。仅研究目录变更，未改已接受库，因此本轮使用 focused Lean 检查；没有把它描述成仓库统一构建或平台验证。

## 尝试边界与下一步

- **简单模筛不能全局排除。** 任取 k≥2、M≥1，令 n=M−1、m=(k+2)M−1，则两段都包含 M 的倍数，Pₖ(m)≡4Pₖ(n)≡0 mod M，且 m−n=(k+1)M≥k。因此任何单个模数（乃至有限模数集合的最小公倍数）都有合法余类。这不排除结合不等式、估值或互素约束的模方法。
- **一般素因子条件仍只是必要条件。** 主任务记录的大素数匹配可用于筛选；没有证明其充分，也没有由此得到对所有 k 的上界。
- **固定 k 的曲线工具不能自动解决所有 k。** k=3 的中心化和 gcd 归约可通向 Thue 方程；把曲线双有理映到 Weierstrass 模型后，整点未必仍为整点，不能直接继承整点枚举。k=5 中心化得到 X⁵−5X³+4X=4(Y⁵−5Y³+4Y)，本轮未建立有效的全局整数界。
- **偶数 k 的平方根多项式值得系统化。** symbolic 模式只生成 k≤16 的精确恒等式表，未完成其他 k 的排除。下一轮可先判断余项界和取整残差能否形成统一算法，再决定是否对 k=10 等投入。不能由 k=6、8 外推全部偶 k。
- **未找到构造或完整否定路线。** 单纯扩大搜索矩形的预期价值低；如果继续，建议先针对尚待处理的 k=5 选一个可证伪的结构子目标，或研究偶 k 余项归约的适用条件。只复制更多固定 k 的证明会增加局部结果，却仍不能回答原存在命题。

最后已证明结果：B686K6.not_four，并独立复核 B686K8.not_four。失败路线/障碍：没有构造；简单同余存在普遍合法余类；固定参数的有限排除缺少跨全部 k 的桥梁。下一子目标：在明确投入前，判断 k=5 的中心化曲线是否能取得可用的有效整数界，或建立偶 k 平方根多项式的统一残差准则。本轮到此停止计算，保留脚本和证据供继续研究。
