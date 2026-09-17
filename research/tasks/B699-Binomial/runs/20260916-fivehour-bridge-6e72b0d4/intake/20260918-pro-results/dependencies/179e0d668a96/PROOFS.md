# Pro E：有理分裂比值的完整排除

日期：2026-09-17。对象：B699，i=3。本稿为本轮作者证明；未经过 Lean 或外部独立研究者验收。

## 0. 主定理、量词及证据边界

对自然数 `n,j`，设 `4|n`、`4≤j≤floor(n/2)`，置 `k=n-j`。定义真实孤立三小部

\[
\lambda=\begin{cases}3&v_3(n-1)=1,\\1&\text{否则},\end{cases}
\qquad
\mu=\begin{cases}3&v_3((n-2)/2)=1,\\1&\text{否则}.\end{cases}
\]

令

\[
N=(n-1)/\lambda,\quad K=(n-2)/(2\mu),\quad
\Theta=\frac{(n-1)(n-2)}{2jk},\quad
\mathcal S=(n-1)(n-2)((n-2j)^2-3n+2).
\]

**定理 SPLIT（两窗口层面的完整排除）。** 若 `mathcal S` 为非负整数平方，以下两个必要窗口不能同时成立：

\[
N\mid j(j-1),\qquad K\mid j(j-1)(j-2). \tag{W}
\]

**原题充分消费者。** 在同样的原始合法输入上，`mathcal S` 为整数平方，足以保证存在同一个奇素数 `p≥3` 同时整除 `binom(n,3)` 和 `binom(n,j)`。返回原题见 §5。

定理不限制 `g,u,H,C,z`、规范商的素数支持或完整指数。它比“只在 NC3 下证明矛盾”更强：两个完整窗口自身就排除此分支。证明不使用 `alpha=c2^s`、旧小块下界、QT100K、IQ3、CUBE、出版整点/对数定理、或任何计算上限。

这不是完整 i3 或两底族闭合；只排除这个有理分裂分支。所有非分裂输入仍需其他方法。

## 1. 原判据与有理分裂等价；零支排除

直接恒等式给

\[
\Theta(\Theta-2)=\frac{\mathcal S}{(2jk)^2}. \tag{1}
\]

因此 `mathcal S` 为非负整数平方，**等价于** `Theta(Theta-2)` 为有理平方。整数为有理平方当且仅当它为整数平方：把有理平方根写成最简分数即可证明。

`Theta>0`，故分裂条件推出 `Theta≥2`。若 `Theta=2`，(1) 给

\[
(n-2j)^2=3n-2.
\]

左边模4为0，右边模4为2，矛盾。因此 `Theta>2`，零支完全排除。中心 `j=n/2` 的 `mathcal S<0`，不命中本充分条件；不把中心的旧闭合重复计入。

把比值写成最简正分数

\[
\Theta=A/\delta,\quad \gcd(A,\delta)=1.
\]

因为 `v2((n-1)(n-2))=1`，而分母 `2jk` 为偶数，约分后 `A` 必为奇数。分裂条件给 `A(A-2delta)` 为整数平方。两因子为互素正奇数：

\[
\gcd(A,A-2\delta)=\gcd(A,2\delta)=1.
\]

所以存在唯一正奇数 `rho>sigma≥1` 满足

\[
A=\rho^2,\quad A-2\delta=\sigma^2,\quad
\gcd(\rho,\sigma)=1,\quad
2\delta=\rho^2-\sigma^2. \tag{2}
\]

奇数平方模8为1，故 `4|delta`。若 `j` 奇，则 `k` 奇，原比值分子分母恰约去一个2，最简分母应为奇数，矛盾。因此 `j` 偶。

这一节所有变换都对原始同一 `(n,j)` 进行；没有改变数对。

### 几何解释的严格范围

原数对满足

\[
j^2+k^2-(2\Theta-2)jk-3j-3k+2=0.
\]

其二次齐次首部在有理数域上分裂，当且仅当 `Theta(Theta-2)` 为有理平方。这里“分裂”指无穷远方向/特征二次式，并非说一般非分裂二次曲线没有有理点；原来的 `(j,k)` 本身就是有理点。几何解释不是额外证明依赖。

## 2. 不使用窗口的分裂高度上界

本节只使用 §1 的原输入、合法性、`4|n` 和分裂条件。

