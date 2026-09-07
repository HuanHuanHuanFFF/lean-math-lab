# B686 / Four：探索记录

日期：2026-09-07（Asia/Shanghai）。这是部分数学进展，不是原存在性目标的解答。

前半保留第一轮历史检查点；本页末尾的“第二轮”记录本次 Work 会话。第二轮最初预算约 30 分钟，用户在约 22 分钟处授权延长到约 1 小时；只改本任务归属目录，不 commit、不 push。

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

---

## 第二轮：2026-09-07 Work 研究检查点（阶段性停止）

本轮复用原题、validator 快照、k=6/8 和已有位移搜索，不重做首轮调查。
当前原目标仍未解决：没有自然数合法三元组，没有排除所有 k。

### 环境与验证层级

运行环境为 Linux、Python 3.12.13，仓库固定 Lean 4.33.1。Python 实验仅用标准库，不安装软件，不改依赖锁文件。

本轮首次检查时，Work 容器的 `/proc` 与当前进程 PID 命名空间错位。Lean 通过 `/proc/<pid>/exe` 定位自身失败，因而出现 `failed to locate application`；Lake 随之报告无法检测安装配置。这是执行容器问题，不是仓库的 Lean 版本或 `lakefile.toml` 配置问题。

随后完成了以下工具链恢复：

- 使用进程级 `LD_PRELOAD` 兼容层修正当前容器的 `/proc/<pid>/exe` 查找；正常 Linux/服务器环境不需要该前缀。
- 按锁定的 `lake-manifest.json` 补齐 Qq、Batteries、Cli 等依赖，并重建损坏的 Aesop checkout；依赖 revision 未改变。
- `env LD_PRELOAD=/tmp/lean-proc-shim.so lake build` 成功，完成 1432 个目标。
- `lake env lean` 逐个检查两个新增研究文件，均退出 0；其 `#print axioms` 只报告 mathlib 常见的 `propext`、`Classical.choice`、`Quot.sound`，没有 `sorry` 或额外公理。
- 按仓库验证范围逐个检查 `Math/`、`Tests/`、`Examples/` 下 5 个 Lean 文件，全部退出 0。当前容器没有 `pwsh`，因此使用等价的 Linux Lake 命令执行同一组文件。

因此第二轮新增的两个 Lean 文件现在均为 **kernel-checked**。它们仍只形式化局部代数/格点引理，尚未连接平台完整目标；第一轮已有的 k=6/8 内核证据保持原样。

### 路线 A：偶数长度的奇值格点证书

精确判据：固定偶数 k，P(t)=∏ᵢ₌₁ᵏ(t+i)。给定整数多项式 A,E、正整数 L,g 和自然数 N，若

1. A(t)²=L²P(t)+E(t)；
2. 所有自然数 t 上 A(t)>0，A(t)/g 是奇整数；
3. t≥N 时 E(t)>0，且 Q(t):=4gA(t)−g²−4E(t)>0；

则所有 n,m≥N 都有 P(m)≠4P(n)。

证明：A≥g，因此 A−g/2>0；平方比较给出
A−g/2<L√P<A。记 δ=A−L√P，则 0<δ<g/2。
若 P(m)=4P(n)，则
A(m)−2A(n)=δ(m)−2δ(n)∈(−g,g/2)。
左侧除以 g 是奇整数，而区间 (−1,1/2) 中没有奇整数，矛盾。

这比要求 A 本身为奇数更灵活。例如 k=8 的 H(t) 虽然恒为偶数，H(t)/4 却恒为奇整数；无需再对余项建立第二个平方矛盾。

证书算法：

- 用有理系数递推求 √P 的多项式部分；清分母得到 A 和 L。
- 精确计算 E=A²−L²P；检查全部系数，不以样本替代恒等式。
- Newton 恒等式 A(t)=Σ ΔʲA(0)·binom(t,j) 在自然数上成立。若常数差分除以 g 为奇数，其余差分除以 g 为偶数，即可证明 A/g 对所有自然数恒奇。
- 平移 Q(N+s)，核对常数项严格正、其余系数非负，给出整个 t≥N 的不等式证书。

`experiments/even_certificates.py` 为每个偶数 k=2,4,…,64 生成了上述完整代数证书，共 32 份。这个有限 k 集合不能直接外推全部偶数。

| k | 固定因子 g | 大参数阈值 N | n<N 的全部 m 是否另行核验 |
|---|---:|---:|---|
| 2 | 1 | 0 | 空集 |
| 4 | 1 | 0 | 空集 |
| 6 | 3 | 13 | 是 |
| 8 | 4 | 1 | 是 |
| 10 | 5 | 8,108 | 是 |
| 12 | 9 | 38 | 是 |
| 14 | 7 | 5,887,704 | 否 |
| 16 | 64 | 173 | 是 |
| 18 | 81 | 3,780,723,551 | 否 |
| 20 | 25 | 15,873 | 是 |
| 24 | 2,592 | 12,879 | 是 |
| 32 | 49,152 | 2,534,168 | 否 |

其余阈值见 `experiments/even-certificates-2026-09-07.json`。阈值取“平移系数均非负”条件的最小整数，不声称是数学最优界。

有限余段的覆盖证明：若 m≥2n+k，各因子 m+i≥2(n+i)，且至少一项严格大于，故 P(m)>2ᵏP(n)≥4P(n)。因此只需 n<N，n+k≤m<2n+k。对每个 n，P(m) 随 m 严格递增，二分核对跨越 4P(n) 的相邻整数即可。

已完成有限余段的九个 k 共检查 37,085 个 n。独立脚本不导入生成器：从 k!·binom(t+k,k) 重建多项式，重新展开 Newton 证书，再用组合数和递增 m 指针核对所有有限余段，结果及逐行 SHA256 全部一致。

