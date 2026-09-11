# B699 · Pro E：R8 外部定理复用深度研究报告

## 结论摘要

本轮实际读取了三份最新附件的顶层 `REPORT.md`、`HANDOFF.md` 及关键证明材料，并对轻量验收链进行了重放。当前接收前沿仍应保持

\[
R8=\{3,4,5,6,7,8,9,14\}.
\]

附件 A 已把 \(i=14\) 的反例绝对有限化到

\[
n<2^{33\,554\,433},
\]

但高度以下尚未闭合；附件 B 对 \(i=3\) 已覆盖 \(\beta\le2^{20}\)、\(d\le32\)、\(e\le7\) 及 \(\beta=mp,\ 1\le m\le7\)，仍留 \(\beta>2^{20},d\ge33,e\ge9\)；附件 C 的最高工程价值仍是显式共同因子 \(C_2\) 直接整除 Padé \(P,Q\)，从而可绕过“精确 \(G\)+运输”的大块形式化。本轮没有发现能直接删除 R8 中一个完整指标的已出版黑箱定理，也没有发现精确反例。

**但找到了一项此前当前仓库采用记录中未见登记、而且可以立即产生新无界覆盖和跨指标归约的外部结果：Carl McTague 的 Theorem Q。** 它不仅能处理“\(i\mid j\)”的子族；与相邻二项式递推结合后，可以从任意小除数 \(q\mid j\) 向目标指标 \(i\) 上推，得到下面的统一消费者：

> **McTague–lift 消费者。**  
> 设
> \[
> 1\le i<j\le\lfloor n/2\rfloor,\qquad 2\le q\le i,\qquad q\mid j.
> \]
> 若存在素数 \(p>i\) 满足
> \[
> p\equiv1\pmod q,\qquad \alpha_p(n)\le q,
> \]
> 其中 \(\alpha_p(n)\) 是 \(n\) 的 \(p\) 进制数字和，则
> \[
> p\mid\binom ni,\qquad p\mid\binom nj.
> \]
> 因而该输入满足 B699。

这是一个**无条件充分条件**，不进入 `noCommon`，完全保留素数 \(p\) 和其真实赋值；也没有删除原题的 \(p=i\) 边界，只是这一新子族恰好产生更强的 \(p>i\) 见证。McTague 的原文 Theorem Q 在 \(n>q>0\)、\(p\equiv1\pmod q\) 下精确给出所有 \(\binom n{qk}\) 的 gcd 的 \(p\)-进赋值；作者还在第 2 页明确说明 \(p\equiv1\pmod q\) 可以弱化。citeturn26view0turn26view1turn31view0

最醒目的具体新覆盖是：

\[
\boxed{\ j\ {\rm 偶},\quad n=p^a+p^b,\quad p>i\ {\rm 为奇素数}
       \Longrightarrow
       p\mid\binom ni,\binom nj.\ }
\]

这里 \(i\) 可以是 **R8 中任意一个指标**。所以同一条外部定理一次给出了横跨 \(i=3,4,5,6,7,8,9,14\) 的无界二幂和式族；\(a,b,p,n,j\) 均没有预设上界。这不是固定辅助参数后的有限性。

更强地，利用 McTague 第 2 页的弱化 remark 和其 Lemma 3，可以把 \(p\equiv1\pmod q\) 替换成“\(n\) 的最短 \(p\)-幂展开中所有出现的 \(p^a\) 在模 \(q\) 下同余”。这严格扩张上述覆盖，尤其对 \(q=3,4,6,8\)，会自然出现“非零数字只占同一指数奇偶类”的新子族。citeturn26view1

相反，本轮核对后可以比较有把握地排除几条看似诱人的“直接复用”路线：BFT 已出版的两素数表即使用完整图组合，在当前 R8 的标量增长差距上仍明显不够；BEG 的非有效定理已经给出了 \(i=4\) 绝对有限性，并非新成果，而其有效版若想真正数值化，至少必须把其中的有效常数展开到足以给出 \(\kappa_1>17/24\)，论文当前定理陈述并没有提供这个可直接消费的数值；2026 年最新的一个 Lean 化 binomial-gcd 结果则改变了顶参数，量词形状与 B699 不符。citeturn26view2turn26view4turn25view0turn32academia1

