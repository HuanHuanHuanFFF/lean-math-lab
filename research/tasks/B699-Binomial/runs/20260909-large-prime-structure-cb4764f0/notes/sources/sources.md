# B699 结构路线的外部来源核对

本笔记只记录本轮来源支持；没有执行 Lean/Lake、构建、因式分解或长计算。核对日期为 2026-09-08 UTC。来源状态分为直接读取的论文 PDF、本地源码声明，以及只能由后续论文复述的原始论文。

## 1. `lcm(1, ..., m) <= 4^m`

可直接采用的发表来源是 H.-L. Chan and M. Norrish, “Proof Pearl: Bounding Least Common Multiples with Triangles”, *Journal of Automated Reasoning* 62 (2019), 171--192, DOI [10.1007/s10817-017-9438-0](https://doi.org/10.1007/s10817-017-9438-0)，公开 PDF：[作者公开版](https://trustworthy.systems/publications/full_text/Chan_Norrish_19.pdf)。论文 PDF 首页给出发表信息和摘要；正文印刷页 189 的 **Theorem 3** 定义连续 LCM 函数 `L(n)`（含 `L(0)=1`），并声明

\[
  L(n)=\operatorname{lcm}(1,2,\ldots,n)\le 4^n.
\]

因此对正整数 `m` 正好得到所需 `lcm(1,...,m) <= 4^m`；上界是非严格 `<=`，没有额外下限假设。证明在印刷页 189--190：先用 Theorem 31 的递推
`n <= 2m` 且 `m <= n` 蕴含 `L(n) <= L(m) * choose(n,m)`，再用 Theorem 28 的中间二项式系数界，最后对偶数/奇数 `n` 作完全归纳。该论文明确称证明只用初等整数/列表归纳，并给出完整证明；这是论文结果，不是本仓库的 Lean 接受结果。

本地共享 mathlib 源码（`lake-manifest.json` 的 mathlib rev `0df444a360eaa60ab8c11dca51a86af692955474`，inputRev `v4.33.1`）也核对过：

- `Mathlib/NumberTheory/Chebyshev.lean:214` 定义 `Nat.lcmUpto n`；`:311` 的 `Chebyshev.psi_eq_log_lcmUpto` 给出 `psi n = log (lcmUpto n)`。
- `Mathlib/NumberTheory/Chebyshev.lean:445-458` 有 `Chebyshev.psi_le_const_mul_self {x : ℝ} (hx : 0 <= x) : psi x <= (log 4 + 4) * x`；这是可直接使用的、但常数较松的显式 `psi` 界。
- `Mathlib/NumberTheory/Chebyshev.lean:195` 有 `Chebyshev.theta_le_log4_mul_x`；`Mathlib/NumberTheory/Primorial.lean:142` 有 `primorial_le_four_pow (n : ℕ) : n# <= 4 ^ n`。
- 在该源码快照中没有找到直接命名为 `lcmUpto <= 4^n` 的定理；不要把 `primorial_le_four_pow` 当作 LCM 上界。若需要最短整数上界，优先引用 Chan--Norrish Theorem 3 或单独移植其初等证明。

## 2. Dusart 的短乘法区间

主来源是 Pierre Dusart, “Estimates of Some Functions Over Primes without R.H.”，`arXiv:1002.0442v1 [math.NT]`，提交时间 2010-02-02；[arXiv 版本页](https://arxiv.org/abs/1002.0442v1)，[canonical PDF](https://arxiv.org/pdf/1002.0442v1)。PDF 页眉保留作者稿日期 `January 24, 2007`，但版本身份应以 arXiv v1 元数据为准。

印刷/阅读器第 8 页的 **Proposition 6.8** 原文是：对所有实数 `x >= 396738`，存在素数 `p` 使得

\[
  x < p \le x\left(1+\frac{1}{25(\ln x)^2}\right).
\]

所以三个端点是：阈值 `x >= 396738`（包含等号）、左端 `x < p`（严格）、右端 `p <= ...`（非严格）。这里 `ln^2 x` 是 `(ln x)^2`，不是 `ln(ln x)`；同一论文另用 `ln_2 x` 表示 `ln ln x`。命题证明从 `0 < f(x) < 1` 开始，取 `f(x)=2 eta_k/(ln x)^k`，在 `k=2` 时使用 `eta_2=0.0195` 的估计，并调用已发表的素数间隔计算；本轮没有重做这些解析估计或有限计算。

注意：网页 PDF 文本抽取会把 `>=` 的横线漏掉而显示成 `>`。本轮直接渲染并读取 canonical arXiv v1 PDF 第 8 页，同时读取公开镜像 [piyanit.nl PDF](https://piyanit.nl/wp-content/uploads/2020/10/1002.0442.pdf) 的同页；两页的原始字形均为 `x >= 396738`。因此 B699 后续使用应保留 `>=`，不能按抽取文本的 `>` 缩小适用域。

## 3. Rosser--Schoenfeld 的全域 `psi` 界（可选）

J. Barkley Rosser and Lowell Schoenfeld, “Approximate formulas for some functions of prime numbers”, *Illinois Journal of Mathematics* 6(1) (1962), 64--94，正式 DOI [10.1215/ijm/1255631807](https://doi.org/10.1215/ijm/1255631807)，[Project Euclid 条目](https://projecteuclid.org/journals/illinois-journal-of-mathematics/volume-6/issue-1/Approximate-formulas-for-some-functions-of-prime-numbers/10.1215/ijm/1255631807.full)，公开扫描 PDF：[PDF](https://denisevellachemla.eu/Rosser-Schoenfeld-1962.pdf)。

论文第 64 页定义 `x` 为实数，并约定 `x < 2` 时 `psi(x)=0`；`psi(x)` 是不超过 `x` 的正整数 LCM 的自然对数。印刷页 71（PDF 第 8 页）的 **Theorem 12** 精确声明：`psi(x)/x` 在 `x=113` 处取最大值，且对所有实数 `0 < x`，

\[
  \psi(x) < 1.03883\,x.
\]

该界是严格 `<`，域是所有正实数；对正整数 `m` 可写成 `lcm(1,...,m) < exp(1.03883 m)`。本轮直接渲染 PDF 第 8 页核对了定理编号、`x=113` 和 `0<x`，没有把它误读成仅对整数成立。

## 4. Nair--Shorey 的复合连续块定理

原始论文是 S. G. Nair and T. N. Shorey, “Lower bounds for the greatest prime factor of product of consecutive positive integers”, *Journal of Number Theory* 159 (2016), 307--328，DOI [10.1016/j.jnt.2015.07.014](https://doi.org/10.1016/j.jnt.2015.07.014)。ScienceDirect/Elsevier 元数据显示该文为 2016-02 期、开放文章；本环境访问出版社正文/PDF 返回 403，未声称直接读取原始论文页码。

所需的 B699 形式由同作者的后续论文 K. C. Chim, S. G. Nair and T. N. Shorey, “Explicit abc-conjecture and its applications”, *Hardy--Ramanujan Journal* 41 (2018), 143--156，[公开 PDF](https://hrj.episciences.org/5117/pdf)，印刷页 146 的 **Theorem 3.1** 原样复述。该定理的显示句本身没有写出 `k >= 2`；它只写 `x > 100` 且 `x, x+1, ..., x+k-1` 全为合数，然后给出

\[
  P\bigl(x(x+1)\cdots(x+k-1)\bigr)>4.42k,
\]

除非 `k=2` 且 `x` 为 `125, 224, 2400, 4374` 之一，或 `k=3` 且 `x=350`。这里 `P` 表示乘积的最大素因子；结论和例外均为严格原文。`k >= 2` 是该结果的适用语境，且由下述独立复述显式给出；本句不应被误引为 HRJ 定理逐字包含了这个条件。HRJ 第 3 节正在讨论显式 `abc` 的应用，但 Theorem 3.1 的陈述没有 `abc` 假设；它被明确作为 Nair--Shorey 对 Sylvester 定理的无条件强化来使用。该 PDF 将结果归因于 `Nair and Shorey [NaSh16]`，参考文献给出上述 JNT 论文。

独立的后续论文 Codruț Grosu and Corina Grosu, “The irreducibility of some Wronskian Hermite polynomials”, `arXiv:2007.00065v1`， [arXiv PDF](https://arxiv.org/pdf/2007.00065)，印刷页 8 的 **Theorem 18 ([33])** 再次给出同一精确陈述，并显式写出 `k >= 2`、`n > 100`、全合数与五个例外；其参考文献 `[33]` 指向 Nair--Shorey JNT 159 (2016), 307--328。该独立复述确认域和例外；它是交叉核对，不替代原始论文。

另一个后续论文对原始 **Theorem 1** 的常见记号复述为：`k >= 2`、`n > 4k` 时，`P(n(n-1)...(n-k+1)) > 4.42k`，除非 `(n,k)` 落在一个显式有限集合 `T`；还给出 `4.5k` 的细化。该 `n>4k`/`T` 版本与本节使用的“`x>100` 且全合数”版本不要混写；B699 目前应直接采用后者，并把原始 JNT 正文访问状态标成待补直接页码核验。

## 5. 证据边界

- Chan--Norrish Theorem 3、Dusart Proposition 6.8、Rosser--Schoenfeld Theorem 12 均已由公开 PDF 的正文/渲染页直接读取；没有把网页 OCR 的不等号当作最终依据。
- Nair--Shorey 的精确 B699 形式由两篇后续论文（其中一篇为同作者）逐字交叉核对，并由 DOI/期刊元数据追溯到原始论文；原始 ScienceDirect 正文本轮未能直接取回，因此不写原始页码或“已直接视觉验收”。
- 以上来源均是外部数学输入或可复用声明，不提升本运行的 Lean 接受状态，也不构成 B699 全题证明。
