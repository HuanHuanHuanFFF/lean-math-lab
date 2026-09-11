# 实际整数 Padé 系数、具体矩核与正确恒等式

负责人：/root/i18_downstream_review。开始时间为 2026-09-11 06:33:28 UTC。唯一写入本实验目录；既有 Moment/BernsteinCone、PadeInteger、短路径整合源和旧 review 全部只读。本轮未运行 Lean、大型计算、下载、Git 或 CI。

## 结果与范围

**已给出全部 A,B,C∈ℕ、全部有理 z 的纯代数连接：实际 BFT 整数系数式等于具体多项式核的 M 值，并由 M 的代数分段公式独立推出正确 Padé 恒等式。** 不需要先假设该恒等式，也不需要把 M 当成乘法泛函。

正确形式为

    P(A,B,C;z) − (1−z)^(B+C+1) Q(A,B,C;z)
      = z^(A+C+1) E(A,B,C;z)。

六个完整 Lean 源候选已经写出，最终声明直接引用现有 pPolynomial、qPolynomial、ePolynomial。**所有新源均未编译、未作传递公理审计**；导入的旧候选也不因本任务引用而自动成为已验库。此处“纯代数证明”与“Lean 候选”分别记账。

该范围包含全部实际对角参数 A=C、B≥0，以及十条 i18 种子的有理取样 z=D0/(a0P)。本轮没有退到孤立的小 A 或某个固定 m；z=0、z=1、负 z 也在代数定理内。Lean 最终候选目前陈述为所有有理 z 的实际整数多项式取值恒等式，未另加一个 ℤ[X] 系数相等或任意实 z 的形式化根。纸面上，因 ℚ 无限，全部有理点取值相同也推出多项式恒等，但该额外形式化步骤不影响实际有理种子用途。

## 1. 采用的具体 M，及它没有的性质

采用上一实验冻结的实际定义

    M(p)=Σk∈support(p) coeff_k(p)/(k+1)，p∈ℚ[X]。

采用的上一层候选声明是加法/数乘/减法线性、M(X^n)=1/(n+1)，以及

    M(X^a(1−X)^b)=β(a,b)=a!b!/(a+b+1)!，a,b∈ℕ。

这些在上一实验中有完整代数推导和未编译源码；本实验不把它们换成“假设存在一个有这些性质的 linear map”。Moment.lean 的 SHA-256 保持 d500b13ffb6d5c622d59a51a123adb0c58ec1d0bbd039809761656eea2b251b7；BernsteinCone.lean 保持 11c86acb368d353bd44f086f7d81eb2945b7c70712693bd463ff1367e3756aa9。

M(X²)=1/3，而 M(X)²=1/4。本轮任何乘积估计或代换都没有使用错误的 M(pq)=M(p)M(q)。这里只使用常数系数的线性；代换性质必须另外证明。

## 2. 不用导数或积分的代数分段公式

对 0≤r≤n，由 β 公式与阶乘消去，

    binom(n,r)·M(X^r(1−X)^(n−r))=1/(n+1)。

因此 binomial 展开给全部 n∈ℕ、z∈ℚ：

    M(((1−X)+zX)^n)
      = [1/(n+1)] Σr=0..n z^r。

有限几何恒等式

    (1−z) Σr=0..n z^r = 1−z^(n+1)

可以对 n 归纳，完全不除以 1−z。结合 M((zX)^n)=z^n/(n+1)，得到每个单项式、进而由线性得到任意 p∈ℚ[X] 的分段公式

    M(p)=z·M(p(zX))+(1−z)·M(p((1−X)+zX))。             (S)

右侧第二个仿射参数等于 1−(1−z)X；它从 1 走到 z，已经反射成与 Q 核一致的方向。这里“分段”是完全代数的等式，不以有序区间、可积性或积分换元为前提。证明也没有除以 z，故 z=0、1 无需另补极限或例外。

候选 [MomentSubdivision.lean](MomentSubdivision.lean) 从实际 M 推出归一化质量、仿射幂矩和 moment_subdivision。Polynomial.induction_on' 只使用常数倍单项式和加法，因此没有假设 p 的支持在加法下保持不变。

## 3. 三个实际系数式与核的对应

记 N=A+B+C+1，W=N!/(A!B!C!)。实际整数系数多项式是

    P(z)=Σr=0..C (−1)^(C+r) binom(N,r) binom(A+C−r,A) z^r，
    Q(z)=Σr=0..A (−1)^C binom(A+C−r,C) binom(B+r,r) z^r，
    E(z)=Σr=0..B (−1)^r binom(A+r,r) binom(N,A+C+r+1) z^r。

这些与本 run 的 lean/PadeInteger.lean:48–69 的定义对应，最终适配器不依靠仅以满足 Padé 恒等式来定义的替代对象。P 的符号是 (−1)^(C+r)，Q 有整体 (−1)^C，E 是 (−1)^r。