## 基线与本轮验收

三份附件的状态彼此一致，没有发现需要降格的直接冲突。

| 路线 | 最新附件中可依赖的前沿 | 本轮实际核对 |
|---|---|---|
| A / \(i=14\) | noCommon \(\Rightarrow n<2^{33\,554\,433}\)；33 个 content-\(G\) 家族、45 cuts、完整幂标量接口；未闭合高度内区域 | 实际运行 `code/check_manifest.py`，得到 `PASS_SHA256_MANIFEST 256 files; no self-reference`；未重跑其约 829 MiB 缓存重建，因为新外部定理判断不依赖该枚举 |
| B / \(i=3\) | \(\beta=mp,\ m\le7\) 全闭；\(d\le32\)、\(e\le7\) 全闭；剩余 \(\beta>2^{20},d\ge33,e\ge9\) | `verify_manifest.py`：33 个静态文件 PASS；`reproduce.py` 实际重放 10 条命令、9 个数学输出，2.63 s，PASS |
| C / 统一核 | \(C_2\mid P,Q\) 的运输无关接口；六族更小 \(m_0\)；F3/F9 无界行族 | 五个标准检查脚本均分别实际通过；其中 Padé 最小接口检查 2923 个桥接行、609,501 个 prime-power records，约 5.30 s；consumer 检查含 32 个端点行及 19,481 个有界回归 triple |

C 的重放值得特别记录：一次总包装命令受到本会话 45 秒执行上限截断，但前三步已分别返回 `0`；随后剩余 `verify_pade_divisor_interface.py` 与 `verify_consumers.py` 单独运行均 PASS。因此这里没有把“被外围 timeout 中断的整条命令”伪装成一条成功命令。

当前仓库的正式 `Math/B699/CofactorCriterion.lean` 确实已经以 mathlib 的 Kummer/choose factorization 为基础证明了 `prime_dvd_choose_of_mod_lt`，并在最终 cofactor consumer 中产生具体公共素数；这意味着 McTague 路线所需的“进位 \(\Rightarrow p\mid\binom nk\)”底层基础与现有工程方向相容。当前这个正式模块自身仍只证明 cofactor 条件族，不宣称全部 B699。fileciteturn13file0

较早的项目审计还记录过精确 Lucas digit-domination 接口以及“同一素数对两个指标均发生 digit failure 即得公共素数”的接口；因此 McTague 的形式化不需要从零建立整个数位理论。不过这部分在本轮只定位到历史审计记录，我没有把它冒称为当前已编译正式模块。fileciteturn9file0 当前仓库入口同样明确区分了纸面批次、精确证书和真正 Lean 验收。fileciteturn4file0

本会话环境没有可用的 `lean`/`lake` 可执行程序，所以**本轮没有任何新的 Lean 编译验收**；以下 McTague 结果的等级均为“出版原文核对＋本轮完整纸面参数映射”，不是 Lean theorem。

## 可立即采用

### McTague Theorem Q 产生统一的跨指标消费者

原始来源：

**Carl McTague**, *On the Greatest Common Divisor of Binomial Coefficients \(\binom nq,\binom n{2q},\binom n{3q},\dots\)*。当前 arXiv 版本为 **v5，2018-07-25**；期刊版本为 *American Mathematical Monthly* 124(4), 353–356 (2017)。arXiv 记录明确说 v5 修正了第 2 页第一个 remark 中的 typo，因此应固定 v5，而不是早期版本。citeturn31view0

原文入口：

`https://arxiv.org/abs/1510.06696`

`https://arxiv.org/pdf/1510.06696`

**原文 Theorem Q，第 1 页。** 对整数 \(n>q>0\) 和素数 \(p\equiv1\pmod q\)，

\[
v_p\!\left(
\gcd_{0<k<n/q}\binom n{qk}
\right)
=
\begin{cases}
1,&\alpha_p(n)\le q,\\
0,&\alpha_p(n)>q.
\end{cases}
\]

原文同时定义 \(\alpha_p(n)\) 为 \(n\) 的 \(p\) 进制数字和，也等价于把 \(n\) 写成 \(p\) 的幂之和所需的最少项数。citeturn26view0

现在做 B699 的参数代换。取任意合法

\[
1\le i<j\le n/2
\]

