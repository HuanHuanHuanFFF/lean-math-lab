# PROOF — R2：先作平滑端点差，再界零点和

日期：2026-10-05。本文是纸面推导，不是 Lean 检查记录。

本轮仅接续原任务和 R1 的无界素数供应。引用标签的固定版本及取得状况见 DEPENDENCIES.md、sources/SOURCE-AUDIT.md。本文的解析推导以通用 ζ 显式公式、零点计数和已发表有限 RH 定理为输入；这些输入的形式化与有限计算证书不由下述有理常数检查替代。

## 0. 目标、定义及最终需要的输入

始终使用真实、右连续的

\[
\theta(x)=\sum_{p\le x}\log p,\qquad
\psi(x)=\sum_{p^m\le x,\ m\ge1}\log p,\qquad E(x)=\psi(x)-\theta(x).
\]

所有素数和均按自然数素数取，所有 log 为自然对数。置

\[
D=4095,\quad r=\frac{4096}{4095},\quad A=10^8,\quad
T_0=122568684,
\]
\[
B=14400000000=120000^2,\qquad C=14403516484=\lceil rB\rceil.
\]

本轮证明的无界消费者为

\[
\theta(rx)-\theta(x)>\frac{x}{400000}>0\qquad(x\ge B). \tag{R2-tail}
\]

为接回原目标，只再需要：

**F2，有限 ψ 桥：** 对全部实数 \(T_0\le t\le C\)，
\[
|\psi(t)-t|\le \frac3{25000}t.\tag{F2}
\]
**I0，原有限接口：** 对自然数 \(10^7\le y<T_0\) 有原题要求的真素数。I0 仅条件采用；producer 的编译、AX、checker 成功不等于独立证据绑定完成。

F2 可由 [B18v2] 印刷 p.13 式 (6.2) 推出，但其独立有限证书尚未取得。本轮没有计算任何该区间的 ψ 值，没有重做原有限素数链。

无界推导明确使用的外部解析输入为：通用 Weil–Barner 公式在下文紧支撑测试函数类上的成立；ζ 非平凡零点的标准条带与保重数对称性；§5 的有效零点计数 N；有限高度 \(H=294912\) 内的 RH **已证定理** FH。FH 不是全 RH 假设，\(\gamma>H\) 的部分不使用 RH。核变换则在 §2 自行证明，不再作为一个特殊函数定理输入。

## 1. 局部新增高次素数幂：重复给出完整初等证明

对 \(x\ge1\) 置 \(z=rx\)、\(K=\lfloor\log z/\log2\rfloor\)。必须在两端使用同一个 K：

\[
E(z)-E(x)=\sum_{k=2}^{K}\ \sum_{x<p^k\le z}\log p.\tag{1.1}
\]

若 K<2，左边为零。否则，对固定 k，整数区间 \((x^{1/k},z^{1/k}]\) 中的整数数量至多 \(z^{1/k}-x^{1/k}+1\)。Bernoulli 不等式给

\[
\left(1+\frac1{Dk}\right)^k\ge1+\frac1D=r,
\quad
z^{1/k}-x^{1/k}\le\frac{x^{1/k}}{Dk}.
\]

每个被计入的素数满足 \(\log p\le\log z/k\)。因此

\[
E(z)-E(x)
\le\frac{\log z}{D}\sum_{k=2}^K\frac{x^{1/k}}{k^2}
 +\log z\sum_{k=2}^K\frac1k.
\]

利用 \(x^{1/k}\le\sqrt x\)、
\(\sum_{k=2}^K1/k^2\le\sum_{k=2}^K1/[k(k-1)]\le1\)，以及
\(\sum_{k=2}^K1/k\le(K-1)/2\le\log z/(2\log2)\)，得到

\[
\boxed{E(rx)-E(x)\le
\frac{\sqrt x\log(rx)}D+\frac{\log^2(rx)}{2\log2}}\qquad(x\ge1).\tag{1.2}
\]

这不是分别估计两个端点的 \(E\)，也没有使用任何素数密度定理。

