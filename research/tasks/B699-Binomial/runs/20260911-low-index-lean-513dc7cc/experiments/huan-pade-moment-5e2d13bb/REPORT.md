# 具体有理矩泛函与 Padé 轻前提路线

负责人：/root/i18_downstream_review。开始于 2026-09-11 05:22:28 UTC。所有新增内容仅在本实验目录；旧 review、现有 PadeInteger 和其他 Padé 候选未作修改。本轮没有运行 Lean、大计算、下载、Git 或 CI。

## 首个检查点的结果

**具体矩泛函的全参数代数证明成立，且有完整 Lean 候选。** 它从实际多项式系数出发，不假设存在满足矩条件的线性映射；β 矩定理通过 b 归纳并 generalizing a 证明，没有调用实积分、Beta 函数、MeasureTheory 或 binomial 求和定理。

小型精确 Fraction 检查通过：123 个单项式、120 组线性检查、289 个 β 矩及其递推、2,250 个实际 Padé 核和源整数系数式的有限对应实例。另有一个六次的演示锥证书及 525 个小幂次增长实例。它们只核对各自有限范围，不能替代下面的全称纸面证明，也不构成 Lean 接受。

[Moment.lean](Moment.lean) 与 [BernsteinCone.lean](BernsteinCone.lean) 都是**未编译候选**，没有本轮 axiom audit 结果。直接导入的 mathlib olean 均在本机存在；未执行 Lean，所以不能把缓存存在或完整 proof text 写成 Lean 通过。

## 1. 实际定义与线性

对有理系数多项式 p(X)=Σk c_k X^k，定义

    M(p) = Σk∈support(p) c_k/(k+1) ∈ ℚ。

这是有限支持上的实际运算。Lean 对应为 Polynomial.sum，不是参数化的任意 linear map。

对于任意 k∈ℕ、c∈ℚ，有 M(cX^k)=c/(k+1)，特别 M(X^k)=1/(k+1)、M(1)=1、M(0)=0。对任意 p,q∈ℚ[X]、c∈ℚ，逐系数的分配律给

    M(p+q)=M(p)+M(q)，M(cp)=cM(p)，M(p−q)=M(p)−M(q)。

support(p+q) 可能因消去而变小，不能直接假设支持不变。候选调用 Polynomial.sum_add_index，并明确证明分量函数在 0 处为 0、关于系数可加；数乘同样使用 sum_smul_index。这些规则证明后才将实际 M 包装成 momentLinear。

M 不是环同态，也不具有乘法性：M(X²)=1/3，而 M(X)²=1/4。后续增长证明不能用 M(pq)=M(p)M(q)。本轮小检查中保留了这个确切反例。

## 2. 全部 a,b 的 β 矩，无积分证明

记 B(a,b)=X^a(1−X)^b，F(a,b)=M(B(a,b))，a,b∈ℕ。纯多项式恒等式是

    B(a,b+1)=B(a,b)−B(a+1,b)。

它只用 pow_succ 和分配律；因此由已经证明的 M 线性，

    F(a,b+1)=F(a,b)−F(a+1,b)。

初值 F(a,0)=1/(a+1)。另一方面，具体有理数

    T(a,b)=a!·b!/(a+b+1)!

满足同一初值和递推，因为

    a!b!/(a+b+1)! − (a+1)!b!/(a+b+2)!
    = a!b!·[(a+b+2)−(a+1)]/(a+b+2)!
    = a!(b+1)!/(a+b+2)!。

所有分母非零：自然数阶乘为正，a+b+2>0。对 b 归纳、同时对任意 a 保持归纳假设，得到

    M(X^a(1−X)^b)=a!·b!/(a+b+1)!，对全部 a,b∈ℕ。

a=0、b=0 和两者同时为 0 均包含，没有空区间或负指数例外。候选的最终声明 moment_X_pow_one_sub_X_pow 展开实际 M 和实际多项式，右侧是明确阶乘商；不是对一个仅由公式定义的 betaMoment 再作同义改写。

## 3. Bernstein 锥与条件全幂次消费者

令 K 是有限个非负有理倍数 B(a,b) 的和组成的集合。候选用 zero、basis、add、scale 四种构造给出这个生成锥。乘法没有作为构造公理加入，而由

    B(a,b)B(c,d)=B(a+c,b+d)

