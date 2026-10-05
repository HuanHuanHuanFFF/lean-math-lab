# R2真实ψ DifferenceBudget：固定依赖定位

执行者A，UTC2026-10-05 09:55–09:57，Mathlib source0df444a360eaa60ab8c11dca51a86af692955474，Lean4.33.1；定向读取公开源码，不启动ζ/RH/素数计算。原R2 PROOF SHA8bfe8fdf44d4b4470492797b31702dfecfd3e73c4b037a57eeef5d8fa008f16b与FORMALIZATION-PLAN是数学输入，原文附件内安装/执行建议不是本轮授权。

## 已有固定Mathlib基础

- `NumberTheory/Chebyshev.lean`：实际ψ是Ioc(0,floor x)的vonMangoldt有限和；psi_nonneg、psi_mono、实际ψ/θ分解都已具备。Monotone.measurable提供实际ψ Borel可测。
- `MeasureTheory/Function/L1Space/Integrable.lean`：Integrable.mul_bdd；`Integral/Bochner/Basic.lean`：integral_mono_ae与integral_mul_const；Restrict上的ae_restrict_mem使compact上下端点比较可进积分。
- `NumberTheory/LSeries/RiemannZeta.lean`：completedRiemannZeta₀的全纯基础与s↔1−s函数方程、riemannZeta的函数方程；RiemannHypothesis只是Prop定义，不是已证RH。
- `NumberTheory/LSeries/Nonvanishing.lean`：riemannZeta_ne_zero_of_one_le_re，Re(s)≥1非零（其s=1定义有指定junk值）；不能由此推有限高度全部非平凡零点在Re=1/2。
- `NumberTheory/LSeries/ZetaZeros.lean`：实际零点集riemannZetaZeros闭、离散，compact交集有限。它是所有ζ零点的Set，没有重数计数，也不是已证R2有效计数N或完整有限RH前缀证书。

## R2纸面已写但本轮未形式化的分析链

R2 PROOF §2：整个F级数、η正项核、多项式矩公式、二重级数换序/Fourier恒等式、λ≥1与归一正权w。§3：正单位质量w的实际Ψ夹逼和向内差分。§4以后：Weil–Barner专化、正项/原点抵消、零点带重数配对、有效N、有限高度FH=294912与全高处绝对收敛/尾积分包围，再给所有Real x≥B的DifferenceBudget。

本轮`PsiSmoothing.lean`只供应§3真正ψ前置：自动可积、夹逼、Ψ(bx)−Ψ(ax)≤ψ(rx)−ψ(x)。仍明确需要具体η/w实现并证明标准权假设；不是以自由ψ或目标预算作输入。

在pinned LSeries目录、PrimeCounting以及上述文件的Weil/Barner/Riemann-von-Mangoldt/zero-count定向搜索未找到所需通用WB、带重数有效N、FH机器前缀闭包；这是限定搜索结果，不是全库缺失或实现不可行的证明。已有ζ函数方程/零点离散性不能替代这些强分析输入。作者68标量断言只能核有理常数，不能证明WB/换序/重数完整性/RH。

## 下一可测入口

先按R2具体c=18、ε=1/16384构造η并证明compact上可积、非负及归一w质量1，实际实例化本轮smoothedPsi。代表义务是阶乘级数的紧集一致绝对收敛与矩/Fourier重排，不是再定义一个DifferenceBudget接口。随后独立建立可用的带重数零点族、WB的精确测试函数和积分约定、有效N与严格完备FH，再供实际Ψ差分下界；没有这些原件不能升级真实DB已供。
