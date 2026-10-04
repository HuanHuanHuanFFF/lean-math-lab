# PROOF — 以局部高次素数幂增量替代两条全域 θ 估计

版本：2026-10-05。本文的“已证”指下列纸面推导，不指 Lean。
唯一私有输入及哈希见 INPUT-BINDING.json；公开来源的固定版本、页码和证据缺口见 DEPENDENCIES.md。

## 0. 结论、量词与证据层次

始终使用真正的函数

\[
\theta(t)=\sum_{p\le t,\ p\text{ prime}}\log p,
\qquad
\psi(t)=\sum_{p^k\le t,\ p\text{ prime},\ k\ge1}\log p.
\]

两者均取右连续、包含右端点的版本。定义

\[
 D=4095,\quad r=4096/4095,\quad A=10^8,\quad
 T_0=122568684,\quad B=5\cdot10^{10},\quad E=\psi-\theta.
\]

本轮完成的纯初等引理是

\[
\boxed{E(rx)-E(x)\le x/300000\quad(x\in\mathbb R,\ x\ge A).}\tag{LP}
\]

它无素数分布或黎曼 ζ 函数前提。由它，只需如下较弱的单个供应：

\[
\boxed{|\psi(t)-t|\le(3/25000)t\quad(t\in\mathbb R,\ t\ge A).}\tag{P}
\]

在 §§4–10 中，P 的全部接合推导完成；解析输入明确列在 §4。这些输入在核对的公开论文中是无条件结果，有限高度 RH 由公开的严格计算定理承担，不是采用 RH 猜想。不过，本交付没有其机器证书，没有独立重放筛法或零点计算，也没有完成这些结果的 Lean 形式化。对独立证据闭包仍为部分完成。

若引用 §4 的已发表结果，本文得到无额外数学猜想的实数供应

\[
\forall x\ge A\quad\exists p\in\mathbb N,\quad
 p\text{ prime},\quad x<p\le rx.\tag{RG-A}
\]

再**条件采用**唯一附件中的有限接口

\[
\begin{split}
I_0:\quad\forall y\in\mathbb N,\quad
10^7\le y<T_0\ \Longrightarrow\ 
\exists p\in\mathbb N,\quad
p\text{ prime},\quad y<p,\quad D(p-y)\le y,
\end{split}
\]

即可得到用户的 G。I₀ 的 producer 编译/AX/checker 成功及独立绑定 pending 状态不在本轮升级。

没有证明原始 (U) 或 (L)，也没有声称 P、LP、U/L 与 G 等价。

## 1. 精确接口变化

附件 `PsiTheta.lean` 的旧充分输入为

\[
 |\psi(t)-t|\le t/10000\quad(t\ge10^{12}),
\]

并以全局 \(E(t)\le21\sqrt t\) 控制右端点。新证明不调用这个全局扣除步骤，而直接控制 E 在短区间里的增量；误差容许从 1/10000 放宽到 3/25000，消费者门槛从 10¹² 降到 10⁸。

这不是原 theorem 的直接实例化。新接口和条件消费者写于 `lean/B699UniformGapPaper20261005.lean`，未编译。真实 prime 抽取仍调用附件的 `B699ThetaSupply.exists_prime_of_theta_lt`，最终仍返回 `B699TailGap.Gap 4095 10000000`。

## 2. 一般的局部高次素数幂界

设 x≥1，z=rx，\(K=\lfloor\log z/\log2\rfloor\)。若 K<2，则 z<4，没有指数至少 2 的素数幂，E(z)=E(x)=0，(2.2) 立即成立。以下设 K≥2，此时 z≥4、x=z/r≥4/r>2。
同一个 K 可以同时截断 ψ(x) 与 ψ(z) 的高次幂分解，因为 x≤z。于是

\[
 E(z)-E(x)=\sum_{k=2}^{K}\ \sum_{x<p^k\le z}\log p.\tag{2.1}
\]

这一步是精确有限和恒等式，不是假设不同指数的整数事件互不相交；按 (p,k) 求和正是 ψ−θ 的定义。附件 mathlib 的 `psi_eq_theta_add_sum_theta'` 允许两个端点采用共同的截断 K。

固定 2≤k≤K。满足 \(x<p^k\le z\) 的素数 p 属于实区间

\[
(x^{1/k},z^{1/k}].
\]