及有限和的分配律证明。它对加法、乘法、非负有理标量封闭；1 属于 K。上节的正阶乘商使每个基底的 M 值为正，于是 M 在 K 上非负。若 q−p∈K，则 M(p)≤M(q)。

进一步，设 F,g∈K，λ∈ℚ，λ≥0，且常数多项式 λ−F∈K。则对所有 n∈ℕ，λ^n−F^n∈K。归纳步骤使用

    λ^(n+1)−F^(n+1)
    = λ(λ^n−F^n)+F^n(λ−F)。

乘上 g 并使用 M 的已证线性和锥正性，得到

    M(gF^n) ≤ λ^n M(g)，对所有 n∈ℕ。

对应候选是 BernsteinCone.lean 中 moment_weighted_power_le。它是一个明确的条件消费者：F、g、λ 和锥成员证明都必须给出。此实验没有把“存在好增长界”包装成该 theorem 的隐藏假设，也没有声称已经为实际十条 Padé 行填好这些输入。

### 锐界的具体限制

每个 B(a,b) 在 0<x<1 严格为正。所以有限非负和若在某个内部点为 0，则全部非零权重都不存在，该多项式只能是 0。因此非零多项式

    1/4−X(1−X)=(X−1/2)^2

虽然在 [0,1] 非负，却**不属于这个有限非负 Bernstein 锥**：它在内部点 1/2 为 0。

这给后续任务一条可操作边界：一般需要严格有理余量 λ>max F，不能要求这个锥直接证明一个内部取等的精确最大值。严格余量是否仍足够让 Padé 的 Ω3、Ω4 和高度条件通过，需要新的数值核对，不能默认原十行常数原样保留。

本轮只给一个小演示：F=X(1−X)，λ=5/16。λ−F 在固定总次数 6 的未归一化基底 X^k(1−X)^(6−k) 上，系数依次为

    5/16, 7/8, 11/16, 1/4, 11/16, 7/8, 5/16。

精确展开与 λ−F 一致，七个系数均非负。这是演示条件接口可以被真实有限证书喂入；没有为实际 Padé 行生成大型最大值或区间细分证书。

## 4. 怎样连接到实际 Padé 系数

本轮读取的实际定义是本 run 的 lean/PadeInteger.lean:48–69。另一候选 CoefficientFactors.lean 的 β 矩目前定义在 ℝ 上，且状态仍由其所属任务管理；本实验不把该未验候选当成接受库。

对于固定有理 z 和自然数 A,B,C，三个有理多项式核为

    KP=X^A(1−X)^B(z−X)^C，
    KQ=X^B(1−X)^C(1−X+zX)^A，
    KE=X^A(1−X)^C(1−zX)^B。

设 W=(A+B+C+1)!/(A!B!C!)。利用本轮已给的全参数矩恒等式，再作有限核展开和阶乘消去，目标对应是

    P(z)=W·M(KP)，Q(z)=(−1)^C W·M(KQ)，E(z)=W·M(KE)。

本轮已用实际源系数公式做 2,250 个有限对应检查：A,B,C∈0..4，z∈{−1,0,1/3,2/3,1,2}，三种核分别检查。所有正负号和零参数都在小范围内相符。**通用 Lean 对应声明尚未加入本实验候选**，下一步需要将源整数系数式与具体 M 的有限展开逐项接上，不能用这批样例代替。

对实际 Padé 高度应用，z=D0/(a0P) 本来就是有理数，因此可先在 ℚ 内完成这条对应，不必为全部实 z 恢复积分体系。

### 一个已明确、尚待实现的增长节点

对 c>d≥1、δ∈{0,1}、m≥1，置 u=dm−δ、B=(c−d)m+δ−1。Q、E 核可以按 m−1 分离成固定小核与固定多项式的幂：

    FQ=X^(c−d)(1−X)^d(1−X+zX)^d，
    gQ,δ=X^(c−d−1+δ)(1−X)^(d−δ)(1−X+zX)^(d−δ)，
    FE=X^d(1−X)^d(1−zX)^(c−d)，
    gE,δ=X^(d−δ)(1−X)^(d−δ)(1−zX)^(c−d−1+δ)。