当前可支持：k=10、12、16、20、24 的全称固定长度排除已有纸面论证与两套精确计算支持；尚无本轮 Lean 内核证据。k=2/4 为已知结论，k=6/8 为旧结果的阈值改进。没有确认数学或 Lean 首次性。

障碍：某些 N 增长极快，例如 k=18 的 N 已达 3.78×10⁹；没有对所有 k 的统一小参数排除。下一步应优先形式化通用判据和便宜实例，而非不断复制固定 k 文件。

### 路线 B：k=5 的 gcd、六次判别式与整数缩放剪枝

令 X=m+3，Y=n+3，f(x)=x⁵−5x³+4x=x(x²−1)(x²−4)。原题等价于 f(X)=4f(Y)，且 X≥Y+5、Y≥3。
由于 f(x)/x⁵=(1−1/x²)(1−4/x²) 在 x≥3 严格递增，必有
1<X/Y<α:=⁵√4。

写 X=ga、Y=gb，g=gcd(X,Y)>0，gcd(a,b)=1。设
A=a⁵−4b⁵，B=a³−4b³，C=a−4b，均为负数。精确缩放恒等式给出

`A g⁴ − 5 B g² + 4 C = 0`。

由此得到两个全称必要条件：

- `g² | 4C`，因此 g²≤4(4b−a)<12b，进而 g³<12Y；
- `D(a,b)=25B²−16AC` 必须是整数平方。

展开式与额外因式结构为

`D(a,b)=9a⁶+64a⁵b−200a³b³+64ab⁵+144b⁶`

`D(a,b)=9(a³−4b³)²+64ab(a²−b²)²`。