其中整数个数不超过 \(z^{1/k}-x^{1/k}+1\)。这由区间整数个数等于相应 floor 差及 \(\lfloor b\rfloor-\lfloor a\rfloor\le b-a+1\) 得到，严格左端已经计入。

Bernoulli 的有限幂不等式给出

\[
\left(1+\frac1{Dk}\right)^k\ge1+\frac1D=r,
\]

故正 k 次根的单调性给出

\[
 z^{1/k}-x^{1/k}\le\frac{x^{1/k}}{Dk}.
\]

而每项 \(\log p\le\log z/k\)。从而

\[
 E(z)-E(x)
 \le\log z\left(\frac1D\sum_{k=2}^{K}\frac{x^{1/k}}{k^2}
                         +\sum_{k=2}^{K}\frac1k\right).
\]

由 x≥1、k≥2 得 \(x^{1/k}\le\sqrt x\)。另外

\[
 \sum_{k=2}^{K}\frac1{k^2}
 \le\sum_{k=2}^{K}\frac1{k(k-1)}=1-\frac1K\le1,
\qquad
 \sum_{k=2}^{K}\frac1k\le\frac{K-1}{2}\le\frac{\log z}{2\log2}.
\]

因此取得对整个实数域有效的显式界

\[
\boxed{E(rx)-E(x)\le
\frac{\sqrt x\log(rx)}D+\frac{\log^2(rx)}{2\log2}.}\tag{2.2}
\]

除使用 θ、ψ 的定义外，没有使用任何素数存在性或素数计数估计。

## 3. 从一般界到 LP；再到严格正 θ 增量

令 \(L(x)=\log(rx)\)。在 x≥A，L(x)>2。直接求导：

\[
 \left(\frac{L(x)}{\sqrt x}\right)'=
 \frac{1-L(x)/2}{x^{3/2}}<0,
\qquad
 \left(\frac{L(x)^2}{x}\right)'=
 \frac{L(x)(2-L(x))}{x^2}<0.
\]

所以 (2.2) 的右端除以 x 后递减。只需一次端点常数计算，而不是扫描 x。

有 \(\sqrt A=10000\)、\(\log(rA)<19\)、\(\log2>2/3\)。这些对数界通过有理 Taylor 包围验证，见 CONSTANTS.json。于是

\[
 \frac{E(rx)-E(x)}x
 \le \frac{19}{4095\cdot10000}+\frac{3\cdot19^2}{4\cdot10^8}
 =\frac{1038977}{327600000000}<\frac1{300000}.
\]

这证明了 LP，包括 x=A。

现在令 \(\varepsilon_\psi=3/25000\)，假设 P 在 x 和 z=rx 成立。则

\[
\begin{aligned}
 \theta(z)-\theta(x)
 &=\psi(z)-\psi(x)-\bigl(E(z)-E(x)\bigr)\\
 &\ge z-x-\varepsilon_\psi(z+x)-x/300000\\
 &=\left[\frac1{4095}-\frac3{25000}
                   \left(2+\frac1{4095}\right)-\frac1{300000}\right]x\\
 &=\boxed{\frac{49}{58500000}x}>0.\tag{3.1}
\end{aligned}
\]

若 (x,z] 内没有素数，则两个 θ 有相同的求和集合，与 (3.1) 矛盾。因此存在真素数 x<p≤z。特别是左端点不能取 p=x；右端点允许相等。

更小但未单独供应的接口是 \(\psi(rx)-\psi(x)>x/300000\)：它与 LP 同样充分。本轮没有把这个接口误称为 G 的等价改写，也没有把它当作已知输入。

## 4. 新解析路线的实际文献输入

以下只是本轮引用的最小定理集合。完整核验状态见 DEPENDENCIES.md；不是增加项目公理。

**F — 有限 ψ 桥。** Büthe，*An analytic method for bounding ψ(x)*，固定 arXiv:1511.02032v2（2017-10-22；发表于 Math. Comp. 2018），印刷 p.13，式 (6.2)：

\[
 -.8\le\frac{t-\psi(t)}{\sqrt t}\le.81
 \quad(100\le t\le5\cdot10^{10}).\tag{F}
\]

原文说明这一段用 Eratosthenes 筛计算。这里仅调用该段，不调用到 10¹⁹ 的大计算、FFT 插值表或其高零点数据。原筛法的完整区间/舍入证书本轮未取得。

