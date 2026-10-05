# DEPENDENCIES — 来源、数学义务与证据等级

本文件是依赖审计，不把文献出版、源码存在、Python 检查和 Lean 接受混为一谈。来源 URL、定位及本地字节状态见 `sources/SOURCE-RECORDS.json`；输入身份及实际 SHA 核验见 `sources/INPUT-IDENTITY.json`。

## 1. 四种标签的含义

**已证**：本轮给出纸面推导，或附件已给出明确适用的证明源码。每处继续标纸面、标量程序、附件来源中的哪一种；未运行 Lean 的新证明不列为内核已证。

**可引用但待形式化**：已取得原文中的相应声明，作为无条件文献定理可用于纸面论证，尚未在本任务的冻结 Lean 环境消去其依赖参数。

**缺原件**：只取得下游引用、摘要或元数据，未读取所需固定原件/原始证书。与“这个出版数学结果是假的”无关。

**缺证明**：本任务所需的独立证明或完备证书没有交付。一个义务可以同时有“可引用但待形式化”和“原始证书缺原件/缺证明”两个不同层面的标签。

## 2. 选定无界路线的依赖矩阵

| ID | 准确数学角色 | 原件与定位 | 状态及尚缺内容 |
|---|---|---|---|
| ZETA-BASIC | 真实 ζ/ξ、函数方程、重数和共轭/1−ρ 对称、0<Re ρ<1、Im ρ≠0 | Tao 2014 Supplement 3，开头 Corollary 2 及后文；DLMF 25.4.3–25.4.4；PROOF §1.1 给出需要的定性边界论证 | 可引用但待形式化；没有核对冻结 mathlib 的整个 ζ 理论依赖闭包 |
| XI-LOG | ξ′/ξ(s)=B+Σ(1/(s−ρ)+1/ρ)，B=½log4π−1−½γ_E | [TAO14] Exercise 44 后的证明、Exercise 45；[DLMF] 25.2.12 | 可引用但待形式化；需规范化、局部一致收敛及真实零点索引 |
| EF | 对 C¹ 权的积分显式公式，q(t)=−log2π−½log(1−t⁻²) | [RS03] Lemma 4, pp.15–16；常数符号由 [TAO14] Exercise 46 独立核对 | 可引用但待形式化；原文加号已隔离，不能原样抄入；尚缺对应 Lean 定理 |
| N-EXPLICIT | 实数 t≥1000，N(t)=v log v−v+7/8+误差，误差绝对值≤0.67log v | [RS03] Lemma 1, p.14；原文明确 N 使用 0<γ≤t | 可引用但待形式化；该文引用的 Rosser 1941 Theorem 19 原件缺失 |
| FINITE-ZEROS | 0<|γ|≤10⁶ 的全部非平凡零点在 β=1/2 | [LRW86] p.667 abstract、§1，其已发表范围大于所需 H | 可引用但待形式化；原始符号/舍入/计数完备性证书缺原件、缺本任务可重放证明；不是全域 RH 假设 |
| XI-MASS | Σ低 |ρ|⁻²<1/20 | PROOF §2，由 XI-LOG、函数方程、有限临界线事实及精确常数推导 | 已证—本轮纸面；未 Lean；不再依赖逐零点倒数表 |
| LOW-SUM | Σ_{|γ|≤H}|ρ|⁻¹<41 | PROOF §3，由 N(1000)<660、XI-MASS 和分部积分 | 已证—本轮纸面和标量核对；未 Lean |
| HIGH-SUM | Σ_{|γ|>H}|γ|⁻⁹<873/(192H⁸) | PROOF §4，明确积分到 ∞ | 已证—本轮纸面；不需要高零点临界线条件或定量无零区 |
| KERNEL8 | 固定 8 重均匀平均的 9 项差分公式和复数范数上界 | PROOF §§5–6；`src/Kernel8Spec.lean` 定义形式化目标 | 已证—本轮纸面；规范目标尚无 Lean 实现 |
| SCALARS | π/log/γ_E 包围、低/高误差、最终系数、结构性规模 | PROOF §10；Python 源码、exact JSON、实际日志 | 已证—纸面余项界＋51 项有理运算实际通过；不是 Lean 或 ζ/素数证书 |
| PSI-T | ∀实 x≥8×10¹¹，|ψ(x)−x|<x/10000 | PROOF §7 | 已证—从上述文献输入的本轮纸面推导；整体解析依赖仍待形式化 |
| PSI-THETA | x≥1 时 ψ−θ≤21√x | 输入 `evidence/lean/PsiTheta.lean`，第一声明 | 已有附件证明源码；采用附件记录的前置状态，本轮未重新内核检查 |
| CUT-PATCH | 将 ψ−θ≤x/40000 的阈值降至 705600000000 | PROOF §8；`src/TailBridgeCandidate.lean` | 已证—纸面；Lean 候选未编译 |
| EXTRACT | θ(z)>θ(x)⇒真实自然数素数 p∈(x,z] | 输入 `evidence/lean/ThetaInterval.lean` 的 `exists_prime_of_theta_lt`、`prime_of_theta_relative_bounds` | 附件已有消费者及其接受记录；不是分布供应 |
| GAP-TAIL | Gap(4095,800000000000) | PROOF §9 | 已证—纸面接合；无参数 Lean 定理缺证明 |