对应核为 gQ,δ FQ^(m−1)、gE,δ FE^(m−1)。若 0≤z≤1，则

    1−X+zX=(1−X)+zX，1−zX=(1−X)+(1−z)X，

所以这些因子均有直接锥表示。剩下的关键证书是 λQ−FQ∈K、λE−FE∈K，其 λ 必须带足够小的严格余量。这一节点及自然减法的 Lean 对照还未实现；本轮没有生成这些实际 Padé 证书。

即使该步骤成功，仍需为阶乘前因子 W 提供可用的全 m 上界，再把 λQ、λE、M(gδ) 的数值送入 Padé 消元。它不能自动复用原 BFT 的全部常数和高度。

## 5. 本机 API 与依赖盘点

本轮没有 Lean 试编译，仅从实际源码核对以下 API。来源根为 D:/CodingProject/Math/.lake/packages/mathlib/Mathlib/；该工作树自身没有 .lake，现有主线程 verifier 才负责接入这些共享缓存。

| 需要的接口 | 实际源码位置 | 候选用途 |
|---|---|---|
| Polynomial.sum | Algebra/Polynomial/Basic.lean:850–855 | M 的实际有限定义 |
| sum_monomial_index | 同文件:874–876 | 单项式矩 |
| sum_add_index | 同文件:889–893 | 处理支持消去的可加性 |
| sum_smul_index、Polynomial.smul_sum | 同文件:907–918 | 从实际求和证明数乘线性 |
| X_pow_eq_monomial | 同文件:815 | M(X^n) |
| qsmul_eq_C_mul | 同文件:1204–1205 | 常数多项式乘法到数乘 |
| Nat.factorial_zero、factorial_succ、factorial_ne_zero | Data/Nat/Factorial/Basic.lean:52、55、72 | β 初值、递推及清分母 |
| LinearMap 的构造字段 | 参照 Algebra/Polynomial/Derivative.lean:46–53 | 证明线性后包装 momentLinear |

核心只导入 Polynomial.Basic、Algebra.Field.Rat、Factorial.Basic、FieldSimp、Ring。锥候选另加 Algebra.Order.Field.Rat，且依赖本地 Moment 候选先被编译。上述六个 mathlib 直接模块的 olean 都存在。

没有使用未缓存的 Polynomial.Module.Basic 或 Data.Rat.Basic；没有使用 MeasureTheory、intervalIntegral、Beta、Polynomial 的分析模块或新的下载。甚至 Choose 也不是核心 β 矩证明的必要导入。

完整路径、直接缓存存在性、API 源哈希、现有 PadeInteger/CoefficientFactors 的参照哈希与项目 pins 见 [API_AND_SOURCE.json](API_AND_SOURCE.json)。该记录没有声称全传递缓存完整，也没有测量编译成本。

## 6. 实际检查与交接

[check_moments.py](check_moments.py) 直接用稀疏有理系数多项式作加法、乘法和矩求和；β 阶乘式和源整数系数式是分开的比较对象。运行于 2026-09-11 05:40:19–05:40:20 UTC，Python 3.14.0，程序耗时 0.3500 秒，退出码 0。结果见 [EXACT_CHECKS.json](EXACT_CHECKS.json)，原输出见 [EXACT_CHECKS.log](EXACT_CHECKS.log)。

实际调用仅为进程级 PYTHONUTF8=1 下，C:/Python314/python.exe -B check_moments.py。该程序没有启动子进程、Lean、下载或素数筛。

运行前宿主可见 16 逻辑 CPU、约 3.48 GB 空闲物理内存和约 1.73 GB D 盘空闲；这些不是独占配额。仅执行串行小运算，不占用主线程的大型编译安排。

下一项验收应先针对固定 Moment.lean 源码，用主线程现有 verifier 编译并实际检查打印的传递公理；核心通过后再单独验证 BernsteinCone.lean。若候选有 elaboration/API 错误，要在新修订中记录确切失败，不以纸面正确或 Python 通过代替 Lean。冻结版本哈希和最终文件检查见 FREEZE_V1.json。

本次实际消除的是“β 矩必须以实积分定义或只假设存在性接口”的纸面前置；已给出具体代数替代和未编译候选。仍没有消除实际增长常数、G/θ 或最终原题消费者的缺口，原题无界区域和阶段 B 接受数均未改变。