**EF — 平滑显式公式。** 同一固定版本，印刷 p.4，Proposition 2，式 (3.6)：对 v≥10、0<ε≤10⁻⁴，以下 §5 定义的平滑函数满足

\[
 v-\Psi_{c,\epsilon}(v)=
 \sum_\rho a_{c,\epsilon}(\rho)\frac{v^\rho}{\rho}+R(v),
 \quad |R(v)|\le2.\tag{EF}
\]

ρ 按重数遍历非平凡 ζ 零点。该命题的证明来源是 Büthe 2016 Proposition 2 的 Weil–Barner 显式公式及 Rosser–Schoenfeld 的零点平方倒数界。本轮核对了该直接命题及证明衔接，没有把这些上游分析形式化。

**N/Z — 零点计数与倒数和。** Büthe，*Estimating π(x) and related functions under partial RH assumptions*，Math. Comp. 2016；采用修订 arXiv:1410.7015v4（2022-05-25），印刷 p.7，Lemma 3 及证明：

\[
\begin{split}
N(t)&=\frac{t}{2\pi}\log\frac{t}{2\pi e}+\frac78+R_N(t),
\qquad |R_N(t)|\le\log t\quad(t\ge14),\tag{N}\\
\sum_{a\le\gamma<b}\frac1\gamma
 &\le\frac{\log^2(b/2\pi)-\log^2(a/2\pi)}{4\pi}
                 +5\frac{\log a}{a}\quad(14\le a<b),\tag{Z1}\\
\sum_{0<\gamma<b}\frac1\gamma
 &\le\frac1{4\pi}\log^2\frac b{2\pi}\quad(b\ge5000).\tag{Z2}
\end{split}
\]

γ 是正虚部，计重数。N 的证明原引 Rosser 1941 p.223；Z2 的证明还用 \(\sum_{0<\gamma<5000}1/\gamma<3.54\)。该小零点和证书未取得。原文只需实端点；采用包含端点的 N 可由非零点处不等式取右极限得到。

**RH-H — 一个已被无条件证明的有限事实。** Platt–Trudgian，*The Riemann hypothesis is true up to 3·10¹²*，固定 arXiv:2004.09765v1（2020-04-21），印刷 p.2 Theorem 1 和 §2，严格验证到高度 3000175332800。因此特别有

\[
 0<\gamma\le H=589824\quad\Longrightarrow\quad\Re\rho=1/2.\tag{RH-H}
\]

这里不是 RH 猜想。纸面可引用该严格计算定理；将来 Lean 仍须提供这个短前缀的零点符号、误差和完整性证书，不能把发表事实登记成 axiom。没有要求重放 3·10¹² 高度的全数据。

此外使用 ζ 的基本共轭/函数方程对称性、非平凡零点位于闭条带 0≤Reρ≤1、没有实非平凡零点、Logan 核的正权积分表示。实区间 0<u<1 的无零点可由交错 η 级数证明：将相邻两项配对得到 η(u)>0，而 ζ(u)=η(u)/(1−2^(1−u))<0；ζ(0)=−1/2、u=1 是极点，亦非遗漏的零点。这些均为分析上游，未在本轮 Lean 中实现。对高处零点只用闭条带，不要求无零区域、零密度估计或全 RH。

## 5. 平滑定义与包含端点的夹逼

全程固定

\[
 c=18,\quad\epsilon=1/32768,\quad H=c/\epsilon=589824,
 \quad s=H/2=294912,\quad v_0=49990000000.
\]

定义整个函数

\[
 \ell(w)=\frac c{\sinh c}\,
 \frac{\sinh\sqrt{c^2-(\epsilon w)^2}}
      {\sqrt{c^2-(\epsilon w)^2}},\quad
 \lambda=\ell(i/2),\quad
 a(\rho)=\lambda^{-1}\ell\bigl((\rho-1/2)/i\bigr).
\]

在分母为零处用 sinh(w)/w 的幂级数定义；平方根换号不改变商，因此没有分支选择假设。

采用 2016 文的归一化核

\[
 \eta(u)=\frac{c}{2\epsilon\sinh c}
 I_0\!\left(c\sqrt{1-(u/\epsilon)^2}\right)\quad(|u|<\epsilon),
\]