并另取一个整数 \(q\) 满足

\[
2\le q\le i,\qquad q\mid j.
\]

写 \(j=qk\)。由于 \(j<n\)，有 \(0<k<n/q\)；同时 \(q<n\)，所以 McTague 的 gcd 集合既含 \(k=1\) 对应的 \(\binom nq\)，也含 \(k=j/q\) 对应的 \(\binom nj\)。若

\[
p>i,\qquad p\equiv1\pmod q,\qquad \alpha_p(n)\le q,
\]

Theorem Q 立即给

\[
p\mid\binom nq,\qquad p\mid\binom nj.
\]

再连续使用

\[
t\binom nt=(n-t+1)\binom n{t-1},
\qquad t=q+1,\ldots,i.
\]

因为 \(t\le i<p\)，所以 \(p\nmid t\)。由归纳得到

\[
p\mid\binom ni.
\]

最终

\[
p\mid\gcd\!\left(\binom ni,\binom nj\right),\qquad p>i,
\]

正是原题要求。

因此得到本轮最值得直接接入的统一定理：

\[
\boxed{
\begin{gathered}
1\le i<j\le n/2,\quad
2\le q\le i,\quad q\mid j,\\
p\ {\rm prime},\quad p>i,\quad p\equiv1\pmod q,\quad
\alpha_p(n)\le q
\\[2mm]
\Longrightarrow
p\mid \binom ni\ \&\ p\mid\binom nj .
\end{gathered}}
\tag{M-Lift}
\]

这比单纯把 McTague 写成“\(i\mid j\)”明显更强，因为 **\(q\) 可以严格小于目标指标 \(i\)**。

它还立即产生一个适合 noCommon 分支的反向筛选：

\[
\boxed{
\text{若 }(n,i,j)\text{ 是反例，则对每个 }q\mid j,\ 2\le q\le i,
\text{ 不存在这样的 }p>i.}
\]

这条必要条件完全不使用 \(D=V\)，所以没有触碰用户特别强调的边界。

### 一个横跨整个 R8 的显式无界族

令 \(j\) 为偶数，取 \(q=2\)。对任意奇素数 \(p>i\)，自动有 \(p\equiv1\pmod2\)。

若

\[
n=p^a+p^b
\]

（允许 \(a=b\)），因为 \(p\ge5\)，其展开的 \(p\)-进制数字和满足

\[
\alpha_p(n)\le2.
\]

于是 (M-Lift) 给

\[
p\mid\binom ni,\qquad p\mid\binom nj.
\]

故：

\[
\boxed{
\begin{array}{c}
i\in\{3,4,5,6,7,8,9,14\},\quad
i<j\le n/2,\quad 2\mid j,\\
n=p^a+p^b,\quad p>i\text{ 为奇素数}
\end{array}
\Longrightarrow\text{B699 成立。}}
\tag{TwoPower}
\]

这里 \(p,a,b,j\) 都可以无界，因此这是真正的**全参数无界子族**，不是“固定 \(p\)”或“固定指数”之后的有限性。它也一次覆盖所有 R8 指标，而不是单独给某一个 \(i\) 写八份消费者。McTague 自身的 \(q=2\) 特例正是其第 1 页所述偶指标 gcd 现象的推广。citeturn26view0

更一般地：

\[
n=p^{a_1}+\cdots+p^{a_r},\quad r\le q,\quad
q\mid j,\quad p>i,\quad p\equiv1\pmod q
\]

即可闭合目标 \(i\)，只要 \(q\le i\)。

这给 A/B/D 的扫描器一个很便宜的预筛接口：先看 \(j\) 的小除数，再看少量候选素数下的 digit sum；命中后不需要 Padé、BFT、CRT 或 noCommon 推导。

### 作者 remark 给出的严格加强

McTague 第 2 页特别指出，\(p\equiv1\pmod q\) 是为了简化表述，并非必要；例如可以假设 \(p>q\)、\((p,q)=1\)，且在 \(n\) 的最短展开

\[
n=p^{a_1}+\cdots+p^{a_r},
\qquad r=\alpha_p(n)
\]

中有

\[
p^{a_1}\equiv\cdots\equiv p^{a_r}\pmod q.
\]

