# DEPENDENCIES — R2：证据分层，不把文献或标量检查当 Lean 公理

## 0. 输入身份与使用边界

本轮接续的原始任务入口是 `B699-20261004-uniform-gap-paper-1c862c44.zip` 的 TASK.md、CONTEXT.md、SOURCE-INDEX.md；上一轮只用实际上传的 `B699-20261005-smoothing8-evidence.zip` 及其四份核心文档。未从无关 Overview 或其它研究分支补充假设。

原包冻结身份：仓库 commit `6c42ea72b9886afd587e144662bf09bc51557e39`；mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；Lean `leanprover/lean4:v4.33.1`。这是来源身份，不是本轮运行环境。原包是源码阅读快照，不是完整可编译依赖闭包。

具体原 ZIP、前轮 ZIP 和本轮引用的原成员 SHA256 见 `sources/INPUT-IDENTITY.json`。哈希只能核验这些字节，不认证其数学结论或原 producer 运行。

下表中的“已证”均有显式证据等级；本包没有新增 Lean 已证条目。

## 1. 四种状态表

| ID | 精确义务 | 状态 | 取得内容、边界和使用位置 |
|---|---|---|---|
| KERNEL6 | 六重均匀卷积的七项表达、非负、质量1、支撑、C⁴、sup≤1/h | 已证：作者级纸面 | PROOF §2；七个差分矩另做标量排错，不是恒等式的机器证明 |
| MELLIN6 | 实权和复数变换 `Φ_h(s)^6`，真实 Λ 和分解 | 已证：作者级纸面 | PROOF §§2–3，直接卷积/Fubini/变量替换；未实现 Lean |
| SINC | 全实数 sinc 有理包络 | 已证：作者级纸面 | PROOF §4.1，分成 u²≤3/2 与其补集，含准确多项式恒等式 |
| MOMENTS | 包络 A₀<183/200、A₁=19/36 | 已证：纸面＋精确标量 | 两个积分直接给原函数／代换，根号和 arctan 只用有理包围 |
| LOW | 低零点范数和 <122000 | 已证：在 N-COUNT、ZERO-H 下纸面 | PROOF §5；非负计数包络延至全部零点，不意味着全部零点位于临界线 |
| HIGH | 全部 \|γ\|>800000 的范数相对和 <17/1000 | 已证：在 N-COUNT、对称性下纸面 | PROOF §6；保留 −2N(H)/H⁶ 边界；无高零点 RH 假设 |
| POWERS | 所有 x≥T 的局部真素数幂相对质量 <11/1000 | 已证：作者级纸面 | PROOF §7；仅数整数 k 次幂，非素数分布结论；含全域单调性 |
| GATE | P_x/√X >235937/63000000 | 已证：在上述输入下纸面＋标量 | PROOF §8；52项标量并不证明 EF 或 ZERO-H |
| EXTRACT | 实际有限 prime 和正 ⇒ 真素数 ⇒ 同参数 NatGap | 已证：纸面；Lean 候选未编译 | PROOF §9；原 RealGap 接口逐字保留，实际 `Nat.primesLE` 抽取 |
| ZETA-BASIC | ζ 延拓、函数方程、非平凡零点条带与按重数的两个对称 | 可引用但待形式化 | 经典结果；RS03 Lemma3显式使用实部反射；TAO14作者讲义供基本定义/公式核对，冻结库完整覆盖未核实 |
| N-COUNT | 全部实 t≥1000 的 N(t) 误差0.67 log(t/(2π)) | 可引用但待形式化 | 已读 RS03 Lemma1 p.14；Rosser1941原件未取得 |
| EF | 支撑在 (2,∞) 的 C² 测试权的无常数显式公式 | 可引用但待形式化 | 已读 RS03 Lemma4 pp.15–16；用g=−f′消去常数，具体测试权C⁴；Davenport深上游原件未取得 |
| ZERO-H | 0<\|γ\|≤800000 ⇒ β=1/2，含全部零点及重数 | 可引用但待形式化 | LRW86 p.667 无条件有限定理严格覆盖所需高度；不需单性；未重放有限验证 |
| ROS41-RAW | Rosser1941 Theorem19原文及从其到 N-COUNT 的常数转换 | 缺原件 | 仅有RS03原文的明确追溯；不称已完整审读 |
| DAV00-RAW | Davenport, Multiplicative Number Theory, 3ed2000, ch17(9)(10) | 缺原件 | RS03 Lemma4的被引上游未取得；不以引用书名代替形式化 |
| LRW-UPSTREAM | Brent1979 Theorem3.2、NW113/81、前作及勘误原件 | 缺原件 | LRW86叙述的完备性/算法链上游未完整取得 |
| ZERO-CERT | 仅到H的符号区间、舍入界、计数完备性及其 checker | 缺原件／缺证明 | 未生成，也未绑定历史输出；必须证明“所有”，只给临界线符号变化表不够 |
| MASS-LEAN | 对实际 `primeMass x` 的全x≥T无参数正性 | 缺证明：形式化 | 本包只有纸面论证和条件消费者；不能把 hmass 当最终公理 |
| F1 | A≤y<T 的新有限桥 | 缺证明 | 未搜索/验证任何prime；只有准确接口和条件规模 |
| F0-BIND | 10M≤y<A 的完整独立证据绑定 | 缺证明／证据闭包 | 原 producer 成功按原包记录条件采用；pending状态未提高 |