支撑在 [−ε,ε]，其余处为零。\(I_0(w)=\sum_{n\ge0}(w/2)^{2n}/(n!)^2\)。其积分为 1，非负且偶，且

\[
 \lambda=\int_{-\epsilon}^{\epsilon}e^{-u/2}\eta(u)\,du
 =\int_{-\epsilon}^{\epsilon}\cosh(u/2)\eta(u)\,du\ge1.
\]

令 \(w(u)=e^{-u/2}\eta(u)/\lambda\)，它是概率密度。卷积定义直接给出

\[
 \Psi_{c,\epsilon}(v)=
 \int_{-\epsilon}^{\epsilon}w(u)\psi(ve^u)\,du.\tag{5.1}
\]

验证：将 2016 文的 \(\varphi=\lambda^{-1}(1_{[0,\log v]}e^{t/2})*\eta\) 代入其素数幂和，约去 \(p^{k/2}\)，得到 (5.1)。因为 ε<log2，对每个素数幂都有 k log p−u>0；剩余条件恰是 pᵏ≤veᵘ。涉及的素数幂不超过 veᵋ，和是有限的；跳点是积分中的零测集，半权/全权不影响积分。

于是对真正的右连续 ψ 也有

\[
 \psi(ve^{-\epsilon})\le\Psi_{c,\epsilon}(v)
                         \le\psi(ve^{\epsilon}).\tag{5.2}
\]

这直接来自单调性及非负权，不使用 Brun–Titchmarsh、µ/ν 辅助函数或 I₁/I₀ 比值估计。

2018 文式 (3.4) 的 η 比上述写法多因子 2，而其 λ 同样定义为 η 的积分；在 η/λ 中该因子消去。这里坚持一个归一化，不混用 λ。2018 Proposition 2 的规范化 ℓ 比值与 (5.1) 相同。

## 6. 低零点和中段零点：只用 Z1/Z2，不用专门截断定理

对 0<γ≤H，RH-H 给出 \(|v^\rho|=\sqrt v\)；同时 \(|\rho|\ge\gamma\)、λ≥1。
在 0≤γ≤H，\(\ell(\gamma)\) 非负且递减：这是 sinh(q)/q 对 q≥0 递增及 \(q=\sqrt{c^2-(\epsilon\gamma)^2}\) 递减的结果。递增性也可逐项由其非负系数幂级数证明。因此 ℓ≤ℓ(0)=1。

### 6.1 低段 0<|γ|≤s

用 Z2 的 b=s+1；这个 +1 明确避免将 `<b` 偷换成 `≤s`：

\[
 \sum_{0<|\gamma|\le s}\left|a(\rho)\frac{v^\rho}{\rho}\right|
 \le\frac{\sqrt v}{2\pi}\log^2\frac{s+1}{2\pi}
 <\frac{2916}{155}\sqrt v.\tag{6.1}
\]

最后一步用 \(31/10<\pi<4\)、\(0<\log((s+1)/(2\pi))<54/5\)。π 的下界可由 \(\pi/4=\int_0^1(1+t^2)^{-1}dt\) 的 26 项偶数几何截断严格证明；有理部分及指数界均在证书中。

### 6.2 中段 s<|γ|≤H

有

\[
 \ell(\gamma)\le\frac2{\sqrt3}\frac{\sinh(9\sqrt3)}{\sinh18}
 <\frac65\frac{\sinh(63/4)}{\sinh18}<\frac17.\tag{6.2}
\]

这里 \(5/3<\sqrt3<7/4\)，且有理 Taylor 包围给出 \(\sinh(63/4)/\sinh18<5/42\)。

对倒数和，实际 (s,H] 包含在 [s,H+1) 中。Z1 给出

\[
 \sum_{s<\gamma\le H}\frac1\gamma
 \le\frac{\log((H+1)/s)
             [\log((H+1)/(2\pi))+\log(s/(2\pi))]}{4\pi}
       +5\frac{\log s}s
 <\frac{49}{31}+\frac{70}s<\frac85.\tag{6.3}
\]

使用的界为 \(\log((H+1)/s)<7/10\)、\(\log(H+1)<14\)、4π>62/5。
故两个符号的中段零点贡献不超过

\[
 \frac27\cdot\frac85\sqrt v=\frac{16}{35}\sqrt v.\tag{6.4}
\]

低段加中段的总系数为