作者还明确说明如何修改证明最后一步。紧接着的 Lemma 3 是 Kummer 的精确“无进位 iff 幂指数序列为子序列”版本。citeturn26view1

对 B699 实际只需要“\(p\) 至少整除一次”，因此可以给出比原文 exact-valuation 结论更短的自包含证明。

设所有 \(p^{a_t}\equiv c\pmod q\)。因为 \(p>q\) 且互素，\(c\) 在模 \(q\) 下可逆。若某个

\[
0<m<n,\qquad q\mid m
\]

满足 \(p\nmid\binom nm\)，McTague Lemma 3 说明 \(m\) 的展开由上述 \(r\) 个幂中的一个非空真子多重集组成。若该子多重集有 \(s\) 项，则

\[
0\equiv m\equiv sc\pmod q,
\]

故 \(q\mid s\)。但

\[
1\le s\le r\le q.
\]

于是只能 \(s=q\)。这又强迫 \(r=q\) 且选用了全部 \(r\) 项，从而 \(m=n\)，与 \(m<n\) 矛盾。因此

\[
p\mid\binom n{qk}
\]

对每个 \(0<qk<n\) 成立。

所以 (M-Lift) 中的

\[
p\equiv1\pmod q
\]

可以替换为

\[
\alpha_p(n)\le q
\quad\text{且所有出现的 }p^a\text{ 在模 }q\text{ 下同余}.
\tag{UniformResidue}
\]

这在 \(p\not\equiv1\pmod q\) 时给出严格新增覆盖。例如 \(q=3\) 且 \(p\equiv2\pmod3\) 时，条件等价于非零 \(p\)-进位数字只出现在同一指数奇偶类；\(q=4,6,8\) 也有类似的短周期结构。

**证据等级：** Theorem Q、Lemma 3 与弱化 remark 为已发表论文输入；(M-Lift) 和 (UniformResidue) 到 B699 的消费者是本轮完整纸面推导；未 Lean 化。

## 补明确桥梁后可用

### \(i=4\) 的 BEG 有效化：桥梁现在可以精确定位

附件中的旧 \(i=4\) 工作已经正确采用了 Bugeaud–Evertse–Győry 的非有效 Theorem 2.1(i)，所以不能把同一论文重新登记成新成果。

来源：

**Yann Bugeaud, Jan-Hendrik Evertse, Kálmán Győry**, *S-parts of values of univariate polynomials, binary forms and decomposable forms at integral points*, arXiv:1708.08290。当前检索到的 PDF 第 3 页给出 Theorems 2.1 与 2.2。citeturn26view2turn31view1

原文：

`https://arxiv.org/abs/1708.08290`

`https://arxiv.org/pdf/1708.08290`

Theorem 2.1(i) 对无重根的 \(f\in\mathbb Z[X]\)、有限非空 \(S\) 以及每个 \(\varepsilon>0\) 给

\[
[f(x)]_S\ll_{f,S,\varepsilon}|f(x)|^{1/\deg f+\varepsilon},
\]

但隐常数非有效。citeturn26view2

附件现有代换是

\[
f(X)=X(X-1)(X-2)(X-3),\qquad S=\{2,3\},
\qquad\varepsilon=\frac1{48}.
\]

于是

\[
24U_4(n)=[f(n)]_S
\ll n^{13/12}.
\]

另一方面附件的 noCommon 必要条件已经给出

\[
U_4^6>\frac{n^7}{256\cdot729},
\]

即

\[
U_4\gg n^{7/6}.
\]

因为 \(7/6>13/12\)，得到 \(i=4\) 的绝对但非有效有限性。这一部分没有新缺口。

真正值得研究的是 Theorem 2.2。原文给有效型估计

\[
[f(x)]_S\le\kappa_2|f(x)|^{1-\kappa_1},
\]

其中

\[
\kappa_1=
\left(
c_1^s
\bigl(P(\log p_1)\cdots(\log p_s)\bigr)^d
\right)^{-1},
\]

而 \(c_1,\kappa_2\) 都只是声明为“effectively computable”，依赖固定的 \(f\)。citeturn26view2turn28view3 BEG 后面还说明，这些常数原则上可以通过 Győry–Yu 的显式版本写出，但本文本身没有给出可直接代数代入的最终 \(c_1,\kappa_2\)。citeturn28view0turn29view0