所有“纸面已证”都附在已列前提之后，不把未实现的文献定理混入不可见的系统公理。

## 3. 新有限接合的义务

| ID | 区间/作用 | 状态 |
|---|---|---|
| FINITE-INITIAL | 10000000≤y<122568684 的真实 Gap 见证 | 附件记录 producer 编译/AX/checker 成功；完整独立 source/object/raw 绑定 pending；只条件采用 |
| FINITE-BRIDGE | 122568684≤y<800000000000 的真实 Gap 见证 | **缺证明、缺证书**；本轮没有生成或重算素数链 |
| FINITE-ENVELOPE | 可选 E：(1−3/20000)t≤θ(t)≤t，10⁸≤t≤8×10¹¹ | 固定 Dusart Table 6.6 有对应印刷行；原始有向舍入及连续区间覆盖证据缺原件/缺证明；不作为本轮无条件输入 |
| SPARSE-SPEC | 单个 prime 覆盖公式、35974 个见证下界、73746 网格格子数条件上界 | 已证—PROOF §12 和精确 log 包围；并未得到任何具体 prime 见证或素性证书 |
| FULL-G | Gap(4095,10000000) | 条件拼合已给；无参数、完整证据绑定的目标尚未交付 |

该新增有限区间既不能用已有接受的 [19995885,61439401) 替代，也不能因端点数是有限数就视为轻量工作。

## 4. 逐篇来源与适用边界

### [DUSART10v1] Pierre Dusart

**Estimates of Some Functions Over Primes without R.H.**，arXiv:1002.0442v1，2010 固定版本，稿内日期 January 24, 2007。20 页。

本轮真正本地持有的原 PDF 来自用户附件：233779 bytes，SHA256
`3f11eca84613ad00e6a447f99b318d5c3d76e360283efcc6d3eebdda25ff3923`。

核对点：Prop. 5.1（p.4）为全 x>0 的 θ 上误差，印刷严格 < 足以供应用户非严格 U；Thm. 5.2（pp.4–5）中 k=2、η=0.05、阈值 122568683 的行比用户单侧 L 更强。其证明使用 ψ 误差、Prop.3.2、到 b=5000 的 Tables 6.4/6.5，以及 x≥exp5000 时引用 [7] Theorem 1.1。Prop.6.8（p.8）直接短区间定理又使用有限 prime-gap 数据。选定新尾部不调用这些定理。

Table 6.6（p.18）只作为可选有限接口 E 的来源审计：34 行、全区间含端点说明、a₀ 下界和 b₀ 上界已视觉核对；没有取得其下层所有 prime 跳点/对数舍入证书，不宣称这些行已被本轮严密重算。

源问题：Prop.5.1 中写的是 Table 6.4；与有限 θ 值对应的是 Table 6.6。本轮不把换一个表号当作数学证明。submitted [7] 的固定原始全文仍缺；没有用后来论文的题名/出版状态替换依赖。

### [RS03] Olivier Ramaré, Yannick Saouter

**Short effective intervals containing primes**，Journal of Number Theory **98** (2003), 10–33；24 页作者公开 PDF。

采用的精确部位只有：p.14 的 N(t) 定义及 Lemma 1；pp.15–16 的 Lemma 4 与积分显式公式证明结构。Lemma 1 适用所有实 t≥10³，误差是 0.67log(t/(2π))；不是只有渐近 O(log t) 的版本。

Lemma 4 常数加号的原文图像已核对；正确负号见 [TAO14]，并由原点留数独立解释。积分推导中若每个小段都引用错误常数，不能说该段已经被公式自身证明；正式化应从正确的 Perron 显式公式重新取得该积分等式。

上游：Lemma 1 的证明引用 J.B. Rosser，*Explicit bounds for some functions of prime numbers*，American Journal of Mathematics 63 (1941), 211–232，Theorem 19；积分公式引用 H. Davenport，*Multiplicative Number Theory*，3rd edition, GTM 74, Springer, 2000，Chapter 17。二者原始全文没有在本轮取得。可引用 RS03 的精确引理，但不宣称完整原件闭包。

该文其他主定理的精细参数、sieve 优化及巨大有限素数表不在选定依赖图内；本轮不用“引用整篇主定理”掩盖这些计算。

### [LRW86] J. van de Lune, H. J. J. te Riele, D. T. Winter

**On the Zeros of the Riemann Zeta Function in the Critical Strip. IV**，Mathematics of Computation **46**, no.174 (April 1986), 667–681。

p.667 摘要与 §1 明确给出矩形 0<Re s<1、0<Im s<545439823.215 中的全部零点在临界线且为单零点；本轮只需 0<|Im s|≤10⁶，且不需单性。来源是出版的有限计算定理，不是“假设 RH 到 H”。