定义 ℚ[X] 中的实际核

    KP=X^A(1−X)^B(z−X)^C，
    KQ=X^B(1−X)^C(1−X+zX)^A，
    KE=X^A(1−X)^C(1−zX)^B。

对各自有限范围 r≤C、r≤A、r≤B，binomial 展开分别给

    KP=Σ (−1)^(C+r) binom(C,r) z^r · X^(A+C−r)(1−X)^B，
    KQ=Σ binom(A,r) z^r · X^(B+r)(1−X)^(A+C−r)，
    KE=Σ (−1)^r binom(B,r) z^r · X^(A+r)(1−X)^C。

P 展开最初出现 (−1)^(C−r)；r≤C 保证 C−r 与 C+r 同奇偶。所有自然减法都有上述 r 范围，未把截断减法当整数减法乱移项。

对每一项应用实际 M 的 β 公式后，所需的三个系数消去等式是

| 有效 r 范围 | 精确阶乘消去 |
|---|---|
| r≤C | W·binom(C,r)·β(A+C−r,B)=binom(N,r)binom(A+C−r,A) |
| r≤A | W·binom(A,r)·β(B+r,A+C−r)=binom(A+C−r,C)binom(B+r,r) |
| r≤B | W·binom(B,r)·β(A+r,C)=binom(A+r,r)binom(N,A+C+r+1) |

它们直接由 binom(n,r)r!(n−r)!=n! 以及正阶乘分母得到；没有新的分析输入。因此对全部自然数 A,B,C、全部有理 z，

    P(z)=W·M(KP)，Q(z)=(−1)^C W·M(KQ)，E(z)=W·M(KE)。   (M)

这些不是只对某个小参数或取值点的观察。[CoefficientFactorsRat.lean](CoefficientFactorsRat.lean) 给完整有理系数消去候选，[KernelAlgebra.lean](KernelAlgebra.lean) 在一般交换环上给三种有限核展开，[SourceMoments.lean](SourceMoments.lean) 把两层逐项组合成 (M)。三个源系数到矩的目标没有任何额外“P/Q/E 与核已经对应”的假设。

CoefficientFactorsRat 和 KernelAlgebra 分别由旧 CoefficientFactors、KernelExpansion 候选有来源地派生；原件未改。前者去掉实数 β 定义，直接引用具体 M 实验中的 β；后者把纯环展开泛化到任意交换环，并应用于 ℚ[X]。派生输入哈希见 DERIVATION_SOURCES.json。

## 4. 代入分段公式，独立推出 Padé 恒等式

对 KP 使用两种具体仿射代换，直接按乘法和幂整理可得

    KP(zX)=z^(A+C)·KE(X)，
    KP((1−X)+zX)=(−1)^C(1−z)^(B+C)·KQ(X)。          (T)

第二式的符号来自

    z−[(1−X)+zX]=−(1−z)(1−X)。

将 (T) 代入已经独立证明的 (S)，再乘 W：

    W M(KP)=z^(A+C+1) W M(KE)
      +(1−z)^(B+C+1) (−1)^C W M(KQ)。

最后使用已由真实系数证明的 (M)，即得到

    P−(1−z)^(B+C+1)Q=z^(A+C+1)E。

没有循环使用 Padé 恒等式；没有以“积分核定义了 P/Q/E”跳过实际整数系数；没有用 M 的乘法性；没有除以 W、z 或 1−z。[KernelMoments.lean](KernelMoments.lean) 的 moment_pade_identity 和 [ActualIntegerBridge.lean](ActualIntegerBridge.lean) 的 actual_integer_pade_identity 分别是核层和实际源对象的最终候选。

原文对应是 2007-02-26 BFT 作者稿第 9 页 (3.4)，缓存提取文本明确为上述 B+C+1 和 A+C+1。其 (3.1)–(3.3) 给三个核和 Q 的整体奇偶因子；原文初始写正参数，本次代数证明同时包含自然数零参数。来源读取是已有文本，不是本轮目视排印核验。P 提取系数行的历史符号异文不替代本报告从核展开证明的符号，也不据此新增“已目视确认排印错误”的说法。

### 错误指数与符号的确切反例

即使限制到实际采用的对角情形，示意指数也不能直接沿用。取 A=C=1、B=2、z=1/2，则

    P=1/2，Q=−7/2，E=23/4。

正确式两侧都是 23/32。若错误地使用 P−(1−z)^(A+B+1)Q=z^(B+C+1)E，则残差是 23/64，非零。若再遗漏 P 的整体 (−1)^C，正确指数式的残差变为 −1。两种错误都已用独立 Fraction 程序实际拒绝。

## 5. 实际有限检查