这里可以把“是否值得做”的门槛精确算出来。由于 \(|f(n)|\asymp n^4\)，Theorem 2.2 的上界增长约为

\[
n^{4(1-\kappa_1)}.
\]

要与已有 \(n^{7/6}\) 下界产生最终矛盾，至少必须

\[
4(1-\kappa_1)<\frac76,
\]

也就是

\[
\boxed{\kappa_1>\frac{17}{24}\approx0.70833.}
\tag{BEG-threshold}
\]

因此下一步不是笼统地“把 BEG 有效常数算出来”，而是：

\[
\boxed{\text{先实例化 Győry–Yu 常数并检查 }\kappa_1>17/24.}
\]

若这一步失败，无论 \(\kappa_2\) 多漂亮，这条路线都不会通过增长指数闭合 \(i=4\)；若成功，再把 \(\kappa_2\) 数值化即可解出一个绝对 \(n\) 界。

这是一个明确、可判死活的桥梁，但**还不能分类为可直接采用**。BEG 自己明确说明其有效证明最终依赖 Matveev 的复对数形式估计和 Yu 的 \(p\)-adic 对数估计。citeturn28view0turn28view1 因而把整条显式常数链移植进 Lean 的成本也显著高于 McTague。

### C 的 \(C_2\) 接口应与任何后续 Padé 外部定理组合，而不是形式化精确 \(G\)

这不是新的出版定理，但它是本轮研究后最明确的证明压缩建议。

附件 C 已证明，对所有正参数 \(e,d,f,m\)，显式定义的

\[
N=C_2(em,dm,fm)
\]

直接整除全部相关 Padé \(Q\) 系数，并由 Padé 恒等式转给 \(P\)。本轮实际重放的运输无关检查器覆盖 2923 个有限桥接行、609,501 个 prime-power records 并 PASS。

因此后续若 A/Lean 仍消费 BFT 的 Padé 内容下界，接口应该是

\[
C_2\mid P,\quad C_2\mid Q,\quad \log C_2>gm,
\]

而不是

\[
G=\gcd(\text{all coefficients})
\]

的精确求值。

这会直接删掉运输表、精确 gcd 等式、排列对称性等一批形式化前置；出版依赖则仍清楚停留在 BFT 的尾部增长输入。BFT 原文自己也把 Section 5 描述为对 Padé 系数 gcd 的非阿基米德估计，并在 (2.7)、(2.8) 中显式引入这一内容量。citeturn25view0

## 不适用及原因

### BFT 的现成表不足以直接闭合任何新的 R8 指标

来源是 Bennett–Filaseta–Trifonov, *On the factorization of consecutive integers*：

`https://people.math.sc.edu/filaseta/papers/BFTpaper0207.pdf`

作者稿首页给作者为 M. A. Bennett、M. Filaseta、O. Trifonov。Theorem 1.1 在 PDF 第 2 页；Theorem 2.1 在第 4 页；Theorem 2.2 及 Corollary 2.3 在第 6–7 页。citeturn25view0turn26view3turn26view4turn26view5

附件 A 固定使用的是 2007-02-26 作者稿。本轮没有核实到可改变这些表项的独立 erratum，因此“不存在勘误”不作为额外假设；只按这个固定作者 PDF 的 statement 使用。

Theorem 1.1 对 \(k=5,7\) 的分解

\[
\binom nk=UV
\]

证明除六个显式例外外 \(V>U\)。citeturn26view3 这只给粗略

\[
U<\sqrt{\binom nk}\asymp n^{k/2}.
\]

而现有 noCommon 路线对 \(i=5,7\) 已分别需要大约 \(U\gg n^{7/5}\) 与 \(U\gg n^2\)。上界指数 \(5/2,7/2\) 都更大，完全不产生矛盾。因此 Theorem 1.1 不能直接闭合 \(i=5\) 或 \(i=7\)。

更精细的 Theorem 2.1 给出了近邻两个纯素数幂部分的余因子指数 \(\lambda(p,q)\)，例如

\[
\lambda(2,3)=0.285,\quad
\lambda(2,5)=0.258,\quad
\lambda(3,5)=0.216,
\]

以及 \(2,3,5,7,11,13\) 间的其他表值。citeturn26view4