若设 t=a/b，v=(2A g²−5B)/b³，则 v²=D(t,1)。D(t,1) 为次数 6 的平方自由多项式：生成器用有理数 Euclid 算法检查 gcd(D,D')=1，独立脚本另在 F₇ 上检查 gcd=1。因此这是一个具体的 genus-2 商曲线方向；得到商曲线有理点后仍须检查缩放平方性、整性、正性及不重叠，不能跳过还原。

一般商曲线扫描覆盖 b≤5,000、gcd(a,b)=1、b<a、a⁵<4b⁵，共 2,428,402 对。在该区域仅发现 (a,b)=(14,11)，判别式平方根 10,740。对应两个 g² 值为 1/9 和 2/197，均非正整数平方。

第一个值还原出 **非平凡有理点** X=14/3、Y=11/3，即 n=2/3、m=5/3。直接用五个有理数因子独立核对乘积比为 4。但 n,m 非自然数，且 m−n=1<5，故不是合法构造。它反驳“原曲线所有有理点都只是零乘积点”这一可能的捷径。

整数缩放可以更强剪枝。令 U=−A>0、V=−B>0、W=−C>0，则
Ug⁴−5Vg²+4W=0，故 Ug²<5V≤5Vg²。特别 U<5V。
又

`U=(αb−a)((αb)⁴+(αb)³a+(αb)²a²+αba³+a⁴)`，

括号内严格大于 5b⁴，V<3b³，因此

`0 < αb−a < 3/(g²b)`。

因为 α<4/3，区间 b<a<αb 在 b≤3 时没有整数 a；故任意可能解有 b≥4。于是 αb−a<1，得到 **a=floor(αb)**。这是真正对所有整数解成立的参数压缩，不是浮点猜测。

`integral_scale_scan` 只用第五次幂比较维护 a，不调用浮点根号。已检查全部 b=1,…,1,000,000 和全部可能正整数 g：607,930 个既约 floor 候选中，只有以下四对满足 U<5V，四者的 D 均严格位于相邻平方之间：

| a | b | floor(√D) |
|---:|---:|---:|
| 95 | 72 | 3,177,180 |
| 318 | 241 | 119,160,141 |
| 3,754 | 2,845 | 196,033,495,279 |
| 214,837 | 162,816 | 36,743,008,688,314,259 |

独立核对使用另一种 floor 递推、另一种判别式表达式，并对四对参数用 Ug²<5V 枚举所有剩余整数 g，直接重算原组合数乘积。由 b≤n+3，这还严格覆盖全部 n≤999,997、全部合法 m；不是所有 n 的排除。

失败/障碍：未得到 b 的有效全局上界，也未求尽 genus-2 商曲线的有理点。一般判别式扫描中的 mod 256 平方筛没有拒绝任何既约候选，不能继续把它当有效剪枝。非平凡有理点说明仅做无整性还原的曲线搜索会产生伪候选。

Lean 文件 `lean/K5Reduction.lean` 保存中心化、缩放、g² 整除、判别式平方和 norm 恒等式及有理点例子；本轮已通过 Lean 4.33.1 内核检查，但不能视为原题完整证明。

### 路线 C：位移窗口与逐因子估值约束

固定 k≥2、d=m−n≥k。设 z=d/(4^(1/k)−1)，q=floor(z)。连续乘积关于中心 c=(k+1)/2 的归一化 P(t)/(t+c)ᵏ 严格递增（配对后每一项为 1−a²/(t+c)²）。因此解必须满足 n+c>z。又每个比值因子 ≤1+d/(n+1)，其中至少一项严格小于，故 n+1<z。

所以所有整数候选都落在

`max(0, floor((2q−k−1)/2)+1) ≤ n ≤ q−1`，

每个 d 至多 floor(k/2) 个候选。q 由 (q+d)ᵏ≥4qᵏ、(q+1+d)ᵏ<4(q+1)ᵏ 精确认证，不用浮点。端点区间稍宽以安全包含 z 为整数的情形。

另对每个 j∈[1,k] 有必要整除条件

`n+j | ∏ᵢ₌₁ᵏ(d+i−j)`；

每个 i∈[1,k] 还有

`m+i | 4∏ⱼ₌₁ᵏ(d+i−j)`。

证明分别在模 n+j、模 m+i 下约去原方程；d≥k 保证 stencil 中各项为正。逐素数解释即 vₚ(n+j) 不超过相应 stencil 乘积的 vₚ，比分别限制“大素因子≤d+k−1”更精细。这些条件只是必要条件。

实际检查 k∈{5,7,9,11}、每个 d=k,…,10,000，共 39,972 个切片、139,892 个窗口候选。所有候选均被下段逐因子整除条件排除。另完全绕过该剪枝，用组合数扩界和 n 二分，独立复核每个切片，零命中且窗口边界检查一致。

范围外 d>10,000、未列 k 未作排除。这次扩大搜索有新的窗口与估值剪枝作为理由；它仍不是无界证明。

### 第二轮复现与当前验收

从仓库根目录运行，以下命令均已实际退出 0：

~~~text
python3 research/tasks/B686-Four/experiments/even_certificates.py --max-k 64 --finite-limit 20000 --output research/tasks/B686-Four/experiments/even-certificates-2026-09-07.json
python3 research/tasks/B686-Four/experiments/k5_quotient.py --height 5000 --integral-height 1000000 --output research/tasks/B686-Four/experiments/k5-quotient-2026-09-07.json
python3 research/tasks/B686-Four/experiments/displacement_filter.py --ks 5,7,9,11 --max-d 10000 --cross-check --output research/tasks/B686-Four/experiments/displacement-filter-2026-09-07.json
python3 research/tasks/B686-Four/experiments/verify_checkpoint2.py --even research/tasks/B686-Four/experiments/even-certificates-2026-09-07.json --k5 research/tasks/B686-Four/experiments/k5-quotient-2026-09-07.json --output research/tasks/B686-Four/experiments/checkpoint2-verification-2026-09-07.json
~~~

精确先例查询记录：2026-09-07 Web 查询 `"Erdos" "686" "genus 2"`、`"686" "four" "square root" "polynomial"` 等未取得直接相关先例；这是很窄的检索，不作首次性声明。平方根方法沿用[首轮引用的公开讨论](https://www.erdosproblems.com/forum/thread/686)，新增的是本地证书组织、固定整除因子及 k=5 的具体归约与剪枝。

研究：新增结构与可复现算法，原题未解。证明：精确系数证书/独立整数复算；两个新增 Lean 文件已通过内核检查，但未连接平台完整目标。审阅：同一 Agent 的不同实现交叉检查，不冒充独立 AI 或人类同行评审。新颖性：未确认。公开/提交：研究阶段记录当时未自行 commit/push；主任务随后已将阶段性成果推送到远端，未作平台提交或外部联络。

阶段性停止点：已把偶数奇值判据、k=5 逼近界、商曲线扫描和位移估值筛选保存为可复用草稿；未找到能压缩未界定参数的全局桥梁。后续应优先形式化通用判据并接通 Lean 工具链，不以继续扩大有限搜索替代全局证明。


---

## 第三轮：2026-09-07 06:13 UTC 启动（进行中）

本轮预算最晚 07:35 UTC 停止新探索、07:43 UTC 前落盘结束。主线程独占
README/coordinator/independent/scripts/共享环境；本线程只写本页、experiments、lean。
新文件使用 Round3 / round3 前缀，保留前两轮历史。不提交、不推送、不外联。
Lean 后续统一入口为 `bash scripts/lean-work.sh lake env lean <file>`。

### 起始审计：目标与未验收脚本

已读原始 `independent/catalog.snapshot.json`、validator pins 和上游源码快照。
正向目标确为 `True ↔ Exists`；counterexample 目标为 `¬ (True ↔ Exists)`。
后者与完整排除全部合法自然数三元组等价。白名单仅为 propext、Quot.sound、
Classical.choice，且禁止依赖原占位声明 `Erdos686.erdos_686.variants.four`。
主线程已确认公开页面两个方向，负责 TargetBridge 与平台包对齐；当前不能声称
完整固定平台包已在本地重建或跑过 comparator/提交验证。

`k5_cf_certificate.py/json` 原 header 引用本页不存在的证明，不能作为证据。
本轮补出的覆盖链如下（仍是纸面证明，非 Lean 全链）：

- 原解写 X=m+3=ga、Y=n+3=gb，g>0、gcd(a,b)=1。Y=3 时 m≥5，
  f(m+3)≥f(8)=30240>4f(3)=480，排除。否则 Y≥4。
- f(x)=x^5−5x^3+4x 在 x≥3 严格递增。
  `f(5Y/4)−4f(Y)=Y*(-971Y^4/1024+655Y^2/64−11)<0`。
  令 u=Y²≥16，负号后的二次式在 u≥16 为负（也可平移 u=16+s
  展开负系数），故 r=a/b=X/Y>5/4。
- α=4^(1/5)，由中心配对的单调性 r<α。设 U=4b^5−a^5，
  V=4b^3−a^3，W=4b−a，均正，方程为 Ug^4−5Vg²+4W=0。
  因而 Ug²<5V。差幂分解的五项每项大于 (5b/4)^4，且
  V<(131/64)b³，得到
  `0<α−a/b<524/(625*g²*b²)<1/b²`。
- 对 x=α−1∈(0,1)、p=a−b 应用 Fatou–Grace；gcd(p,b)=1 且
  分母不变。Dajani–Kraaikamp–Sanderson, *A unifying theory for metrical
  results on regular continued fraction convergents and mediants*,
  [Theorem 5.12](https://arxiv.org/html/2312.13988v1#S5.SS2)，明确给出
  error<1/b² 时为 regular convergent 或 first/final mediant。
  脚本枚举所有 intermediate mediants，包含该集合。整数平移恢复 α 的 CF。
- 两个有理端点通过第五次幂严格夹住 α，其 Euclid 展开有同一前缀，验证104项。
  首个超出 B 的完整收敛分母之后的中间分母均>B；截止级别中 j=1,…,partial
  的所有分母≤B 中间分数均检查。B=10^50。所有 U<5V 的候选，
  全部正整数 g 由 `g²≤(5V−1)//U` 覆盖。

实际重跑：
`python3 research/tasks/B686-Four/experiments/k5_cf_certificate.py --verify research/tasks/B686-Four/experiments/k5-cf-2026-09-07.json`
退出0，104个CF项、653个分数、40个U<5V候选、56个合法缩放原式检查。
这一证书在上述覆盖链下排除 b≤10^50；没有 b 的全局上界，不排除更大 b。
主线程也独立补出相同常数与文献覆盖，并指出本地 mathlib 现成 Legendre
只有1/(2b²)条件：g≥2够用，g=1仍需更强的CF覆盖桥。

`parity_families.py/json` 的无限族 header 也不能代替证明。其缺失引理可以如下补齐：
设 W(z)∈Z[z]，W(0)=1、一次项系数奇。写 sqrt(W)=Σc_j z^j。
令 H=W−1，则
`c_j = Σ_{h=0}^j binom(1/2,h) [z^j]H^h`。
对 h≥1，`v₂(binom(1/2,h))=−h−v₂(h!)`，此值随 h 严格递减。
h=j 的系数是 W₁^j，为奇数；其余 h<j 的整系数项估值严格更高，故
`v₂(c_j)=−j−v₂(j!)`（j=0亦成立）。选择清分母 L=2^(s+v₂(s!))，
则 Lc_s 为奇整数，其余 Lc_j 为偶整数。

- k=2r、r奇：x=2t+k+1为奇数，
  `4^r P_k(t)=∏_{i=1}^r(x²−(2i−1)²)`。取s=(r−1)/2，W₁为奇数，
  A(x)=LΣ_{j≤s}c_j x^(r−2j) 恒奇，余项次数<r。
- r≡2 mod4：w=t(t+k+1)/2为整数，
  `P_k(t)=2^r∏_{i=1}^r(w+i(2r+1−i)/2)`。相应W₁=Σ_{i=1}^r i²
  为奇数，取s=r/2，清分母多项式 A(w) 恒奇，余项次数<s。
- 两种情况下 A²−c²P 的次数低于 A，A领先系数正，故
  `A−c*sqrt(P)→0`；当其绝对值<1/3，原式会迫使奇整数
  A(m)−2A(n)落在(−1,1)，矛盾。正负余项都适用，不必预设余项恒正。

由此支持的无限族表述仅为：每个 k≡2 mod4 或 k≡4 mod8 都能有效计算
一个阈值N(k)，排除 n,m≥N(k)。各k的有限余段没有自动被排除，
尤其不能写成“这两个无限族均完全无解”。原脚本只是有限k的算术fixtures。

另识别旧有有理点的来源：k=5、(X,Y)=(14/3,11/3)就是位移m−n=1
的望远镜解。一般 `P_k(n+1)/P_k(n)=(n+k+1)/(n+1)`；令比值4得
n=(k−3)/3。k=5产生n=2/3，k=6产生合法自然数但重叠的n=1,m=2。
因此任何宣称排除所有m>n的通用偶数证明都会被k=6这个例子反驳。

### 当前结构子目标（约06:25 UTC）

通用偶数路线不一定要先解决所有k的2-adic奇值问题。对每个偶数k=2r，
设A/L是sqrt(P_k)在无穷远的多项式部分，E=A²−L²P_k。
则deg A=r、deg E<r且E非零（P_k有简单根−1，不能是多项式平方）。
足够大的n,m上平方根间隙强迫A(m)=2A(n)，然后次数较低的余项不能
同时满足E(m)=4E(n)。下面将补出显式统一常数与可复核引理。
这给所有偶数k的有效有限界，不直接解决随k变化的有限余段；完整目标仍未解。


### 全偶数长度的有效界：不依赖通用奇偶猜测（06:33 UTC）

以下是一条对**每个偶数k**成立的纸面有效性证明；新Lean文件证明其中的
通用数值判据，还没有形式化任意k的多项式构造与系数求和界。

设 k=2r≥2，P=P_k∈Z[t]。从最高次向下递推，存在唯一首一有理多项式
H=t^r+…，使deg(H²−P)<r。取正整数L清分母，A=LH∈Z[t]，
E=A²−L²P，写d=deg E<r。E非零：否则P为有理多项式平方，但P在−1有
简单根，矛盾。设A最高次系数为L，E最高次系数为e≠0，并定义

`S_A=Σ_{j<r}|A_j|`, `S_E=Σ_{j<d}|E_j|`, `S=Σ_{j≤d}|E_j|`，

`N=1+max(1,ceil(8S_A/L),ceil(8S_E/|e|),ceil(4S/L))`。

对所有整数t≥N，低次幂≤t^(r−1)或t^(d−1)，由系数和界立即得到

`7L t^r < 8A(t) < 9L t^r`，
`7|e|t^d ≤ 8|E(t)| ≤ 9|e|t^d`，
`3|E(t)| < A(t)`。

d=0时E领先项夹逼为常数恒等式，不需要t^(−1)。最后一个不等式用
`|E(t)|≤S t^d≤S t^(r−1)<L t^r/4`，而A(t)>7L t^r/8。

纯整数平方比较给出

`(3A(t)−1)² < 9L²P(t) < (3A(t)+1)²`。

若N≤n≤m且P(m)=4P(n)，假设A(m)≤2A(n)−1或A(m)≥2A(n)+1，
各自平方区间立刻矛盾。因此A(m)=2A(n)，代回恒等式有E(m)=4E(n)。
设xn=L n^r、xm=L m^r、yn=|e|n^d、ym=|e|m^d，均正。
领先项界推出 `7xm≤18xn`、`28yn≤9ym`。
因d≤r、m≥n>0，`ym*xn≤xm*yn`。两式相乘并组合即

`196*xn*yn ≤ 63*xm*yn ≤ 162*xn*yn`，

与xn*yn>0矛盾。这一步不使用实数根号、分数次幂、余项符号或A的奇偶。
故任何偶数k的合法解都必须满足n<N(k)。再用原题上界m<2n+k，
对每个指定的偶数k确实得到一个终止的完全判定程序。

**明确缺口：** 未证明所有这些有限集合均为空，也未给k的上界。
因此不能从“每个k可有效判定”推出“所有k无解”。这个论证属于初等
Runge型平方根多项式方法；没有作新颖性声明。

`lean/Round3TwoScaleGap.lean` 已通过准确的新入口：
`bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/lean/Round3TwoScaleGap.lean`。
六个引理依次为带符号余项平方区间、平方区间迫使翻倍、主项/余项同时缩放、
相对误差1/8的主项不相容、不同次数的增长比较、最终通用不等比4判据。
`intervals_of_small_signed_remainder` 公理仅propext、Quot.sound；其余为
propext、Classical.choice、Quot.sound。后续加入可失败#guard_msgs后复核。
初次编译只因缺少abs_mul导入失败，已改成绝对值正负分支；失败产物未用于结论。

`experiments/round3_even_effective_bound.py` 用精确Fraction递推，生成所有系数、
上述N的三个分量，并核对所取12个k的完整多项式恒等式。运行
`python3 research/tasks/B686-Four/experiments/round3_even_effective_bound.py --output research/tasks/B686-Four/experiments/round3-even-effective-bound-2026-09-07.json`
退出0；参数k∈{2,4,6,8,10,12,14,16,24,32,64,128}。
它是通用证明的算术fixtures，不是扩大的无解枚举，也没有检查任何新的有限余段。
例如N(6)=4054、N(8)=7745、N(14)=47866653480986，远逊旧特殊奇值证书；
本路线的价值是覆盖所有偶数k且不需要猜测通用系数奇偶/正性，非阈值优化。


### 第二检查点：k=5 椭圆商捷径的有限域否证（06:46 UTC）

主线程对12个even fixtures作了独立的全尾部核验：在k+1点检查次数≤k的
恒等式，且7个必要不等式平移t=N+s后逐系数检查非负及正常数项，共84个
符号证书。见其归属的independent/check_round3_even.py及JSON。
本线程的Round3TwoScaleGap六个声明现已加入#guard_msgs，准确入口重跑退出0。

全局路线目前仍未取得k上界。一般素因子条件p≤d+k−1比Sylvester的p>k
允许区间大得多，不能结合成矛盾。围绕阶乘比/同一行二项式比的少量定向
文献查找没有得到可直接消除此缺口的定理。Xia–Cai (Acta Arith. 2011)
研究双阶乘的广义二项式，其分母从小的初项开始；原题的任意n不满足其
归一化条件，不能套用为全k排除。

对k=5商曲线 C: z²=D(t)=9t^6+64t^5−200t³+64t+144，
有一个新的、可证伪性很强的路线判断。模11的D与D'互素，领先系数9为平方，
故为好约化且有两个无穷远点。直接在F11及F121=F11[u]/(u²−2)中枚举平方
得到

`#C(F11)=17`, `#C(F121)=127`。

独立算法用二次特征求和、F121元素范数的F11二次特征，给出相同计数。
由N1,N2得到Frobenius特征多项式

`F(T)=T^4+5T^3+15T²+55T+121`。

若Jac(C)有定义在Q上的椭圆商，则好约化处特征式应分解为
`(T²−uT+11)(T²−vT+11)`，u,v整数。系数给u+v=−5，uv=−7，
故(u−v)²=53，不可能。因此**不存在Q上的椭圆商**。这排除了一个具体捷径，
不是k=5无解，更不是完整有理点判定。

更强的绝对简单性算术证书已生成并将继续审核：F模2为不可约
T^4+T³+T²+T+1。设四根为α_i，构造所有16个α_i/α_j的特征多项式；
去掉对角的(T−1)^4后次数12。用Newton恒等式与Weil倒数对称性，幂和为
`sum_(i,j)(α_i/α_j)^s = (sum_i α_i^s)^2 / 11^s`。
余下多项式清分母11^4后的升次系数为

`[14641,25289,49610,64570,85671,91390,93279,91390,85671,64570,49610,25289,14641]`。

任何单位根的最小多项式是Φ_h，若它除该12次式则φ(h)≤12。
由φ(h)²≥h/2得h≤288。全部26个φ(h)≤12的h已作精确多项式除法，
余式均非零。因此不同α_i之商均不是单位根；F不可约时，每个α_i^s仍有
四个不同共轭，Q(α_i^s)=Q(α_i)。

适用的标准背景是Howe–Zhu,
[*On the existence of absolutely simple abelian varieties of a given dimension
 over an arbitrary field*, Proposition 3 / Lemma 4](https://arxiv.org/pdf/math/0002205)：
所有正幂生成同一Frobenius域蕴含有限域上的绝对简单性。好约化的
绝对简单性再通过专化约束原Jacobian；这里的代数几何链尚未Lean形式化。
下一步将明确该桥的证明与引用后决定采用更强的“Qbar上也无椭圆商”结论。

新脚本 `experiments/round3_k5_frobenius.py`，输出
`experiments/round3-k5-frobenius-2026-09-07.json`；实际命令
`python3 research/tasks/B686-Four/experiments/round3_k5_frobenius.py --output research/tasks/B686-Four/experiments/round3-k5-frobenius-2026-09-07.json`。
本证据层级为精确算术+标准代数几何背景，未作完整Lean验收，未求Jacobian秩。


### k=5 商曲线的两条严格路线障碍（06:55 UTC）

绝对简单性已有更短的标准定理检验，无需把12次单位根证书当主证明。
Howe–Zhu同一论文Theorem 6适用于simple ordinary abelian surface：
F=T^4+aT³+bT²+aqT+q²；异常条件仅a=0、a²=q+b、a²=2b、a²=3b−3q。
这里q=11,a=5,b=15，F模2不可约保证simple，gcd(15,11)=1保证ordinary，
且5≠0、25≠26,30,12，故好约化Jac(C)_F11绝对简单。
如果Jac(C)_Qbar有非平凡分解，则可在某有限数域上定义相应End^0中的
非平凡幂等元；好约化处endomorphism的单射专化保留该幂等元，与特殊纤维
绝对简单性矛盾。因此**这个具体genus-2商曲线在Qbar上也无椭圆商**。
注意：没有排除原genus-6曲线的其他商或Prym因子，不能把结论扩大到原曲线。

另有一个不需要Jacobian秩计算软件的下界。C上以下每一行都有两个有理点
(t,±z)，均已用Fraction精确核对：

| t | 正z |
|---|---|
| −2 | 12 |
| −1 | 15 |
| −1/2 | 93/8 |
| 0 | 12 |
| 1/2 | 99/8 |
| 1 | 9 |
| 2 | 36 |
| 4 | 300 |
| 14/11 | 10740/1331 |

这18个仿射点互异，另有z/t³→±3的两个有理无穷远点，故#C(Q)≥20。
模7的D与D'亦互素，直接计数#C(F7)=16。Coleman界（p>2g的好约化素数，
rank Jac(C)(Q)<g时#C(Q)≤#C(Fp)+2g−2）在g=2,p=7时会给出上界18，
与20点矛盾。因此 **rank Jac(C)(Q)≥2**。

该界的准确条件已核对于Gajović研究论文
[*Curves with sharp Chabauty–Coleman bound*, Theorem 2](https://arxiv.org/pdf/2009.01084)，
该文引Coleman1985原定理；原刊PDF链接被网站附加检查阻挡，未声称读到原刊全文。
这只证明秩的下界，不声称rank=2，不排除covering/非阿贝尔Chabauty/整点方法。
尤其，普通rank<genus的Chabauty不能直接应用于这个商曲线。

上述计数、20点与第7素数好约化已加入round3_k5_frobenius.py/json，脚本重跑退出0。
`lean/Round3K5PointWitnesses.lean` 正在把18个仿射点、两个无穷远领先值及
Howe–Zhu数值条件核对为Lean证据；代数几何结论仍为纸面引理，不冒充Lean定理。


### 第三检查点：跨全部k的短间隙排除（07:10 UTC）

设d=m−n=k+h，h≥0，K=2k+h，N=n+1。把两块放进N起的K项连续区间，
删除中间h项，保留乘积为P_k(n)P_k(m)=(2P_k(n))²。这一重写准确保留
自然数域及不重叠条件。它不允许把连续乘积定理直接用于任意h。

**任意h的缺项整除必要条件（纸面）**：对1≤j≤h，q_j=n+k+j有

`q_j | P_k(h−j) − 4(−1)^k P_k(j−1)`。

证明：模q_j，上块因子为h−j+i，下块因子为−(k+j−i)，i=1..k；
下块倒序后正好是(−1)^k P_k(j−1)。等价地，右边为

`k! [choose(k+h−j,k) − 4(−1)^k choose(k+j−1,k)]`。

这是对每一个缺项数本身的整除约束，未声称右边一般非零，亦未声称
它与素因子界已经排除任意h。

**h=0,1的全k纸面证明可只用Sylvester–Schur**：任何解的外块素因子
p≤d+k−1（主线程已Lean证明）。若h=0，且n≥2k，则长度2k的完整区间
起点n+1>2k，Sylvester给p>2k，矛盾。若h=1，中心c=n+k+1满足
`c | (1−4(−1)^k) k!`，故中心素因子≤max(k,5)≤2k+1，外块素因子≤2k。
若n≥2k+1，长度2k+1的完整区间由Sylvester给p>2k+1，仍矛盾。
在余下小n中，h=0时n≤2k−1，h=1时n≤2k；均有每个比值
`(n+k+h+i)/(n+i)>4/3`。k≥5时(4/3)^k≥1024/243>4，矛盾。
k=2,3,4时只剩h=0的18对、h=1的21对，原乘积直接核验无解；
下述160个变号证书也覆盖这些小k的所有n。
Sylvester准确版本亦见下引2004原文第80页：N>K时区间积具有素因子>K。
该深层/经典定理未在本地mathlib找到，不把这段纸面证明冒称完整Lean证明。

**h=2..7的跨k有限归约**：主线程定位的主来源
Mukhopadhyay–Shorey, *Square free part of products of consecutive integers*,
Publ. Math. Debrecen 64 (2004), 79–99,
[Theorem 3，印刷第88页/PDF第10页](https://publi.math.unideb.hu/paper/924/download/)，
已由本线程直接打开全文逐字核对。应用t=h、总长K、起点N。
其K≥t+2由2k≥4保证，保留因子均正且互异，平方根2P_k(n)>0。
三个分支给出：

- K<N≤K²：K≤κ(h)，h=2..7对应κ=8,9,11,15,16,24。
  故K≤24，n=N−1≤575；这个分支实际k≤8。
- N≤K：K≤κ'(h)，κ'=11,25,28,30,46,50。
  结合K=2k+h逐项计算，k≤max(4,11,12,12,20,21)=21，n≤49。
- N>K²：只可能三个指定平方值3780²、3850²、59400²。
  不依赖例外项数的安全处理：本题保留至少4个因子，每个≥N，
  故N⁴≤59400²<244⁴，N≤243，进而K≤15，k≤6，n≤242。
  此数值界避免了因子1可能被省略的表示问题。

因此所有h=2..7的原解必在k=2..21、n=0..575内，m=n+k+h。
`experiments/round3_small_gap.py` 精确计算此69120个三元组的原乘积，
无解，退出0。实际命令：
`python3 research/tasks/B686-Four/experiments/round3_small_gap.py --output research/tasks/B686-Four/experiments/round3-small-gap-2026-09-07.json`。
同一脚本另为k=2..21、h=0..7的160对参数找出相邻整数a,a+1，
记录P_k(a+k+h)−4P_k(a)>0与P_k(a+1+k+h)−4P_k(a+1)<0。
最大a+1=400。每个因子1+(k+h)/(n+i)随n严格下降，因此这些相邻
变号证书各自覆盖所有n；该单调性正在考虑作值级Lean桥，尚不作为已验收。

**目前结论层级**：引用该公开原定理和Sylvester，加上述精确有限核验，
纸面上得到任何原解必须h≥8，即m≥n+k+8。它是新跨全k的必要条件，
不是全题无解。发表定理尚未Lean形式化，故暂时没有可提交的完整平台证明。
主线程正独立Lean化更强的初等原解界N<K²，若完成则第三个例外分支可完全免用。

07:13 UTC更新：`lean/Round3SmallGapCertificates.lean` 已通过Lean，包含
`cross_antitone`（交叉乘积形式的比值随n不增）、
`not_four_of_adjacent_signs`（相邻变号排除全部自然n）、
`sign_certificates`（160对参数的两个严格整数不等式，普通decide由内核规约）、
`no_small_gap_k_le21`（全部k=2..21、h=0..7、任意自然n无解）。
所有公理均为propext、Classical.choice、Quot.sound，已加#guard_msgs待重跑。
所以这里有限余段的覆盖现有完整Lean证明，未使用native_decide或外部计算公理。
本文件的product直接采用自然数Icc 1 k，结论为P_k(n+k+h)≠4P_k(n)，
没有更换域或附加n上界。实际命令：
`bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/lean/Round3SmallGapCertificates.lean`。
K5PointWitnesses的五个声明也已经#guard_msgs重跑退出0；几何背景仍仅纸面。

### 最后全局支路：每个固定间隙h的有效有限判定（07:20 UTC）

主线程 `independent/GapBounds.lean` 已严格证明原解满足
`3(n+d+1)≤4kd`，进而 `N=n+1<(k+d)²=K²`，标准三公理。
本线程 `Round3SmallGapCertificates.start_exceeds_span` 也已通过：
k≥5、d≥k的原解有 `K=k+d<N`。证明若N≤K，则n+i≤d+2k−1<3d，
故每因子比值>4/3，且(4/3)^k≥(4/3)^5>4。
其辅助 `four_thirds_power` 直接证明4*3^k<4^k，k≥5；两项公理均标准三项。

因此h=2..7的Theorem3归约可简化：k≤4已经在有限证书内；k≥5只进入
K<N<K²分支，由K≤κ(h)推出k≤8。无需例外平方分类或κ'分支。
此前k≤21,n≤575的安全归约及核验保留作为独立交叉证据。

更一般，记g0(N,K)为完整K项区间积的不同素因子p>K的数目。
2004同一原文第80–82页，式(3)、(4)明确给出

`g0(N,K) ≥ floor(3π(K)/4)−1`，若N>K、K>293。

这是该文所引Laishram–Shorey的素因子数量结果，原文例外列表最大总长为293。
这里不把g0（素因子数量）与任意区间的奇数赋值位置数混同。
对本题k≥5，已有K<N<K²；每个区间数小于K²+K<(K+1)²，故一个数
至多含有一个素因子p>K，且其指数只能为1。所有这些素因子都必须出现于
中间缺项：外块素因子已有p≤K−1（也可直接用保留乘积是平方）。
不同大素因子不能占据同一缺项，于是

`h ≥ g0(N,K) ≥ floor(3π(K)/4)−1`，若K>293。

这给出增长的间隙下界，并给出**每个指定h的全k有效有限归约**。
设s=floor((4h+7)/3)，p_{s+1}为第s+1个素数，并定义

`B(h)=max(293, h+8, p_{s+1}−1)`。

若k≥5且K>293，上式迫使π(K)≤s，所以K<p_{s+1}。k≤4时K≤h+8。
因此所有原解均有K≤B(h)，即

`2≤k≤floor((B(h)−h)/2)`，`0≤n<B(h)²`，`m=n+k+h`。

对于每个固定h，这个集合确实有限且可计算；也可对有限的每个k用
`not_four_of_adjacent_signs` 的单调性做相邻整数核验，覆盖全部n。
这个新归约包括奇数k，而不依赖每条奇次数曲线的整点有效界。

**失败/边界**：这仍没有给h的上界；h随k至少约k/log k增长与原方程
的实数尺度n≈kd/log4相容。故它能系统化任何指定间隙的排除，却不能
把无穷多个间隙全部排除。没有把“每个切片可判定”误写为全题已判定。
最后这一素因子数量背景尚未Lean形式化，亦未进行原始文献结果的独立证明。

显式界的算术fixtures保存为`experiments/round3_gap_effective_bound.py/json`
（JSON全名`round3-gap-effective-bound-2026-09-07.json`）。实际命令：
`python3 research/tasks/B686-Four/experiments/round3_gap_effective_bound.py --output research/tasks/B686-Four/experiments/round3-gap-effective-bound-2026-09-07.json`。
参数h∈{0,1,7,8,44,45,100,1000,10000}，只计算素数索引和界，不做无解枚举。
例如h=100给K≤768、k≤334；h=1000给K≤11002、k≤5001。
start_exceeds_span、four_thirds_power也已加#guard_msgs重跑退出0。

### 收尾检查点：通用缺项引理与最后障碍（07:30 UTC）

`lean/Round3GapDivisibility.lean` 已通过Lean，最后已证引理为
`B686Round3GapDivisibility.gap_factor_divides`：k,n,h,j均为自然数，
1≤j≤h，原乘积等式转为整数等式后，严格推出

`(n+k+j : ℤ) | P_k(h−j) − 4(−1)^k P_k(j−1)`。

没有额外非零条件，没有断言右端一定非零，h−j及j−1均由明确不等式
控制自然数减法。辅助引理分别是逐因子同余推出乘积同余、Icc 1 k倒序。
三个声明公理均为propext、Classical.choice、Quot.sound，已加#guard_msgs待重跑。
初次尝试误用了dvd_mul_right/left接口，另有neg_eq_neg_one_mul的simp循环；
次轮发现缺少Algebra.Ring.Divisibility.Basic导入；均已修复并重新通过，
失败编译所产生的错误恢复sorryAx没有用于任何已证声明或结论。

范围界及素因子界确实不够：诊断例k=5,n=182,m=241（d=59,h=54,K=64）
满足m≥n+k、m<2n+k、3(m+1)≤4kd、K<N<K²，且十个外块因子的最大
素因子依次为[61,23,37,31,17,11,3,61,7,41]，均≤K−1=63。
它还处在原式唯一实根的相邻整数181,182上，但差值
`P_5(241)−4P_5(182)=−1878853680`，所以明确不是原题解。
缺项j=1给q=188，余数84，正好被新整除引理拒绝。
寻找该诊断例的实际范围为k=5、d=13..1000、每个d仅检查相邻变号两端；
在d=59即停止。复核脚本`experiments/round3_prime_support_obstruction.py`
只核验这一个指定例子，不能作为原题任何反例提交。

对固定k而h→∞，原方程的实数交点有n/d→1/(4^(1/k)−1)，与现有上下界
相容；当h≥2k，K≤2h，π(K)≤h，所以现有素因子数量下界也不可能单独
排除这个区域。缺项同余仅提供整数条件，尚没有全局控制其同时可解性的证明。
两条有效切片界（固定偶k、固定任意h）不能无界合并。
本线程于此停止开新路线，转入最终审计与报告；没有合法构造，也没有全k无解证明。

07:33 UTC最终补记：GapDivisibility三个#guard_msgs已本线程重跑退出0，
主线程也独立检查证明并编译通过；SmallGap最后两个guard亦全部通过。
主线程用独立Eratosthenes筛和math.comb核对了B(h)与诊断非解。
完整结论、未证桥梁及下轮最小子目标保存于
`experiments/round3-final-report.md`；文件哈希另存最终manifest。
旧奇偶族分母桥补充一句：平方根递推
`2c_j=w_j−Σ_{0<a<j}c_a c_(j−a)`归纳保证c_j均为dyadic；
因此此前的2-adic赋值界确实足够清除全部分母，而非只控制2部分。

### 最终交接（2026-09-07 07:36:47 UTC）

本线程实际结束时间：2026-09-07 07:36:47 UTC。07:35后停止全部数学探索及新实现；
按主线程最后指令，此次仅补本文件，不再修改Lean或JSON。

- **内核已证**：本线程四个Round3 Lean文件全部编译、公理guard通过。
  最后引理为gap_factor_divides；另有任意n的160参数切片、k≥5的K<N、
  两尺度平方余项判据及k5有理点数值证据。公理仅标准三项或其子集。
  主线程最终统一验收8个Lean文件及5个独立算术检查，全部通过。
- **纸面证明**：跨全部k的h≥8（引用Sylvester及删项定理）；每个固定h的
  全k有效有限界B(h)（引用素因子数量定理）；每个偶k的有效尾部界；
  k5具体genus2商Jacobian绝对简单及秩≥2。公开背景尚未全部Lean化。
- **精确计算**：12个偶k的84个全尾部证书、160相邻变号、69120个原式三元组、
  有限域点数及CF有限分母范围等；覆盖范围已逐项记录，未无界外推。
- **原题未解决**：没有合法自然数构造，没有全k无解证明，没有可提交的平台包。
  两条有效切片界不能无界合并；h≥2k区域仍缺整性障碍。
- **下轮最小子目标**：检查k5原genus6曲线的4维Prym是否有可用低维因子，
  为完整整点方法选择可终止入口；本轮仅排除了genus2商的椭圆捷径。
  全局仍需能处理无界h的论证，扩大有限扫描不能替代它。

总报告在experiments/round3-final-report.md。最终manifest于07:35:16生成，
其exploration.md哈希对应本交接段加入之前的版本；本次遵令未改JSON，
请主线程封存时更新该条哈希。其余列出文件均未再改动。