[check_identity.py](check_identity.py) 使用实际稀疏有理系数字典；组合、取值、矩与源系数公式分别计算。实际运行于 2026-09-11 06:50:09–06:50:11 UTC，Python 3.14.0，程序耗时 2.0341 秒，退出码 0。结果见 [EXACT_CHECKS.json](EXACT_CHECKS.json)，原输出见 [EXACT_CHECKS.log](EXACT_CHECKS.log)。

| 检查 | 精确范围与实际数量 |
|---|---|
| 归一化 Bernstein 质量 | n=0..30、r=0..n，共 496 项 |
| 任意小多项式的代数分段 | 60 个次数≤9 的有理多项式 ×19 个 z，共 1,140 项 |
| 仿射幂矩与无除法几何式 | n=0..20 ×19 个 z，共 399 项 |
| 两种核代换 | A,B,C=0..3 ×19 个 z ×2，共 2,432 项 |
| 实际整数系数与具体矩核 | 同参数范围 ×3，共 3,648 项 |
| 正确 Padé 全多项式系数相等 | A,B,C=0..6，共 343 组；比较整个多项式，不是只检验某个 z |
| 错误形式 | 上述错误指数、P 符号及 M 乘法性反例 |

19 个 z 包含全部十个实际 i18 种子 5/512、1/289、1/17、1/243、1/50、4/125、1/26、1/14、5/343、2/13，并加负值、0、1 和大于 1 的值。检查范围仍是有限的，不据其数量称全称定理已由计算证明；全参数依据是前述代数论证。

运行命令为进程级 PYTHONUTF8=1 下 C:/Python314/python.exe -B check_identity.py。没有启动 Lean 或任何子进程。运行前宿主可见 16 逻辑 CPU、约 3.25 GB 空闲物理内存和约 1.68 GB D 盘空闲；只是当时可见值，不是独占配额。全部小运算串行完成。

## 6. Lean 候选与实际 API 边界

建议按以下依赖顺序交给父任务的现有定向 verifier：

1. 前一实验固定 Moment.lean；
2. CoefficientFactorsRat.lean 与 KernelAlgebra.lean；
3. MomentSubdivision.lean；
4. KernelMoments.lean；
5. SourceMoments.lean；
6. ActualIntegerBridge.lean，同时接入固定 PadeInteger 源。

每份文件都有 UNCOMPILED CANDIDATE 标记和实际验收根的 #print axioms 命令。没有新增 axioms、占位证明或把身份关系作为假设的接口；**有 proof text 仍不等于 elaboration 或 kernel 验证成功**。

实际源码核对的主要 API：

| API | 固定 mathlib 源位置 |
|---|---|
| Polynomial.induction_on' | Algebra/Polynomial/Basic.lean:952–956 |
| monomial_comp、add_comp、mul_comp、pow_comp | Algebra/Polynomial/Eval/Defs.lean:422、426、462、472 |
| sub_comp、C_comp、X_comp | 同文件:777、399、392 |
| eval₂_monomial、eval₂_finsetSum | 同文件:77、132 |
| add_pow | Data/Nat/Choose/Sum.lean:76–78 |
| neg_one_pow_eq_pow_mod_two | Algebra/Ring/Commute.lean:171 |

本机 Polynomial.Derivative 和 Algebra.GeomSum 的 olean 不存在，所以没有导入它们：分段使用归一化 β 矩，几何恒等式直接归纳。所有新文件的直接 mathlib 导入均已有本机 olean；没有下载或编译来补它们。最终对象适配器会经现有 PadeInteger 引用其已有依赖，但没有引入新的区间积分层。

项目声明的 pin 为 leanprover/lean4:v4.33.1，mathlib revision 0df444a360eaa60ab8c11dca51a86af692955474。本任务未运行 Lean --version 或 Git 来复验运行时版本；具体读取的 API 源、旧候选和原种子输入另以 [SOURCE_AND_API.json](SOURCE_AND_API.json) 的哈希固定。

## 7. 前沿变化和下一项真正缺口

这条路线为阶段 B 中采用 Padé 的证明链提供两个具体前置：实际 P/Q/E 整数系数到可估计多项式核的对应，以及相邻两组参数消元所需的真实 Padé 恒等式。对 i18，全部十条有理种子均在本结果的定义域。它不是又造一个“假设 Padé 恒等式成立”的条件包。

纸面上已消除了这两个节点对 Beta/IntervalIntegral 及仿射积分换元的依赖；Lean 上仍须真正编译本链及上游 M，再做源声明与传递公理核对。相邻行列式非退化如何接入，应与父任务现有真实系数递推链对齐，不根据本报告跳过那层验收。

本轮没有完成实际 Bernstein 增长证书、严格有理 λ 余量、阶乘前因子全 m 上界或数值高度；也没有处理 G/θ、指数块、CRT 或最终原题消费者。因此本任务新增原题指标仍为 0，不声称 B 阶段整体完成，不声明新颖性。冻结候选和交付完整性见 FREEZE_V1.json；后续若有编译/API 修正，应保留此版并另存修订。