把每个小素数的剩余余因子指数记作 \(z_p\)，每条 BFT 边只保证

\[
\max(z_p,z_q)\ge\lambda(p,q).
\]

对每个 R8 的小素数图最小化 \(\sum z_p\)，本轮按有限方向分配重新计算得到：

| 目标 \(i\) | 小素数数目 | 当前标量路线需要的 \(\sum z_p\) 至少超过 | BFT Thm. 2.1 最低保证 | Cor. 2.3 较强指数的最低保证 |
|---:|---:|---:|---:|---:|
| 4 | 2 | \(5/6\approx0.8333\) | 0.285 | 0.2921 |
| 5 | 2 | 0.6000 | 0.285 | 0.2921 |
| 6 | 3 | \(9/7\approx1.2857\) | 0.501 | 0.5159 |
| 7 | 3 | 1.0000 | 0.501 | 0.5159 |
| 8 | 4 | 1.6250 | 0.550 | 0.6093 |
| 9 | 4 | 1.3000 | 0.550 | 0.6093 |
| 14 | 6 | \(23/14\approx1.6429\) | 0.913 | 1.012 |

Corollary 2.3 的较强表值确实是原文给出的 \(0.2921,0.2679,\dots\)，但对应阈值 \(x_0(D)\) 只声明为 effectively computable，而没有在 corollary statement 中实例化成数字。citeturn25view0

所以结论不是“BFT 对 R8 完全无用”，而是一个更精确的否定：

\[
\boxed{\text{仅把已发表两素数表压成小素数总余因子指数，不能新闭合任何 R8 项。}}
\]

特别是 \(i=14\) 需要从 \(0.913\) 或 \(1.012\) 提升到 \(>1.642857\)，差距很大。这解释了为什么附件 A 的 33 个 content-\(G\) 家族、45 条非对称 cuts 和碰撞分支是真正增加信息，而不是可以被 BFT 表格的一行引用取代。

这也意味着：**不要把 Corollary 2.3 重新派给 A 当作“可能降低 \(2^{33\,554\,433}\) 高度”的新输入。** A 已经深入到比这个粗总量更强的非对称 Padé/内容层。

### 固定 \(S\) 的 S-unit / Thue–Mahler 有限性不能解决 B 的无界 \(m\)

B 当前已经做到：若

\[
\beta=mp,\quad p\text{ prime},
\]

则反例必须

\[
p<15552m^5,\qquad
n<20155392m^9+1,
\]

但 \(m\) 仍无界。

BEG 一类 \(S\)-part 定理从定义上固定有限素数集合 \(S\)；其有效常数也依赖 \(S\)。citeturn26view2turn31view1 对 B 的 \(\beta=p^2\) 或更一般“部分共享幂”分支，相关素数 \(p\) 本身在输入间变化。因此一个只对每个固定 \(p\) 说“解有限”的 Thue–Mahler/S-unit 定理，并没有消去 B 的 \(\forall p\) 量词。

所以对于 B，外部丢番图定理的最低合格标准应当是：

\[
\boxed{\text{界必须显式控制随 }p\text{ 变化的依赖，最终给 }p\text{ 或 }m\text{ 的统一界。}}
\]

没有这种 uniformity 的 theorem 不应登记成“i3 绝对有限性”。

### 最新 Lean 化 binomial-gcd 结果存在量词错位

2026 年 Guo–Qiu–Cao–Feng–Gao 的结果研究的是

\[
D(k)=\gcd_{2\le q\le k+1}\binom{qk}{k},
\]

并且已有 Lean 形式化；但这里随着 \(q\) 改变，**二项式的顶部 \(qk\) 也改变**。B699 要比较的是同一个固定 \(n\) 的

\[
\binom ni,\quad\binom nj.
\]

所以没有一个保持顶部 \(n\) 的变量代换可以把该 theorem 直接送入 B699；这是量词/对象障碍，不是缺一条简单桥梁。citeturn32academia1

2026 年 Chai Wah Wu 的工作从摘要看更接近，因为它研究同一顶部 \(mn\) 下的 \(\binom{mn}{mk}\) gcd；但本轮没有取得并逐条核实其“when \(n\) satisfies certain conditions”的完整 theorem statement，所以按照本任务的接收标准，**不采用、不推断覆盖**。目前仅能把它列为 McTague 之后最接近的待核实方向。citeturn32academia6