令 `T=n-2j≥0`。由

\[
\delta(n^2-3n+2)=2\rho^2jk
=\frac{\rho^2}{2}(n^2-T^2)
\]

及 (2)，准确得到

\[
\boxed{\sigma^2 n^2+6\delta n-4\delta=\rho^2T^2.} \tag{3}
\]

注意这里 `6delta n` 的符号是正号。置

\[
X=\sigma^2n+3\delta,\qquad Y=\rho\sigma T.
\]

则

\[
\boxed{X^2-Y^2=\delta(9\delta+4\sigma^2)>0.} \tag{4}
\]

`4|n`、`4|delta` 且 `j` 偶，故 `4|X,4|Y`。由 `T≥0` 有 `X>Y≥0`，因而 `X-Y≥4`、`X≥4`。于是

\[
\delta(9\delta+4\sigma^2)
=X^2-Y^2\ge X^2-(X-4)^2=8X-16.
\]

整理为

\[
n\le\frac\delta2+\frac{(3\delta-4)^2}{8\sigma^2}
\le\boxed{\frac98\delta^2-\frac52\delta+2}. \tag{U}
\]

最后一步只用 `sigma²≥1`。这是**仅在分裂原数对子域**成立的分母相对上界，不是所有 NC3 的上界。没有忽略 `sigma=1` 或最小 `delta`。

## 3. 只用两个完整窗口重建范数与约分

现在反设 (W) 同时成立。本节仍不使用完整 NC3 或 `alpha` 形状。

置 `g=gcd(n,j)`、`beta=j/g`、`gamma=k/g`。`N,K` 是互素正奇数，分别与 `g` 互素。任何完整奇素数幂 `p^e||K` 只能整除 `j,j-1,j-2` 中一个：相距1的数互素，相距2的数在奇数部分互素。因此

\[
L=\gcd(K,j),\quad H=\gcd(K,j-1),\quad R=\gcd(K,j-2),
\]

两两互素，且 `K=LHR`。令 `C=LR`，则

\[
C\mid jk,\quad H\mid j-1,\quad H\mid k-1,\quad \gcd(H,jk)=1. \tag{5}
\]

其中用到 `n≡2 mod K`。同理，由 `n≡1 mod N` 与第一窗口得

\[
N\mid jk,\qquad N\mid(j-1)(k-1).
\]

所以以下**同一输入**上的量是正整数：

\[
u=\frac{\beta\gamma}{NC},\qquad
z=\frac{(j-1)(k-1)}{NH^2}. \tag{6}
\]

理由：`N,C` 互素且各与 `g` 互素；`N,H²` 互素，`H²` 整除第二个分子。特别

\[
\gcd(H,ug)=1.
\]

由 `jk-(j-1)(k-1)=n-1=lambda N` 得

\[
\boxed{Cug^2-zH^2=\lambda,\qquad n=2\mu CH+2.} \tag{7}
\]

同时

\[
\Theta=\frac{\lambda\mu H}{ug^2}. \tag{8}
\]

### 孤立3与最简分母：不能省略的步骤

`lambda mu` 为1或3。若它为3，则 `3∤g`，并且 `3∤K`：

- `lambda=3` 时 `n≡1 mod3`，所以 `3∤n-2`；
- `mu=3` 时 `v3((n-2)/2)=1`，删除恰好这一孤立3后 `K` 不被3整除。

因此此时 `3∤H`。又由 `gcd(H,ug)=1` 及 `gcd(g,lambda mu)=1`，(8) 的准确约分因子是

\[
e=\gcd(\lambda\mu H,ug^2)=\gcd(\lambda\mu,u)\in\{1,3\}.
\]

所以

\[
A=(\lambda\mu/e)H,\qquad \delta=ug^2/e. \tag{9}
\]

§1 已证明 `A=rho²`。若 `lambda mu/e=3`，因 `3∤H`，`v3(A)=1`，不能为平方。因此唯一可能是

\[
\boxed{e=\lambda\mu,\quad H=\rho^2,\quad ug^2=\lambda\mu\delta.} \tag{10}
\]

这是由分裂及窗口**推出的必要条件**，不是任意规范输入中的恒等式。

## 4. 范数给出相反的高度；无有限尾部

把 (10) 代入 (7)：

\[
\lambda\mu C\delta=z\rho^4+\lambda.
\]