p.667 §1 说明通过 Brent 前文 Theorem 3.2 完成计数/完备性；p.668 §2 的严格误差分析追溯到 [6] 技术报告与前文 [2]，扩展误差处理另有说明。其上游书目为 R.P. Brent，*On the zeros of the Riemann zeta function in the critical strip*，Math. Comp. 33 (1979), 1361–1372，Theorem 3.2；Brent–van de Lune–te Riele–Winter，Part II，Math. Comp. 39 (1982), 681–688，§3；van de Lune–te Riele–Winter，*Rigorous High Speed Separation of Zeros of Riemann's Zeta Function*，Report NW113/81，October 1981。这里只核对了 LRW86 的引用与书目，没有读到这些上游原件。前文勘误的存在亦在首页脚注提示。本轮没有获取其所有原程序、低高度子证书和修正依赖，不能把书面作者成功报告冒充本任务的可重放证明。

原文读取方式为网页 PDF；没有保存其原字节到本结果包，也没有杜撰 SHA。访问记录与精确 URL 在 SOURCE-RECORDS.json。

### [TAO14] Terence Tao

**254A, Supplement 3: The Gamma function and the functional equation (optional)**，作者原始课程讲义，2014-12-15。

Exercise 44 后的正文给出 ξ 对数导数的局部一致收敛正规化及常数差证明；Exercise 45 给出 B；Exercise 46 给出非整数 x>1 的准确显式公式，其中常数为 −log(2π)。这是作者本人讲义，不冒称为期刊定理。

本轮读取相关正文及其证明方向；若将全部练习作为独立内核定理，需要补足其解析证明。该讲义 Theorem 41 只给渐近零点计数，不能替代本路线采用的 RS03 有效常数。

另读 **254A, Notes 2: Complex-analytic multiplicative number theory**，2014-12-09，其中 Euler 乘积与 Hadamard/de la Vallée Poussin 定性非消失论证为 PROOF §1.1 的背景来源。这里不用其中未给有效常数的 PNT 渐近结论。

### [DLMF] NIST Digital Library of Mathematical Functions

§25.2，式 25.2.12 为 ζ 的 Hadamard 乘积，规范化与 B 一致；§25.4，式 25.4.3–25.4.4 为 ξ 函数方程与定义。网页所示版本为 1.2.8（2026-09-15）；本轮访问记录固定所用公式。

它是经典恒等式的独立对照，不替代出版有限零点定理。25.2.12 标注上游 Titchmarsh 1986, (2.12.6)/(2.12.8), pp.30–31，该原书本轮未取得。有限零点范围只使用 [LRW86] 原文，不从 DLMF 的概述性历史说明推断。

## 5. 哪些依赖被真正删除，哪些只是换位置

| 原路线对象 | 新无界尾是否还用 | 审计结论 |
|---|---|---|
| 全正实 x 的 θ 上界 1/36260 | 不用 | 删除过强范围与精度；并未证明 U |
| θ 下误差 x/(20log²x) | 不用 | 改为固定相对误差；并未证明 L |
| Dusart 分段 η 表到 exp5000 | 不用 | 从无界部分移除 |
| submitted [7] 的最终解析尾界 | 不用 | 新无界公式直接覆盖 x≥T，无该引用缺口 |
| 尖锐 ψ−θ 常数及表 | 不用 | 用附件的 21√x，代价是明确较大 cutoff |
| 定量零点无零区 | 不用 | 高零点只用 β≤1 和九阶矩 |
| 逐零点倒数和表/首零点高度 | 不用 | ξ 质量恒等式＋粗 N(1000) 替代 |
| 有限临界线验证 | 仍用，仅到 H=10⁶ | 高度显式且有限，但数值完备性没有免费消失 |
| 真实 ζ/ψ 的显式公式 | 仍用 | 是最大的解析基础风险之一 |
| [A,T) 的有限 Gap 供应 | 新增 | 必须列入总成本，不能称该区间已关闭 |

没有证据表明新路线的总 Lean 墙钟时间少于旧路线；没有测量新解析证明的内存或 kernel 成本。可以明确降低的是列出的依赖类别、所需有限零点高度及误差表结构，而非已经实测的端到端成本。

## 6. 首个未证义务的三种准确视角

**原 U/L 视角：** 仍没有它们的无参数 Lean 证明；本轮选择绕过而不是填满原类型。

**替代无界尾的独立证据视角：** 已发表的 EF、N-EXPLICIT、FINITE-ZEROS 是纸面前提，但各自的冻结 Lean 实现/原始数值证书尚缺。尤其必须核实完整零点计数而非单纯列举临界线零点。

**返回原 G 的拼合视角：** 新缺口首先是 FINITE-BRIDGE；旧 FINITE-INITIAL 独立绑定同时保持 pending。只要其中任何一项缺失，本轮不能交付无参数完整 G。