\[
 C=\frac{2916}{155}+\frac{16}{35}=\frac{20908}{1085}.\tag{6.5}
\]

## 7. 高处零点核的直接估计：消去 Büthe Proposition 3 及其特殊尾项依赖

这一节对所有 γ>H 的非平凡零点成立，不知道、也不假设它们在线上。

写 ρ=β+iγ，0≤β≤1。令

\[
 a=\epsilon\gamma\ge c,\quad b=\epsilon(1/2-\beta),\quad |b|\le\epsilon/2,
 \quad W^2=c^2-(a+ib)^2.
\]

令 q=a²−c²≥0，h=|b|，U=|Re W|。复平方根的实部恒等式给出

\[
 U^2=\frac{\sqrt{(q+h^2)^2+4c^2h^2}-q+h^2}{2}
 \le ch+h^2.
\]

最后一步的完整代数检查是

\[
 (q+h^2+2ch)^2-[(q+h^2)^2+4c^2h^2]
 =4ch(q+h^2)\ge0.
\]

因此

\[
 U\le\sqrt{c\epsilon/2+\epsilon^2/4}<1/50.\tag{7.1}
\]

对任意复数 W，用 \(\sinh W/W=\int_0^1\cosh(tW)dt\)，以及

\[
 |\cosh(u+iv)|\le\cosh u,\qquad |\sinh(u+iv)|\le\cosh u,
\]

得到

\[
 |\sinh W/W|\le e^{|\Re W|}<103/100,
 \qquad |\sinh W|<103/100.\tag{7.2}
\]

W=0 时第一式按极限或幂级数理解，仍成立。

于是高零点近段 H<γ≤2H 有

\[
 |\ell((\rho-1/2)/i)|\le\frac{18(103/100)}{\sinh18}.\tag{7.3}
\]

对 γ>2H，a>2c，而 \(b^2\le\epsilon^2/4<c^2\)，所以

\[
 |W|^2=|W^2|\ge a^2-c^2-b^2\ge a^2/2\ge a^2/4.
\]

结合 (7.2) 得更好的衰减

\[
 |\ell((\rho-1/2)/i)|
 \le\frac{206}{100}\frac{H}{\sinh18}\frac1\gamma.\tag{7.4}
\]

这里没有从有限高度的数值检查推断一个无界函数界；(7.1)–(7.4) 是对全部 γ>H 的代数/积分证明。

## 8. 高零点总和：计数、部分求和和对称性

### 8.1 两个需要的零点和

与 §6 相同，以 Z1 的 a=H、b=2H+1 覆盖 (H,2H]。利用
\(\log((2H+1)/H)<7/10\)、\(\log(2H+1)<15\)、π>3，得到

\[
 \sum_{H<\gamma\le2H}\frac1\gamma
 <\frac74+\frac{70}H<2.\tag{8.1}
\]

再从 N 推出对全部 t≥2H 的粗界

\[
 N(t)\le t\log t/6.\tag{8.2}
\]

证明：t/(2π) 的主项括号在此范围正；2π>6 及 log(2π)>0 给出

\[
 N(t)\le(t/6)(\log t-1)+1+\log t.
\]

函数 t/6−1−log t 在 t>6 递增，且在 t=100 已正（log100<5），故 (8.2) 成立。

令 L=2H。分部求和，在非负尾项上取极限，边界 N(t)/t²→0，得到

\[
\begin{aligned}
 \sum_{\gamma>L}\gamma^{-2}
 &= -\frac{N(L)}{L^2}+2\int_L^\infty\frac{N(t)}{t^3}\,dt\\
 &\le\frac13\int_L^\infty\frac{\log t}{t^2}\,dt
 =\frac{\log L+1}{3L}
 <\frac{16}{3L}=\frac8{3H}.\tag{8.3}
\end{aligned}
\]

(8.3) 的严格端点是 γ>L；在 L 恰有零点时，其重数已包含在 N(L) 的扣除中，没有丢失边界项。

### 8.2 不在线上零点的配对

共轭把正、负 γ 配对；函数方程在相同正 γ 把 β 与 1−β 配对，并保留重数。对 v≥1、0≤β≤1，

\[
 v^\beta+v^{1-\beta}\le v+1,
\]

因为 \((v^\beta-1)(v^{1-\beta}-1)\ge0\)。而 λ≥1、|ρ|≥γ。