令 \(L=\log(rx)\)。当 L>2 时，\(L/\sqrt x\) 的导数为
\((1-L/2)x^{-3/2}<0\)，\(L^2/x\) 的导数为 \((2L-L^2)/x^2<0\)。故只需两个严格端点计算：

\[
\log(rA)<19,\quad \log2>2/3,
\quad
\frac{19}{4095\cdot10000}+\frac{3\cdot19^2}{4A}<\frac1{300000};
\]
\[
\log(rB)<24,\quad
\frac{24}{4095\cdot120000}+\frac{3\cdot24^2}{4B}<\frac1{10^7}.
\]

所以

\[
E(rx)-E(x)\le x/300000\quad(x\ge A),\tag{LP-A}
\]
\[
\boxed{E(rx)-E(x)\le x/10^7\quad(x\ge B).}\tag{LP-B}
\]

端点的 log 及有理关系由 certs/verify_constants.py 严格包围；单调性覆盖的是整个无界实数区间，不是抽样。

## 2. 正核与傅里叶变换：不调用 Bessel 理论

### 2.1 幂级数定义

固定

\[
c=18,\quad \epsilon=1/16384,\quad H=c/\epsilon=294912.
\]

定义整个函数

\[
F(Q)=\sum_{n=0}^{\infty}\frac{Q^n}{(2n+1)!},\qquad
\ell(w)=\frac{F(c^2-(\epsilon w)^2)}{F(c^2)}.
\tag{2.1}
\]

对实 Q≥0，\(F(Q)=\sinh\sqrt Q/\sqrt Q\)，零点处按连续值 1。定义紧支撑非负偶函数

\[
\eta(s)=\frac{c}{2\epsilon\sinh c}
\sum_{n=0}^{\infty}\frac{(c^2/4)^n}{(n!)^2}
\left(1-\frac{s^2}{\epsilon^2}\right)^n
\quad(|s|<\epsilon),\tag{2.2}
\]

区间外置零；两端点值对积分无影响。文献中的 \(I_0\) 只是此正项级数的另一记号。主证明不调用其微分方程、特殊函数库、Logan 极值性质或现成的变换定理。

### 2.2 变换恒等式的自包含证明

先以多项式分部积分（或对 n 归纳）证明

\[
\int_{-1}^1 u^{2m}(1-u^2)^n\,du
=\frac{2\,4^n(2m)!\,n!\,(m+n)!}{m!\,(2m+2n+1)!}.\tag{2.3}
\]

n=0 为 \(2/(2m+1)\)。n≥1 时积分
\(\frac{d}{du}[u^{2m+1}(1-u^2)^n]\)，端点为零，给递推
\((2m+1)I_{m,n}=2nI_{m+1,n-1}\)，即得所列式子。

任意固定复 z，在 \([-1,1]\) 上展开 \(e^{izu}\) 和 (2.2) 的级数；以
\(e^{|z|}\exp(c^2/4)\) 控制绝对和，故可逐项积分并重新分组。奇次项积分为零。由 (2.3)，偶次项的双重级数为

\[
\begin{aligned}
&\int_{-1}^1e^{izu}\sum_{n\ge0}\frac{(c^2/4)^n(1-u^2)^n}{(n!)^2}\,du\\
&=2\sum_{m,n\ge0}
\frac{(m+n)!}{m!n!(2m+2n+1)!}(-z^2)^m c^{2n}\\
&=2\sum_{k\ge0}\frac{(c^2-z^2)^k}{(2k+1)!}
=2F(c^2-z^2).
\end{aligned}\tag{2.4}
\]

最后一步仅为二项式定理。换元 s=εu 得

\[
\int_{-\epsilon}^{\epsilon}e^{iws}\eta(s)\,ds=\ell(w).\tag{2.5}
\]

取 w=0 得质量 1。定义

\[
\lambda=\ell(i/2)=\int e^{-s/2}\eta(s)\,ds\ge1,\qquad
w(s)=\lambda^{-1}e^{-s/2}\eta(s).
\tag{2.6}
\]