于是对同一个原始 `n` 有

\[
\boxed{n=2+\frac{2\rho^2}{\delta}
+\frac{2z\rho^6}{\lambda\delta}.} \tag{11}
\]

因为 `rho²=sigma²+2delta>2delta`、`z≥1`、`lambda≤3`，得到严格下界

\[
\boxed{n>6+\frac{16}{3}\delta^2.} \tag{L}
\]

它与 (U) 对每个正 `delta` 都矛盾，差为

\[
\left(6+\frac{16}{3}\delta^2\right)
-\left(\frac98\delta^2-\frac52\delta+2\right)
=\frac{101\delta^2+60\delta+96}{24}>0.
\]

SPLIT 得证。证明不需要给 `delta` 加上限，也没有遗留低 `delta`、低指数、单位块或需扫描的有限端点。

## 5. 从失败窗口回到原始两个二项式

仍固定原来合法的 `(n,j)`。由 SPLIT，至少一个窗口失败。

若第一窗口失败，取 `N` 中使 `v_p(j(j-1))<v_p(N)` 的奇素数 `p`，令 `a=v_p(N)>0`。这是**完整源幂** `p^a||N`；因此 `j mod p^a` 不为0或1，而 `n mod p^a=1`。得到

\[
j\bmod p^a>n\bmod p^a.
\]

第二窗口失败时同理取 `p^a||K`：三个位置在奇数部分互素，故 `j mod p^a` 不为0、1、2，而 `n mod p^a=2`。

两种情况都使下列阶乘估值和中第 `a` 项为1：

\[
v_p\binom nj=\sum_{h\ge1}\left(\left\lfloor\frac n{p^h}\right\rfloor
-\left\lfloor\frac j{p^h}\right\rfloor
-\left\lfloor\frac k{p^h}\right\rfloor\right)>0.
\]

各项非负，因为 `n=j+k`；该和由逐个数其因子的阶乘估值公式直接得到。

同时 `p|binom(n,3)`：对 `p≥5`，源 `n-1` 或 `n-2` 的正赋值不被 `3!=6` 取消。对 `p=3`，`N,K` 中保留3幂时，真实孤立3规则保证完整源赋值至少2；所以在 `binom(n,3)` 中减去分母的一个3后仍为正。

因此是**同一个素数**同除两个原始二项式。没有把弱模型当成反例，没有把 `p=3` 排除，也没有把高次3源幂改成孤立3。

## 6. 额外的精确接口：饱和支持下的韦达分母

本节独立于分裂条件。假定同一原输入满足两个完整窗口，并且

\[
\operatorname{rad}(u)\mid\operatorname{rad}(C).
\tag{SAT}
\]

取完整第一窗口分配 `a=gcd(N,j), b=gcd(N,j-1)`，`N=ab`。令

\[
u_\beta=\beta/(aL),\qquad u_\gamma=\gamma/(bR),\qquad
u_\beta u_\gamma=u.
\]

这些是正整数。由 `beta,gamma` 互素、`C=LR`、`N` 与 `C` 互素，(SAT) 强迫 `u_beta` 的支持包含于 `L`，`u_gamma` 的支持包含于 `R`；并有 `gcd(g,u)=1`。

**精确分母定理**（`den` 表示最简正分母）：

\[
\boxed{\operatorname{den}\frac{(j-1)(j-2)}k
=\frac g{\gcd(g,2)}u_\gamma,\qquad
\operatorname{den}\frac{(k-1)(k-2)}j
=\frac g{\gcd(g,2)}u_\beta.} \tag{VD}
\]

证明第一式。分母 `k=g b R u_gamma`。`b|j-1`、`R|j-2`，先约去 `bR`。若奇素数 `p|u_gamma`，则它在 `k` 中的赋值严格超过 `e=v_p(R)=v_p(K)`；源 `(n-2)` 在 `p` 处的完整赋值恰为 `e`（若 `p=3` 被孤立删除则它不能属于 `K`）。因此

\[
v_p(j-2)=v_p((n-2)-k)=e,
\]

而 `p∤j-1`。约去 `R` 后额外指数一个也不能继续约掉。与 `g` 的最大公因数正好为 `gcd(g,2)`，因为 `g|j`，故 `(j-1)(j-2)≡2 mod g`。`bR` 与 `g` 互素，所以前面的约分不改变这一结论。第二式交换 `j,k` 即得。