所以：若某一段上有与 β 无关的核上界 k(γ)，该段**两种虚部符号合计**的绝对贡献至多

\[
 (v+1)\sum_{\gamma>0\ \mathrm{in\ segment}}\frac{k(\gamma)}\gamma.\tag{8.4}
\]

这里的系数是 v+1，而不是遗漏共轭后只保留 (v+1)/2；(8.4) 已包括两个符号。由绝对收敛或先对有限对称截断求和再取极限，配对合法。

将 (7.3)、(7.4)、(8.1)、(8.3) 代入，且 sinh18>30000000，得

\[
 \sum_{|\gamma|>H}\left|a(\rho)\frac{v^\rho}{\rho}\right|
 \le\beta_*\,(v+1),\tag{8.5}
\]

其中一次性的有理常数为

\[
\begin{split}
 \beta_*&=\frac{18(103/100)\cdot2+(206/100)\cdot(8/3)}{30000000}\\
 &=\boxed{\frac{3193}{2250000000}}.
\end{split}
\]

这已经控制整个无界 γ 尾，并对全部 v≥1 一致。**不调用** Büthe 的 Proposition 3、Lemma 2、其博士论文中的特殊截断证明、Franke–Kleinjung–Büthe–Jost 的相应尾项引理，亦不调用零密度/有效零自由区。

## 9. 全部无界 v 的误差；去平滑

由 EF、(6.5)、(8.5)，对每个 v≥v₀，

\[
 \frac{|\Psi_{c,\epsilon}(v)-v|}{v}
 \le\frac C{\sqrt v}+\beta_*\left(1+\frac1v\right)+\frac2v.
\]

三个量都是正的且随 v 递减。使用

\[
 v_0>223000^2,\qquad1+1/v_0<1001/1000,
\]

得纯有理预算

\[
 \frac{20908}{1085\cdot223000}
 +\frac{3193}{2250000000}\frac{1001}{1000}
 +\frac2{49990000000}
 <\boxed{\delta:=\frac{89}{1000000}}.\tag{9.1}
\]

因此 (9.1) 不是有限 x 范围或渐近结论，而是对全部 v≥v₀ 成立。

现在任取 x≥B。由 \(e^{-\epsilon}\ge1-\epsilon\)，

\[
 e^{-\epsilon}x\ge(1-1/32768)B>v_0,
\quad e^{\epsilon}x>v_0.
\]

将 (5.2) 分别应用在 v=e⁻ᵋx 与 v=eᵋx：

\[
 (1-\delta)e^{-\epsilon}x\le\psi(x)
                         \le(1+\delta)e^{\epsilon}x.\tag{9.2}
\]

上侧的相对误差支配下侧，因为

\[
 [e^\epsilon(1+\delta)-1]-[1-e^{-\epsilon}(1-\delta)]
 =2(\cosh\epsilon-1)+2\delta\sinh\epsilon\ge0.
\]

对 0<ε<1，逐项比较指数级数和几何级数得 \(e^\epsilon<1/(1-\epsilon)\)。故

\[
\begin{aligned}
 \frac{|\psi(x)-x|}x
 &\le e^\epsilon(1+\delta)-1\\
 &<\frac{32768}{32767}\left(1+\frac{89}{1000000}\right)-1\\
 &=\boxed{\frac{61193}{511984375}}<\frac3{25000}.\tag{9.3}
\end{aligned}
\]

最后一步的精确余量为

\[
 \frac3{25000}-\frac{61193}{511984375}
 =\frac{1961}{4095875000}>0.
\]

于是 P 在**整个无界实数尾 x≥5·10¹⁰**上成立，右端没有另一个隐含上界。只在 0<γ≤589824 使用有限 RH；γ 更高时已经由 §7–8 完整处理。

## 10. 有限 ψ 桥与端点覆盖

对 A≤t≤B，引用 F 得

\[
 |\psi(t)-t|\le\frac{81}{100}\sqrt t
 \le\frac{81}{1000000}t
 <\frac3{25000}t,
\]

因为 √t≥10000。结合 (9.3)，P 对全部 t≥A 成立。