λ≥1 来自 η 的偶性和 \(\cosh(s/2)\ge1\)。于是 w≥0 且积分为1。此节只使用阶乘级数、紧集上的绝对一致收敛及初等积分。

## 3. 向内平滑的两端，不再分别证明全局 ψ 误差

定义

\[
\Psi(v)=\int_{-\epsilon}^{\epsilon}w(s)\psi(ve^s)\,ds.
\]

ψ 单调和 w 的质量1给

\[
\psi(ve^{-\epsilon})\le\Psi(v)\le\psi(ve^\epsilon).\tag{3.1}
\]

对 x≥B，设

\[
a=e^\epsilon,\qquad b=re^{-\epsilon},\qquad u=ax,\ v=bx.
\]

以下均为 certs/CONSTANTS.json 所列有理包围的结果：

\[
1\le a<b,\quad \frac1{8192}\le d:=b-a\le\frac{123}{10^6},\tag{3.2}
\]
\[
a+b+2/B<2001/1000.\tag{3.3}
\]

例如不用 exp 数值表也有

\[
r(1-\epsilon)-\frac1{1-\epsilon}\le d
\le\frac r{1+\epsilon}-(1+\epsilon),
\]

其左右端分别严格大于 1/8192、严格小于 123/10⁶。

令

\[
g=2(\sqrt b-\sqrt a)=\frac{2d}{\sqrt a+\sqrt b}\le d\le123/10^6,
\quad
k=\sqrt a+\sqrt b\le a+b<2001/1000.\tag{3.4}
\]

由 \(be^\epsilon=r\)、\(ae^{-\epsilon}=1\)，

\[
\boxed{\psi(rx)-\psi(x)\ge\Psi(bx)-\Psi(ax).}\tag{3.5}
\]

平滑必须向内；反向选择端点不能提供此下界。

## 4. 直接差分的显式公式：零点常数与原点项消失

### 4.1 仍然采用的通用解析定理

使用 [B16v4] Prop.2 证明中调用的 Weil–Barner 公式。在其同一卷积测试函数类上，按傅里叶约定
\(\widehat\varphi(\xi)=\int e^{i\xi t}\varphi(t)dt\)，

\[
\sum_{\rho}\widehat\varphi(i/2-i\rho)
-\widehat\varphi(i/2)-\widehat\varphi(-i/2)
=w_f(\varphi)+w_\infty(\varphi),\tag{WB}
\]

其中

\[
w_f(\varphi)=-\sum_p\sum_{m\ge1}\frac{\log p}{p^{m/2}}
[\varphi(m\log p)+\varphi(-m\log p)],
\]