## 2. 已取得公开原文：具体版本与准确用途

### [RS03]

Olivier Ramaré、Yannick Saouter，*Short effective intervals containing primes*，Journal of Number Theory **98** (2003), 10–33；论文接收记录为2000-03-09、修订2002-03-20。

作者托管的固定出版版：
`https://ramare-olivier.github.io/Maths/gap.pdf`

已通过网页工具读到24页解析文本。读取 Lemma1、Lemma2、Lemma3、Lemma4 及相应说明。p.14/p.15的截图请求两次返回缓存错误，故不宣称本轮成功目视核对这两页版面；数学公式已在可读解析文本中逐项复核，并用从Lemma1重新积分的推导交叉排错。本轮没有使用该PDF的数值表或图。

**主输入仅 Lemma1 和 Lemma4 及基本对称事实**，没有把 Theorem3的强素数间隔结论当成黑盒来跳过所需证明。Lemma2用于核对我们自己的全尾部积分，不是新增输入。

Lemma4打印的常数是 `+log(2π)`，标准显式公式为 `−log(2π)`；新权g=−f′令任何常数乘∫g=0，因此本轮不依赖该常数的值。余项 `−(1/2)log(1−t⁻²)` 的导数是 `−1/[t(t²−1)]`，符号和残项预算已明确给出。不能把这说成原印刷错误已经被一般性修复并获得形式化验收。

### [LRW86]

J. van de Lune、H. J. J. te Riele、D. T. Winter，*On the Zeros of the Riemann Zeta Function in the Critical Strip. IV*，Mathematics of Computation **46**, no.174 (April 1986), 667–681。

机构原文：
`https://ir.cwi.nl/pub/1808/1808D.pdf`

已读15页解析文本，并成功截图目视核对印刷p.667摘要及引言。原文声明首 **1,500,000,001** 个零点，全部 `0<γ<545439823.215` 位于临界线且单纯。本轮只采用严格更小的 `0<γ≤800000` 的临界线结论，不需其单性。

“无额外数学假设”不等于“免去数值证明”。要在Lean中使用有限验证，仍须真实零点计数／误差／完备性证书。截止高度降低20%不能直接解释成证书大小或计算耗时降低20%。

### [TAO14]

Terence Tao，作者课程讲义 *254A, Supplement 3: The Gamma function and the functional equation (optional)*，2014-12-15。

`https://terrytao.wordpress.com/2014/12/15/254a-supplement-3-the-gamma-function-and-the-functional-equation-optional/`

用于真实ζ基本对象／函数方程背景及Exercise46的显式公式常数交叉核对。某些结论在讲义中以练习形式出现，不把练习题本身称为已经提供全部形式化证明。**不使用上一轮的独立 ξ 倒数质量／Euler 常数推导。**

### 本轮未取得的原始下载字节

上面网页阅读成功不等于本地已持有PDF字节。通过容器请求作者PDF的下载尝试因网络DNS限制失败；本包不伪造其SHA256，不将网页解析输出称为raw PDF，不附未经取得的零点原数据。可重放证据中的准确缺失状态也写入 `sources/SOURCE-RECORDS.json`。

## 3. 原包来源与不再需要的直接依赖

原包中 Dusart2010 arXiv **1002.0442v1** 的20页PDF字节与SHA可核对；(U)/(L)仍是原路线的充分输入，原始出处和深上游仍按原审计记录保留。本轮主路线不再调用 U/L，不需将其全域阈值拼到exp(5000)、不需Dusart Table6.6等分段η表、不需进一步定量无零区，也不调用所附 `PsiTheta` 的21√x大截止点。

删除这些直接依赖，不表示文献层“只剩几个代数比较”：显式公式、有效零点计数和有限验证本身仍是高风险的真实数学义务。

原 `B699TailGap.Gap`、`RealGap` 与 `nat_gap_of_real_gap` 保持D和Y不变，定义和源码出处均已从附件实际字节核对。新的截止点是 `Y=16000000000`，不能直接偷用只覆盖旧截止点的供应 theorem。新消费者通过真实 `Nat.primesLE` 给出prime见证，不假设原U/L。

## 4. 计算与实验状态

标准库精确标量脚本实际运行通过52项。设计阶段的参数比较仅用于选择路线，不作为证明证据；接受包不包含采样的x网格、近似ζ零点表或浮点判定。包内所有接受比较使用 Fraction 和显式级数尾界。

没有安装或运行 Lean/lake/AX/checker/CI，没有修改仓库，没有重新生成原有限链。137行候选是未编译源码：即使未来条件消费者通过，也必须检查其假设表，不能将其中 `hmass`、`hbridge`、`hinitial` 视作已经消去。