## Lean 与分工接口

最应该先交给 Lean 执行者的不是整个 McTague exact gcd theorem，而是 B699 所需的弱化消费者。这样不需要形式化

\[
v_p(\gcd(\cdots))=1
\]

的精确等式，只需证明“每个相关项至少有一次 \(p\)”。

建议 statement 形状为：

```lean
/-- McTague + upward binomial recurrence, B699-oriented form. -/
theorem commonPrime_of_mctagueLift
    {n i j q p : ℕ}
    (hi : 1 ≤ i)
    (hij : i < j)
    (hj : j ≤ n / 2)
    (hq2 : 2 ≤ q)
    (hqi : q ≤ i)
    (hqj : q ∣ j)
    (hp : p.Prime)
    (hip : i < p)
    (hpq : p % q = 1)
    (hdigit : digitSum p n ≤ q) :
    p ∣ n.choose i ∧ p ∣ n.choose j
```

逻辑拆成三块即可：

\[
\text{McTague multiple-index lemma}
\Rightarrow
p\mid\binom nq,\binom nj
\]

加上

\[
p>i
\Rightarrow
p\nmid(q+1)\cdots i
\]

再逐次消费

\[
t\binom nt=(n-t+1)\binom n{t-1}.
\]

当前正式模块已经证明了基于 Kummer factorization 的单进位 divisibility lemma，因此这里与现有 `CofactorCriterion.lean` 的底层依赖一致。fileciteturn13file0

第二阶段再形式化更强的 `UniformResidue` 版本。Lean 中最好不要一开始就引入乘法阶和复杂群论；最小接口可直接假设 expanded base-\(p\) digit multiset 的各幂模 \(q\) 相同，然后用“无 carry \(\Rightarrow\) 子多重集”的 lemma 和模 \(q\) 的项数矛盾结束。历史审计已经记录过 exact Lucas digit domination，所以还可以评估复用那一层，而不是重新搭整个数位库。fileciteturn9file0

对 **A / \(i=14\)**，建议把 McTague-lift 作为高度内搜索的**早期拒绝器**，而不要当成新的高度 theorem。接口是：枚举到候选 \((n,j)\) 后，先遍历 \(q\mid j,\ 2\le q\le14\)，寻找 \(p>14\) 的 digit-sum witness；命中就整行拒绝。由于本轮没有在 A 的 228 万块上实际测量命中率，不应预报证书能缩短多少。A 的数学主线仍应从现有完整幂标量接口和 CRT/指数块下降继续。

对 **B / \(i=3\)**，可立即加入 noCommon 必要条件

\[
3\mid j,\ p>3,\ p\equiv1\pmod3
\Longrightarrow
\alpha_p(n)>3.
\]

使用 residue 版时，对 \(p\equiv2\pmod3\) 还得到：若 \(\alpha_p(n)\le3\)，则其非零 base-\(p\) 位不能全部位于同一指数奇偶类。它不会单独消去 \(\beta=p^2\) 的剩余参数，但可以作为新结构筛选；真正的 B 主攻仍应是附件列出的

\[
d=e=p,\quad f=1,\quad
n-1=ph,\quad
h\mid3(gp^2-1),\quad
ph-1\mid6(gp-h)(gp-2h)
\]

这一无界分支。

对 **D / 跨指标执行者**，最值得形式化的是更一般的 fan-out：

\[
\boxed{
q\mid j,\ q\le r,\ p>r,\ \text{McTague}(n,q,p)
\Longrightarrow
p\mid\binom nr,\binom nj.}
\]

它一次性产生多个指标。例如 \(q=5\) 且 \(p\equiv1\pmod5\) 时，最小可能的此类素数已大于 9，因此同一个见证可沿递推同时送到 \(i=5,6,7,8,9\)；\(q=7\) 的合格见证同样可同时供应 \(7,8,9\)。这比为 R8 八个指标分别维护重复的 digit proof 更利于验收。

现有已经明确的

\[
i=8\Longrightarrow i=9
\]

转移仍应单独 Lean 化：素数 \(p\ge8\) 实际有 \(p\ge11\)，故 \(p\nmid9\)，由

