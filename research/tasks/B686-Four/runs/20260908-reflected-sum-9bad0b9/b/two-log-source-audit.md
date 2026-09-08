# B9-3d 源审：固定次数两对数及近 1 加强的适用边界

核读时间：2026-09-07 22:08–22:24 UTC。只把已打开并核对原文公式的结果作为输入。PDF 数学排版已用页面截图核对，特别是 Matveev 的系数参数和 Gouillon 的最小值、分母与额外条件。下述参数代入和量级障碍为本执行者推导，不是原作者对 B686 的结论。

## 1. Matveev：可用的固定次数输入

E. M. Matveev, *An explicit lower bound for a homogeneous rational linear form in the logarithms of algebraic numbers. II*, Izvestiya: Mathematics 64:6 (2000), 1217–1269，DOI `10.1070/IM2000v064n06ABEH000314`。

- [出版社条目](https://www.mathnet.ru/eng/im314)
- [原文英文 PDF](https://www.mathnet.ru/php/getFT.phtml?jrnid=im&option_lang=eng&paperid=314&what=fullteng)

使用原文 Corollary 2.3，印刷页 1219：非零线性式、`𝒜_j≥max(Dh(α_j),|log α_j|,0.16)` 时，负指数为 `C₁(n)D²(∏𝒜_j) log(eD) log(eB)`；允许用 `B*=max|b_j|`。其 `C₁(n)` 的第二个可选上界为 `2^(6n+20)`。原文 Theorem 2.1 的独立条件不应误加到这个推论上，也不能把别处的乘积减 1 版本常数挪来。

本题 `n=2,D≤2,B*=k` 的逐项检查见 [`two-log-transfer.md`](two-log-transfer.md)，得 `log(1/δ)<2^38(1+log k)log(7Ak)`。若使用原文 (1.3) 的归一化 `B`，把 `β` 放最后会直接包含 `k𝒜_β/𝒜_β=k`；不能取 `B=1`。

## 2. Gouillon：一般两对数改善常数，近 1 推论仍有量级障碍

Nicolas Gouillon, *Explicit lower bounds for linear forms in two logarithms*, Journal de Théorie des Nombres de Bordeaux 18:1 (2006), 125–146。

- [原文 PDF，Numdam](https://www.numdam.org/item/JTNB_2006__18_1_125_0.pdf)

核读 §2，尤其印刷页 128（PDF 页索引 4）的 Corollary 2.3、2.4。设 `x_i=log A_i`，取 `α₁=β,α₂=4,b₁=k,b₂=1`，原文的系数参数是

\[
b=\frac{k}{D x_2}+\frac1{D x_1}.
\]

Corollary 2.3 的指数线性依赖 `h x₁x₂`，而 `h≥log b+3.1` 并有常数下限；自然代入仍给 `O(log k log(Ak))`。

Corollary 2.4 的有关参数为

\[
E=1+\min\{D x_1/\log\beta,D x_2/\log4\},
\quad
T=8550D^4 h x_1x_2\frac{\log E^*}{(\log E)^3},
\]

它给 `log|Λ|≥−T`，要求 `E≥2` 及 `E≤min(A₁^(D/2),A₂^(D/3))`，还有原文对 `h,E*` 的限制。下面只用其中的必要下界：

\[
\log E^*\ge\frac{\log E}{D},\quad
h\ge\log b+\log E-\log\log E-2.27,
\quad h\ge265\log E/D.
\tag{G}
\]

### 自行推导：调大高度参数也不能使此推论的 T 变为 o(log²k)

令 `Z=x₂≥log4`、`H=x₁≥h(β)≥log(k/4)`、`c=2/log4`。`D≤2` 给

\[
E\le1+cZ,\qquad b\ge k/(2Z).
\]

若 `Z≤√k`，利用 `t−log t≥1` (`t>0`) 于 `t=log E`，得到

\[
h\ge\tfrac12\log k-\log2-1.27\ge\tfrac14\log k
\]

对充分大 `k` 成立。于是由 (G)，

\[
T\ge8550D^3 Hh\frac Z{(\log E)^2}
\ge \frac{8550}{c}Hh\gg\log^2 k.
\]

最后一步使用对所有 `u≥0` 都成立的 `log(1+u)≤√u`，其证明为差值导数
`(√u−1)²/[2√u(1+u)]≥0`，在 0 连续取值 0。因此 `Z/(log E)²≥1/c`。

若 `Z>√k`，用 (G) 的另一项得

\[
T\ge8550\cdot265D^2 H\frac Z{\log E}
\ge\frac{8550\cdot265}{\sqrt c}H\sqrt Z
\gg k^{1/4}\log k\gg\log^2 k.
\]

所以**任意满足 Corollary 2.4 全部条件的参数**，其证书指数 `T` 都至少是 `log²k` 量级；即使舍弃未使用的额外限制，此障碍也成立。不能靠优化这个推论获得 `O(log k log log k)`。这不限制真实 `|Λ|`，也不排除其它定理或额外算术条件带来的更好证明。

为避免适用条件的细微错误：自然 `x₂=log4` 时 `E=1+D`，在 `D=2` 会违反上面的额外上界。若要实际应用近 1 推论，可改用 `x₂=3log4`、`x₁=log(7Ak)`，得到 `E=1+3D≤7`，相应额外上界满足。但它仍只是一个固定常数，不能提供随 `k` 增长的近 1 增益。主结果 (1) 使用的是 Matveev，不依赖这项调整。

## 3. Laurent：核对小系数及自由近 1 参数

Michel Laurent, *Linear forms in two logarithms and interpolation determinants II*, Acta Arithmetica 133:4 (2008), 325–348，DOI `10.4064/aa133-4-3`。

- [出版社条目](https://www.impan.pl/en/publishing-house/journals-and-series/acta-arithmetica/all/133/4/82485/linear-forms-in-two-logarithms-and-interpolation-determinants-ii)
- [从该条目实际下载链接打开的原文 PDF](https://www.impan.pl/shop/en/publication/transaction/download/product/82485)

核读 Theorem 1、2 和 Corollary 2（印刷页 326–328）。Corollary 2 使用 `b'=b₁/(D log A₂)+b₂/(D log A₁)` 的对数平方；自然代入给 `O(log²k log(Ak))`，并不比 Matveev 的渐近量级好。Theorem 2 的自由参数 `ρ` 要求 `a_i≥(ρ−1)log α_i+2Dh(α_i)`（正实分支），所以 `a_4` 至少付出 `(ρ−1)log4`。不能只利用 `β→1` 而忽略固定数的成本。

本阶段未声称穷尽 Laurent Theorem 1 所有不对称参数构造；已确认其常用推论并不提供目标加强。不能将以上检查冒充“所有两对数方法的下限”。

## 4. 其它实际查阅与不适用输入

- Yann Bugeaud，[作者公开稿](https://www.math.unistra.fr/~bugeaud/travaux/IrrMeasLFLOG1.pdf)，*Effective irrationality measures for real and p-adic roots of rational numbers close to 1, with an application to parametric families of Thue–Mahler equations*。核读 Theorem 2.1 及 §5：前者要求 `16<b<a<6b/5`，不是固定比值 `4`；后者展示近 1 参数，但没有免去固定 `4` 的障碍。它用于定位 Gouillon 原文，不代替原文作主要定理依据。
- T. Yamada，[arXiv:1906.00419](https://arxiv.org/pdf/1906.00419)，所查特例涉及单位圆代数数与纯虚对数，不是这里的正实 `β,4`。未用于任何结论。
- F. Calegari、V. Dimitrov、Y. Tang，[作者页公开稿](https://math.berkeley.edu/~ytang/ICM.pdf)，*Arithmetic holonomy bounds and effective Diophantine approximation*，核读 §3.2。其一般高阶根有效逼近讨论没有在本阶段提供强于已得界的、适用于此二次候选的输入；未据此宣称目标估计不可能。
- 一次猜测 Laurent PDF 产品编号打开了无关论文；已弃用，最终采用出版社条目的真实下载链接。若某下载地址失败，不将失败解释为定理不存在。

本次源审只确认已列原文及本数据的参数适配。未找到可合法引用的统一 `O(log k log log k)` 或多项式间隙；这是本阶段检索与推导边界，不是完整文献穷尽或新颖性结论。