在 NC3 的两底条件 `omega(t3)=2` 下，采用旧作者前置 `L,R>1`，两底已经全部出现在 `C=LR`，故 (SAT) 自动成立。若写 `C=P^ell Q^r`、`t3=P^A Q^B` 并使 `L=P^ell,R=Q^r`，则

\[
u_\beta=P^{A-\ell},\qquad u_\gamma=Q^{B-r}.
\]

两次原始韦达反射都为整数，当且仅当 `g∈{1,2}` 且 `u=1`。`g≥3` 时两次均非整数；这精确排除的是“直接用该整数反射下降”的方法，不是把这些原输入排除。

本轮没有证明任何反射保持真实 `alpha`、孤立3或完整 NC，因此没有声称取得 NC 保持下降。

## 7. 一个真正无界且可直接计算的原输入分裂族

对任意整数 `h≥1`，令 `rho=16h+1`，定义

\[
n=\frac{9\rho^3+3\rho^2+4}{4},\qquad
j=\frac{3(\rho^2-1)(3\rho-2)}8.
\tag{FAM}
\]

`rho≡1 mod16` 保证两个数是整数且 `4|n`。`rho≥17` 时 `j≥4`，并且

\[
n-2j=\frac{9\rho^2+9\rho-2}{4}>0.
\]

令 `delta=(rho²-1)/2`，直接恒等式为

\[
\Theta=\rho^2/\delta,\qquad
\sqrt{\mathcal S}=(n-1)(n-2)/\rho.
\]

`gcd(rho²,delta)=1`，所以这是**真实最简分母**，随 `h` 无界。所有这些原数对满足本轮充分消费者。它们也全部不属于旧 IQ3 的整数 `Q=2Theta` 子域，因为 `4|delta`，`den(Q)=delta/2≥2`。

### 可选的显式共同素数

取任意素数 `p|rho`。

- 若 `p≥5`，则 `n≡1 mod p`、`j≡3/4 mod p`，后者不为0或1，因此 `p` 在第一源窗口产生进位；`p|n-1` 也给 `p|binom(n,3)`。
- 若 `p=3`，由 `n-1=3rho²(3rho+1)/4` 有 `v3(n-1)=1+2v3(rho)≥3`，**完整的**这个3幂仍留在 `N`。同时 `n mod9=1`、`j mod9=3`，在模9的一个层次就能认证进位。

证书分别记录 `full_source_power`（完整源幂）和 `carry_power`（产生进位的一个层次）。模9见证不表示把完整源截成9。

首例为 `(n,j)=(11272,5292)`、`Theta=289/144`。这个族证明本轮谓词非空且分母确实无界；不证明它相对所有旧消费者都未曾覆盖。

## 8. 两个窗口都不可随意删除

- `(n,j)=(52,18)`：`mathcal S=510²`，真实 `lambda=3,mu=1`。第一窗口 `17|18*17` 成立；第二窗口源 `K=25` 失败。
- `(n,j)=(344,154)`：`mathcal S=5586²`。第二窗口成立，第一窗口源 `N=343` 失败。

它们都是原题成立的合法数对，不是 NC。分别说明只保留一个窗口不足以排除分裂条件。

## 9. 计算与无限证明的分工

无限 SPLIT 由 §§1–5 的推导承担，(VD) 由 §6 的完整赋值论证承担，(FAM) 由 §7 恒等式承担。计算不是这些证明的替代品。

- 全扫描：`4|n≤10000,4≤j≤n/2`，6,245,001 对；27 个平方谓词命中均直接核对原始二项式全部共同奇素数。
- 两个实现分别使用原数乘积平方根/平方自由核；原始二项式/阶乘赋值；公式族/分裂因子对恢复。
- 43 个无界族样本，含 `rho=81^v,1≤v≤12`；16 个抽象范数记录（没有声称恢复出整数 j）。
- 16 个精确符号恒等式；16 种损坏证书拒绝。它们只检查算术，不承担上述无限量词。
- 另有旧脚本至 `n≤10^8` 的两个窗口诊断，仅用于选择路线，不参与任何全局结论。

本轮没有认证相对于全部历史消费者并集的非空差集，没有一般高度，没有完整两底或 i3 闭合；R7 不变。