\[
9\binom n9=(n-8)\binom n8
\]

立即得到 \(p\mid\binom n9\)。它与 McTague-lift 是同一个“见证素数严格高于被除分母”的模式，可以共用一个通用 `choose_dvd_upward` lemma。

对 **Padé Lean 执行者**，优先级应当是附件 C 的

```text
explicit C2
→ C2 ∣ every Q coefficient
→ Padé identity
→ C2 ∣ every P coefficient
```

而不是 transport → exact \(G\) → permutation invariance → gcd extraction。后者数学上正确，但不是当前验收成本最低的接口。

## 开放缺口与来源索引

本轮最重要的新结论是 **McTague–lift 与其 residue 扩张确实增加了 R8 的无界覆盖，并首次给出一个很短的跨指标 fan-out 外部 theorem consumer；但它没有删除 R8 中任何完整指标。** 它要求 \(j\) 有一个合适的小除数 \(q\)，并要求 \(n\) 对某个 \(p>i\) 有很小的 base-\(p\) digit sum/统一幂剩余。这些条件对任意 B699 输入都不自动成立。

因此截至本轮，最接近“整项闭合”的外部 theorem 路线仍不是 McTague，而是两类更困难任务：\(i=4\) 把 BEG/Győry–Yu 的有效常数真正实例化并首先过 \(\kappa_1>17/24\) 的硬门槛；或者给 A 的 \(i=14\) 找到比当前 content-\(G\) cuts 更强的、可以显著压低 \(2^{33\,554\,433}\) 的显式近素数幂估计。目前核对到的 BFT 已发表表离这个门槛太远。citeturn26view2turn26view4turn28view0

B 的核心无界问题也没有被标准固定-\(S\) 的 S-unit/Thue–Mahler theorem 消掉：其剩余素数或规范余因子本身变化，必须找到对这些变化参数真正 uniform 的定理，或者继续从现有两个完整整除式内部消元。

主要原文固定如下：

| 来源 | 固定版本与定位 | 本轮结论 |
|---|---|---|
| Carl McTague | arXiv:1510.06696v5；Theorem Q p.1；weakening remark + Lemma 3 p.2；v5 2018-07-25 | **新增，可立即采用**；得到 McTague-lift、TwoPower 和 residue 扩张 citeturn31view0turn26view0turn26view1 |
| Bennett–Filaseta–Trifonov | `BFTpaper0207.pdf`；Thm.1.1 p.2；Thm.2.1 p.4；Thm.2.2/Cor.2.3 p.6–7 | 已有路线；本轮给出 R8 聚合指数 no-go，不重复登记 citeturn26view3turn26view4turn26view5 |
| Bugeaud–Evertse–Győry | arXiv:1708.08290 当前 PDF；Thm.2.1/2.2 p.3 | i4 非有效有限性已采用；有效化的最低新桥梁是 \(\kappa_1>17/24\)＋显式 \(\kappa_2\) citeturn26view2turn28view0 |
| Guo–Qiu–Cao–Feng–Gao 2026 | gcd \(\binom{qk}{k}\)，Lean 化 | **不适用**：顶部随 \(q\) 变化，量词错位 citeturn32academia1 |
| Chai Wah Wu 2026 | gcd \(\binom{mn}{mk}\) | 摘要结构接近，但本轮未核实全文 theorem 假设，故**不采用** citeturn32academia6 |

三份本轮实际接收的原证据包仍可直接下载：

[下载 A：i14 effective-height evidence](sandbox:/mnt/data/B699-ProA-i14-effective-height-evidence-20260911(1).zip)

[下载 B：i3 divisor-split / prime-cofactor evidence](sandbox:/mnt/data/B699-R8-ProB-divisor-split-prime-cofactor-evidence(2).zip)

[下载 C：Padé / unified-kernel resumed results](sandbox:/mnt/data/B699-ProC-R2-resumed-results-20260911(1)(1).zip)

受本轮最终化阶段限制，**没有另行生成一个声称已包含上述新 McTague 推导的 ZIP 或 Markdown 文件**；因此不能把不存在的新附件冒充交付物。本文即为本轮新增研究报告正文，新增结论的证据等级止于“原文核对＋参数映射＋完整纸面推导＋附件轻量重放”，明确低于 Lean 内核验收。