\[
w_\infty(\varphi)=
\left[\frac{\Gamma'}\Gamma(1/4)-\log\pi\right]\varphi(0)
-\int_0^\infty
\frac{\varphi(t)+\varphi(-t)-2\varphi(0)}{1-e^{-2t}}e^{-t/2}\,dt.
\]

这里两个极点参数是 **+i/2 与 −i/2**，素数幂指数从 **m=1** 起。网页抽取的 [B16v4] 显示有重复极点符号及 m=0 的歧义；本文不将其当作合法公式。上述约定由零点变换、两极点及同文 (3.2) 的 \(-x-\log x+1\) 逐项核对。无法成功截图的事实保留在来源审计中；不是声称看见了无法取得的字形。

WB 本身没有在本轮从 ζ 的解析延拓/留数定理重新证明；它是明确留下的解析根义务。本文证明的是它对特定差分测试函数的精确化简。

### 4.2 测试函数与恒等式

置

\[
f(t)=e^{t/2}\mathbf1_{[\log u,\log v]}(t),\qquad
\varphi=\lambda^{-1}(f*\eta).
\]

这正是 [B16v4] 中两个 admissible 卷积测试函数之差。它紧支撑、连续且分段光滑；亦可由 f 的有限变差与 η 的有界性得到 Lipschitz 性。固定参数满足 0<ε<10⁻³、c=18，而 u,v≥B>2/|log ε|，故原卷积测试函数的小 ε/大端点门也满足。支撑位于

\[
[\log u-\epsilon,\log v+\epsilon]
=[\log x,\log(rx)]\subset(0,\infty).
\]

所以 \(\varphi(0)=0\)，且 t≥0 时 \(\varphi(-t)=0\)。定义

\[
A(\rho)=\lambda^{-1}\ell((\rho-1/2)/i),\qquad
Z(u,v)=\sum_{\rho}A(\rho)\frac{v^\rho-u^\rho}{\rho}.
\tag{4.1}
\]

§7 证明此零点和绝对收敛；因此将 WB 原有对称极限改写为该和是合法的。由 (2.5)：

\[
\widehat\varphi(i/2-i\rho)=A(\rho)(v^\rho-u^\rho)/\rho,
\]
\[
\widehat\varphi(-i/2)=v-u,\qquad
\widehat\varphi(i/2)=\log(v/u).
\]

素数项先交换有限的素数幂和与紧区间积分，得

\[
w_f(\varphi)=-(\Psi(v)-\Psi(u)).
\]

ψ 的右连续值与半权端点的差只出现在积分变量 s 的有限个点上，不影响积分。由于 \(\varphi(0)=0\)，所有 Gamma/Euler 常数项不需计算；并且

\[
w_\infty(\varphi)=-\log(v/u)-J,
\quad
J=\int_0^\infty\frac{\varphi(t)e^{-t/2}}{e^{2t}-1}\,dt\ge0.
\]

代回 WB，\(\log(v/u)\) 两侧相消：

\[
\boxed{\Psi(v)-\Psi(u)=(v-u)-Z(u,v)-J.}\tag{4.2}
\]

这里没有 \(\sum A(\rho)/\rho\) 的独立常数，也没有两个端点各自 ±2 的误差。因此不再调用 [B18v2] Prop.2 的常数压缩或其 Rosser–Schoenfeld 1962 Lemma17 输入。

由 Fubini 及 (2.6)，

\[
J=\int w(s)\int_{\log u+s}^{\log v+s}\frac{dt}{e^{2t}-1}\,ds
\le\frac{\log(v/u)}{u^2e^{-2\epsilon}-1}
=\frac{\log(b/a)}{x^2-1}<1.\tag{4.3}
\]

最后使用 \(0<\log(b/a)<\log r<1/D\) 和 x≥B。积分全部非负或有界紧支撑，不存在条件收敛交换。

## 5. 零点计数与新的闭右端部分求和界

以重数计 \(N(t)=\#\{\rho:0<\operatorname{Im}\rho\le t\}\)。采用

\[
N(t)=M(t)+R(t),\quad
M(t)=\frac{t}{2\pi}\log\frac{t}{2\pi e}+\frac78,
\quad |R(t)|\le\log t\quad(t\ge14).\tag{N}
\]

此确切估计见 [B16v4] 印刷 p.7 Lemma3 证明，原引 Rosser1941 p.223；该原件及其形式化尚缺。若原约定在零点高度使用对称计数，取右极限即得此闭右端约定，常数不变，无需附加“分段端点不是零点”。

对 14≤h<q，Stieltjes 部分求和给

\[
\sum_{h<\gamma\le q}\frac1\gamma
=\frac{N(q)}q-\frac{N(h)}h+\int_h^q\frac{N(t)}{t^2}\,dt.
\]

M 的贡献为
\([\log^2(q/(2\pi))-\log^2(h/(2\pi))]/(4\pi)\)。R 的绝对贡献至多

\[
\frac{\log q}{q}+\frac{\log h}{h}
+\int_h^q\frac{\log t}{t^2}\,dt
=\frac{2\log h+1}{h}-\frac1q
\le\frac{3\log h}{h}.
\]

故

\[
\boxed{\sum_{h<\gamma\le q}\frac1\gamma\le
\frac{\log^2(q/(2\pi))-\log^2(h/(2\pi))}{4\pi}
+\frac{3\log h}{h}.}\tag{5.1}
\]

这是本轮直接从 N 推出的式子；不用原 Lemma3 的低零点延伸，也不用 \(\gamma<5000\) 的倒数和 3.54。

置 T=16384。只用 N、\(31/10<\pi<4\) 与有理 log 包围，得

\[
N(T)<18200,\qquad N(H)\le464733.\tag{5.2}
\]

第二个数是定理推出的保守数量上界，不是本轮观察、定位或验证的零点个数。

标准 ζ 门也必须保留：非平凡零点在条带内，保重数的 \(\rho\mapsto\overline\rho\)、\(\rho\mapsto1-\overline\rho\) 对称。实数 s∈(0,1) 没有 ζ 零点：交错 Dirichlet η 级数按相邻项配对为严格正，\(\eta(s)=(1-2^{1-s})\zeta(s)\) 的前因子非零。因此下面以正、负 ordinate 分拆没有漏掉 γ=0；其余标准解析门在依赖表中保留。

## 6. 有限 RH 部分：低零点使用端点差消掉 1/γ

使用已证明的有限输入

\[
\text{FH: 每个 }0<|\gamma|\le H\text{ 的非平凡零点 }\rho=1/2+i\gamma.
\]

[PT20v1] Theorem1 的严格验证高度是 3,000,175,332,800，远高于 H；故这是可引用的无条件有限事实，不是假设全 RH。独立前缀完整性证书本轮仍未取得。

### 6.1 低区间 \(0<|\gamma|\le T\)

在临界线上，用正实数的复幂导数积分：

\[
\left|\frac{(bx)^\rho-(ax)^\rho}{\rho}\right|
=\left|\int_{ax}^{bx}t^{\rho-1}dt\right|
\le2(\sqrt b-\sqrt a)\sqrt x=g\sqrt x.\tag{6.1}
\]

对 0≤γ≤H，(2.1) 的正级数使 \(0\le\ell(\gamma)\le1\)，λ≥1，故低区间贡献至多

\[
2gN(T)\sqrt x\le
2\frac{123}{10^6}\,18200\sqrt x
=\frac{11193}{2500}\sqrt x.\tag{6.2}
\]

此处不需要任何零点的正下界或 \(\sum1/\gamma\) 小数证书；极小 ordinate 也被同一积分界控制。

### 6.2 中区间 \(T<|\gamma|\le H\)

另一个点态界为

\[
\left|\frac{(bx)^\rho-(ax)^\rho}{\rho}\right|
\le\frac{(\sqrt a+\sqrt b)\sqrt x}{\gamma}
=\frac{k\sqrt x}{\gamma}.\tag{6.3}
\]

令 \(t_i=16384+17408i\)，i=0,…,16。\(\ell\) 在 [0,H] 非负递减：\(c^2-(\epsilon\gamma)^2\) 递减，F 在非负实数上递增。对第 i 个闭右端区间 \((t_i,t_{i+1}]\)，取有理 Lᵢ≥ℓ(tᵢ)、Rᵢ≥(5.1) 的右端。全部16行如下；它们是解析函数的标量包围，不是零点列表。

| i | tᵢ | tᵢ₊₁ | Lᵢ | Rᵢ |
|---:|---:|---:|---:|---:|
| 0 | 16384 | 33792 | 9741/10000 | 96407/100000 |
| 1 | 33792 | 51200 | 8941/10000 | 7393/12500 |
| 2 | 51200 | 68608 | 3863/5000 | 43329/100000 |
| 3 | 68608 | 86016 | 251/400 | 34423/100000 |
| 4 | 86016 | 103424 | 239/500 | 14333/50000 |
| 5 | 103424 | 120832 | 681/2000 | 24623/100000 |
| 6 | 120832 | 138240 | 1129/5000 | 10809/50000 |
| 7 | 138240 | 155648 | 1387/10000 | 19293/100000 |
| 8 | 155648 | 173056 | 783/10000 | 8719/50000 |
| 9 | 173056 | 190464 | 403/10000 | 15921/100000 |
| 10 | 190464 | 207872 | 93/5000 | 14657/100000 |
| 11 | 207872 | 225280 | 19/2500 | 13587/100000 |
| 12 | 225280 | 242688 | 27/10000 | 3167/25000 |
| 13 | 242688 | 260096 | 1/1250 | 1187/10000 |
| 14 | 260096 | 277504 | 1/5000 | 11171/100000 |
| 15 | 277504 | 294912 | 1/10000 | 10553/100000 |

包含正负 ordinates 的全部低、中零点贡献至多

\[
\left[\frac{11193}{2500}
+2\frac{2001}{1000}\sum_{i=0}^{15}L_iR_i\right]\sqrt x
=\frac{3459877425861}{250000000000}\sqrt x
<14\sqrt x.\tag{6.4}
\]

所有有限区间无缝拼接为 (0,H]；T 属于低区间，H 属于中区间，任何端点零点按同一重数计一次。

## 7. 全部 \(|\gamma|>H\)：不使用 RH，且没有隐藏上端点

### 7.1 核的复参数界

写 \(\rho=\beta+i\gamma\)，0≤β≤1、γ≥H，

\[
\alpha=\epsilon\gamma\ge c,\quad
\zeta=\epsilon(1/2-\beta),\quad |\zeta|\le\epsilon/2,
\quad W^2=c^2-(\alpha+i\zeta)^2.
\]

令 q=α²−c²≥0、h=|ζ|。复平方根的实部 U 满足

\[
U^2=\frac{\sqrt{(q+h^2)^2+4c^2h^2}-q+h^2}{2}
\le ch+h^2.
\tag{7.1}
\]

最后的平方根不等式由
\((q+h^2+2ch)^2-[(q+h^2)^2+4c^2h^2]=4ch(q+h^2)\ge0\) 得到。故

\[
|\Re W|^2\le c\epsilon/2+\epsilon^2/4<1/40^2.
\]

由 \(\sinh W/W=\int_0^1\cosh(tW)dt\) 及
\(|\sinh(U+iV)|\le\cosh U\)，得到

\[
|\sinh W/W|\le e^{|U|}<103/100,\qquad
|\sinh W|<103/100.\tag{7.2}
\]

这些界不依赖 W 的符号或分支；(2.1) 的整个函数定义消除了分支问题。

当 H<γ≤2H，

\[
|\ell((\rho-1/2)/i)|\le\frac{18(103/100)}{\sinh18}.
\tag{7.3}
\]

当 γ>2H，由 \(|W|\ge\epsilon\gamma/2\)（平方后使用 \(\alpha>2c\) 和 \(\epsilon^2/4<c^2\)）得

\[
|\ell((\rho-1/2)/i)|
\le\frac{2(103/100)H}{\gamma\sinh18}.\tag{7.4}
\]

λ≥1 可直接略去分母 λ，得到 A(ρ) 的相同上界。

### 7.2 零点高度求和，覆盖到无穷大

由 (5.1) 的 h=H、q=2H 实例与有理常数：

\[
\sum_{H<\gamma\le2H}\frac1\gamma<13/10.\tag{7.5}
\]

对 t≥2H，N 给出 \(N(t)\le t\log t/6\)。一个完整粗化是：对 t≥100，用 π>3 将 N 的右边界为
\(t(\log t-1)/6+1+\log t\)；而 \(t/6-1-\log t\) 在 [100,∞) 递增且起点为正。

再作部分求和，边界 \(N(t)/t^2\to0\) 由同一有效粗界保证：

\[
\sum_{\gamma>2H}\frac1{\gamma^2}
=-\frac{N(2H)}{(2H)^2}+2\int_{2H}^{\infty}\frac{N(t)}{t^3}dt
\le\frac{\log(2H)+1}{6H}<\frac5{2H}.\tag{7.6}
\]

最后只用 \(\log(2H)<14\)。由 \(\sinh18>30000000\)，正 ordinate 的核权倒数和上界 K 满足

\[
K\le\frac{18(103/100)(13/10)+2(103/100)(5/2)}{\sinh18}
<\frac{7313}{7500000000}<10^{-6}.\tag{7.7}
\]

### 7.3 条带对称配对：明确因子2

对每个正 ordinate，\(\beta\leftrightarrow1-\beta\) 保重数，且核绝对值相同（复共轭）；上界权 q(γ) 只依赖 γ。任意 v≥1 和0≤β≤1，凸性给

\[
v^\beta+v^{1-\beta}\le v+1.
\]

先在正 ordinates 内配对，即得
\(\sum q(\gamma)v^\beta\le (v+1)\sum q(\gamma)/2\)；再加入负 ordinates 的共轭副本，因子2恰好抵消。临界线上的固定点也满足同一不等式。于是

\[
\sum_{|\gamma|>H}\left|A(\rho)\frac{v^\rho}{\rho}\right|
\le K(v+1),\quad v\ge1.\tag{7.8}
\]

这同时证明需要的绝对收敛；只用了 \(|\rho|\ge|\gamma|\)，没有忽略离线零点。

分别在 v=bx、v=ax 使用 (7.8)，并用 (3.3)：

\[
\boxed{|Z_{|\gamma|>H}(ax,bx)|
\le K[(a+b)x+2]
<\frac{2001}{10^9}x\quad(x\ge B).}\tag{7.9}
\]

所有 \(\gamma>H\) 均由 (7.5)–(7.6) 覆盖，没有另一个有限截断高度，也没有 RH 延伸。

## 8. 新的无界 ψ 增量预算及 θ 正余量

联立 (3.5)、(4.2)–(4.3)、(6.4)、(7.9)、d≥1/8192：

\[
\boxed{\psi(rx)-\psi(x)
\ge\frac{x}{8192}-14\sqrt x-\frac{2001}{10^9}x-1
\quad(x\ge B).}\tag{DB}
\]

这是需要形式化的新解析供应类型，不是 R1 的全域 ψ 相对误差。

对 x≥B=120000²，\(\sqrt x\le x/120000\)，且 \(1\le x/B\)。再减去 LP-B：

\[
\begin{aligned}
\theta(rx)-\theta(x)
&\ge\left(\frac1{8192}-\frac{14}{120000}
-\frac{2001}{10^9}-\frac1{10^7}-\frac1B\right)x\\
&=\boxed{\frac{475571}{144000000000}x}
>\frac{x}{400000}>0.
\end{aligned}\tag{8.1}
\]

最后一行是严格有理比较。区间 x≥B 的每一步都由固定参数和单调/齐次界覆盖；不存在抽样或“充分大但阈值未知”。

## 9. 有限桥、区间端点和自然数回传

### 9.1 不留下 rx 跨过 B 的空隙

精确计算

\[
rB=\frac{3932160000000}{273}
=14403516483+\frac{47}{91},\qquad
C-1<rB<C.
\tag{9.1}
\]

对 \(T_0\le x<B\)，两点 x、rx 都属于 \([T_0,C]\)，故 F2 在两端可用。由 LP-A：

\[
\begin{aligned}
\theta(rx)-\theta(x)
&\ge (r-1)x-\frac3{25000}(r+1)x-\frac{x}{300000}\\
&=\boxed{\frac{49x}{58500000}>0.}
\end{aligned}\tag{9.2}
\]

x=B 则使用无界 (8.1)。因此 \(T_0\le x<\infty\) 完整覆盖。F2 需要一直到 C，不是只到 B；此处不能漏掉上端点的评估。

[B18v2] p.13 式 (6.2) 在所有实数 \(100\le t\le5\cdot10^{10}\) 给
\(-0.8\le(t-\psi(t))/\sqrt t\le0.81\)。因为
\(A\le T_0\le C<5\cdot10^{10}\)，且

\[
\frac{0.81\sqrt t}{t}\le\frac{81}{100\cdot10000}<\frac3{25000},
\]

它蕴含 F2。论文说明来源为有限筛法计算；本轮仅核对声明与包含关系，**没有取得完整筛法证书**。

### 9.2 真素数而非素数幂

θ(rx)>θ(x) 意味着 θ 的有限和至少有一个新增素数项，故
\(\exists p\in\mathbb N\)，p 素数且 \(x<p\le rx\)。这是原 `B699ThetaSupply.exists_prime_of_theta_lt` 的准确接口，不是把 ψ 的跳点当成素数。

取 x=y∈ℕ 且 y≥T0，有

\[
4095((p:\mathbb R)-(y:\mathbb R))\le y.
\]

先由严格实数下界得到 Nat 的 y<p，再使用
\(\uparrow(p-y)=\uparrow p-\uparrow y\)。因此 Nat 减法无截断，取得
\(4095(p-y)\le y\)。最后对 \(10^7\le y<T_0\) 条件调用 I0，即得到 G 的完整自然数量词。

这里没有要求比 G 更强的全实数 x>396738 供应，也没有证明 U/L 与 G 逻辑等价。

## 10. 精确常数证书的原理与覆盖

certs/verify_constants.py 只用 Python int 和 Fraction，N=48。

**log：** 先以2的整数幂将正有理数范围缩到 [1,2]。置 \(z=(q-1)/(q+1)\in[0,1/3]\)，
\[
2\sum_{j=0}^{N-1}\frac{z^{2j+1}}{2j+1}
\le\log q\le
2\sum_{j=0}^{N-1}\frac{z^{2j+1}}{2j+1}
+\frac{2z^{2N+1}}{(2N+1)(1-z^2)}.
\]
负的2幂系数交换 log2 上下界。

**exp：** 对非负 q<N+2，保留 j=0,…,N；第一漏项为 \(q^{N+1}/(N+1)!\)，以后项比至多 q/(N+2)，故以几何尾和给上界。

**F：** 对 Q≥0，保留 j=0,…,N；第一漏项 \(Q^{N+1}/(2N+3)!\)，后续项比至多 \(Q/[(2N+4)(2N+5)]<1\)。分母 F(c²) 使用下界，分子使用上界，故核商为严格定向包围。

**π：** 将 \(1/(1+t^2)\) 在 [0,1] 上作26项有限交错几何展开，余项为正；乘4积分得到严格下界 >31/10。π<4 来自同一积分。不存在引用十进制 π 打印值。

16个 Lᵢ、Rᵢ 分别向上取到分母10000、100000。对全部68个明确标量断言运行 exact comparison；输出给每行有理值及最终两个正余量。它不证明 N、FH、WB 或 F2，不计算零点，不计算 ψ，不是 Lean/kernel 证明。

## 11. 失败边界与精确停止点

相对于 R1，本轮实际消去了：低零点倒数和3.54的专门证书；两个全局端点 ψ 误差供应的要求；单端点显式公式中常数压缩所用的 Rosser–Schoenfeld1962 Lemma17；将正核/傅里叶变换留给 Bessel 特殊函数理论的需要。所有高处零点仍被显式覆盖。

未消去：F2 的有限完整证书；FH 的有限高度完整性及严格符号证书；N 的解析证明；WB 的解析形式化；ζ 基本性质的形式化；I0 独立绑定。核的级数证明和本文各推导同样尚未实现为 Lean。

为什么还不能把无限尾直接降到 T0？本轮统一预算含 \(14/\sqrt x\)：在 x=T0，因 T0<12000²，仅这一项就 >14/12000>1/8192。因此当前绝对值估计法不能在该点给正余量。它是此证明预算的失败，不是声称该点附近没有素数，也不是数学不可能性。

按从 G 的有限拼接段开始的独立证据办理顺序，第一项新的未交义务是 F2；即便 F2 到位，WB/N/FH 等仍不能跳过。按照公开发表定理引用、并条件采用 I0，可完成纸面接合；按照独立可检查证书与 Lean 内核标准，本轮仍为部分完成。