| 区间/端点 | 所用供应 | 本轮证据等级 |
|---|---|---|
| 10⁷≤自然数 y<T₀ | I₀ | 条件采用；原独立绑定 pending |
| A≤实数 t≤B | F ⇒ P | 固定论文的有限计算结果；证书未取得 |
| B≤实数 t<∞ | §§5–9 ⇒ P | 新纸面推导，引用 EF、N/Z、RH-H；未形式化 |
| A≤实数 x<∞，z=rx | LP + 两端 P | 纯接合，z 无上界 |
| y≥T₀>A | RG-A | 新供应接入 G |

在 x 或 z 跨越 B 时，没有空隙：P 已分别覆盖每一个实数端点。B 在两段中均包含。有限初段的右端 T₀ 是开端，后段在 T₀ 已覆盖。实际上 RG-A 从 A 已成立，因此仅需 I₀ 在 [10⁷,A) 的限制；为不改变原附件接口，骨架仍接收原 [10⁷,T₀) 接口。这是削弱所用前提，不是重算有限初段。

**有限代价没有消失。** 虽然 G 的拼接截止 T₀ 不变，P 的实现内部新增/替换了有限 ψ 义务 [10⁸,5·10¹⁰]。该段不能由原 [10⁷,T₀) prime-chain 验收自动推出，也不能称作只有常数计算。

## 11. Nat 转换与最终 G

取自然数 y≥T₀。把 x=y 代入 RG-A，得到自然数素数 p，实数意义下 y<p≤y+y/D。因此 y<p 在自然数意义也成立，且

\[
 D\bigl((p:\mathbb R)-(y:\mathbb R)\bigr)\le(y:\mathbb R).
\]

由于 y≤p，自然数减法无截断；`Nat.cast_sub` 给出

\[
 ((p-y:\mathbb N):\mathbb R)=(p:\mathbb R)-(y:\mathbb R).
\]

将实不等式转回 Nat，得到 D(p−y)≤y。对 10⁷≤y<T₀ 调用 I₀。两者合并恰为

\[
 \forall y\in\mathbb N,\quad y\ge10^7\Longrightarrow
 \exists p\in\mathbb N,\quad p\text{ prime},\ y<p,\ 4095(p-y)\le y.
\]

没有 y 的上界，没有把素数幂当素数，没有换成 p≥y。

## 12. 有理计算的证明含义

`certs/verify_constants.py` 实际执行了 46 个有理关系检查及两个纯整数幂比较。指数包围使用：对 q≥0、q<N+2，

\[
 S_N=\sum_{j=0}^N q^j/j!,\qquad
 S_N\le e^q\le S_N+
 \frac{q^{N+1}/(N+1)!}{1-q/(N+2)}.
\]

理由是从首个遗漏项开始，后继项比值均不超过 q/(N+2)。本包使用 N=96。由这些严格有理包围取得前文的 log、sinh、exp 常数；没有对超越函数的机器浮点结果作证明依据。

这些检查不证明 EF、N、Z1/Z2、RH-H 或 F。它们也不是 Lean kernel 检查。

## 13. 现有 U 路线的一个独立可复用修补

Dusart 2010v1 p.4 Prop.5.1 中的打印小数 0.00002758 大于 1/36260，单独使用该小数不足以推出 U 的精确系数。但由有理 Taylor 上界 e¹⁴<1202605，有

\[
 \frac{2841}{10^8}-\frac{9999/10000}{1202605}<\frac1{36260}.
\]

所以保留其未舍入的 \(0.00002841-0.9999/e^{14}\) 能补好该数值步骤。这**只修补该一步**，不补齐 U 的分段 ψ 供应或有限 θ 表；更不证明 L。主路线不使用它。

## 14. 精确停止点

从现有有限初段向右，独立验收的首个缺口是有限 ψ 桥 F，或足以替代它的 [A,B] 上 (3/25000)t 误差证书。公开 p.13 式 (6.2) 已读到，但筛法的完备性、全部前缀和及定向舍入原件没有取得。

不能仅把本轮 B 降到 A 来绕过 F：即使只看低/中零点上界，C/√A=20908/10850000>3/25000，误差预算已经不足；这是绝对值估计的失败边界，不是真实 ψ 误差的下界。

无界部分还需 EF 的形式化、N/Z 的形式化与低于 5000 的倒数和证书、RH-H 的符号/完整性证书。这里没有把这些缺件写成已证 Lean 定理。即使暂不接受任何计算型论文结果，§§2–3、§§5–9 的明确条件推导和全部有理常数仍可单独复用。
