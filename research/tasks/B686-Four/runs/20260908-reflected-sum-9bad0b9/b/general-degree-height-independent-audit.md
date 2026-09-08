# 真实矩全部固定次数高度障碍：B独立审计

主任务00:07 UTC收到并全文核读；下文保留独立审查证明与实际V8检查边界。

**独立纸面审查通过，非 Lean。** 未发现核心漏洞；需要明确“至少三个互异整数位置”，并将归纳写成“每一步先跨所有 p 合并整除，再迫导数精确为零”。原常数 \(C\) 足够。

下面是可署名 B / James 归档的审查证明。

## 1. 准确命题范围

倍率固定为4；这里 q 是位置数量，不是倍率。要求：

- \(\ell_1,\ldots,\ell_q\) 是至少三个互异整数，均在 \([-h,h]\)；
- \(G\in\mathbb Z[z,d]\setminus\{0\}\)，总次数≤D；
- 每个指定真实局部根都有接触阶 \(R>D\)；
- 高度 \(H(G)\) 指当前中心坐标 \((z,d)\) 下的最大系数绝对值。

在这些约定下，你给出的
\[
H(G)\ge \frac{Q^2}{(D+1)D!(1+3h)^D}
\]
成立。

## 2. 系数环没有偷偷包含形式参数

固定 \(p\in S\) 和位置 \(\ell\)。归一化多项式为
\[
\phi_\ell(y)=
\frac{f_r(-\ell+y)}{f_r'(-\ell)}
=y\prod_{\substack{-r-\ell\le t\le r-\ell\\t\ne0}}
\left(1+\frac yt\right).
\]

条件
\[
p\le r-h,\qquad 2p>r+h
\]
保证差集中恰有两个 p 的倍数：\(\pm p\)。

因此可以定义
\[
\Phi_{\ell,p}(y,\tau)
=y(1-\tau y^2)\mathcal H_{\ell,p}(y),
\qquad
\mathcal H_{\ell,p}\in\mathbb Z_{(p)}[y],
\quad \mathcal H_{\ell,p}(0)=1,
\]
并且
\[
\Phi_{\ell,p}(y,p^{-2})=\phi_\ell(y).
\]

这里 \(\mathcal H_{\ell,p}\) 的系数可以依赖 p，但**全部 p-整，且不含形式变量 \(\tau\)**。这是逐个隔离素数对，不是假设全局 \(T_2,T_4,\ldots\) 独立。

若
\[
\Phi_{\ell,p}(y,\tau)=\sum_{l\ge1}a_l(\tau)y^l,
\]
则 \(a_l=h_{l-1}-\tau h_{l-3}\)，从而
\[
\deg_\tau a_l\le\left\lfloor\frac{l-1}{2}\right\rfloor.
\]

## 3. 局部根次数界与最高项

令 \(\zeta=-3\ell\)。形式根增量 \(\Delta\) 由
\[
\Phi_{\ell,p}\!\left(\frac{4d+\Delta}{3},\tau\right)
-4\Phi_{\ell,p}\!\left(\frac{d+\Delta}{3},\tau\right)=0
\]
定义。

线性项恰为 \(-\Delta\)，所以存在唯一
\[
\Delta\in d^2\mathbb Z_{(p)}[\tau][[d]].
\]
逐阶递推得到
\[
\deg_\tau[d^j]\Delta
\le\left\lfloor\frac{j-1}{2}\right\rfloor,
\qquad
[\tau d^3]\Delta=b=-20/9.
\]
因为 \(p>5\)，b 是 p-单位。

递推的次数估计没有漏项：项
\[
a_l\Delta^v d^{l-v}
\]
若使用 \(\Delta\) 的阶数 \(n_1,\ldots,n_v\)，总 d 阶数为
\(j=l-v+\sum n_t\)，其 \(\tau\) 次数至多
\[
\frac{l-1+\sum(n_t-1)}2=\frac{j-1}2.
\]

进一步，
\[
\operatorname{ord}_d[\tau^\nu]\Delta^v
\ge\max(2\nu+v,\nu+2v),
\qquad
[\tau^a d^{3a}]\Delta^a=b^a.
\]
这正是专门化论证所需的两个估计。

## 4. 专门化后的三角归纳成立

建议先一次性除去最大公共 d 幂：
\[
G=d^sK,\qquad K=\sum_jd^jg_j(z),\qquad g_0\ne0.
\]
令 \(E=D-s\)。则
\[
\deg K\le E,\qquad H(K)=H(G),\qquad
\operatorname{contact}(K)>E.
\]
全程仍使用原来的 D、S、Q、C，不必递归更换常数。

反设 \(M=H(G)<Q^2/C\)。按
\[
w=0,\ldots,\lfloor E/3\rfloor,\qquad a=0,\ldots,w
\]
顺序，证明每个指定 \(\zeta\) 上
\[
g_{w-a}^{(a)}(\zeta)=0.
\]

假设所有先前目标已经精确为零。考察
\[
[d^{w+2a}]K(\zeta+\Delta(\tau),d).
\]
其一般项来自
\[
\frac{g_j^{(v)}(\zeta)}{v!}\,d^j\Delta^v.
\]

高次项消去的指标如下：

- 若 \(\tau\) 次数 \(\nu>a\)，则
  \[
  j+v\le w-2(\nu-a)<w,
  \]
  被先前 w 层消掉。
- 若 \(\nu=a,\ v>a\)，则
  \[
  j+v\le w+a-v<w,
  \]
  同样消掉。
- 若 \(\nu=a,\ v\le a\)，则 \(j+v\le w\)。严格小于时已消掉；等于且 \(v<a\) 时由本层先前步骤消掉。

因此剩下的最高项恰为
\[
\frac{b^a}{a!}g_{w-a}^{(a)}(\zeta)\tau^a+B(\tau),
\qquad
B\in\mathbb Z_{(p)}[\tau],\quad \deg B<a.
\]

这里**没有声称整个表达式形式恒零**。只使用真实接触给出的专门化等式：
\[
\left.
[d^{w+2a}]K(\zeta+\Delta(\tau),d)
\right|_{\tau=p^{-2}}=0,
\]
因为 \(w+2a\le E\)。

乘以 \(p^{2a}\)，利用 \(p>D\) 使 \(a!\) 为单位，得到
\[
p^2\mid g_{w-a}^{(a)}(\zeta).
\]
a=0 时则直接得到该值为零。

现在对所有 \(p\in S\) 合并，得到针对**同一个整数导数**
\[
Q^2\mid g_{w-a}^{(a)}(\zeta).
\]

高度估计确实足够：
\[
|g_j^{(a)}(\zeta)|
\le
M\sum_{t=a}^{D-j}\frac{t!}{(t-a)!}(3h)^{t-a}
\le CM<Q^2.
\]
故目标导数精确为零，归纳才能进入下一步。

最后 \(g_0\) 在每个指定根具有至少
\[
\lfloor E/3\rfloor+1
=\left\lceil\frac{E+1}{3}\right\rceil
\]
重零点。总重数至少
\[
q\left\lceil\frac{E+1}{3}\right\rceil\ge E+1,
\]
与 \(g_0\ne0,\deg g_0\le E\) 矛盾。命题得证。

## 5. 必须保留的量词边界

- **互异性不能省略。** 若允许三次重复中心，取 \(G=z,D=1,R=3\) 即有高度1。比如 \(r=17,h=1\) 时 \(S=\{11,13\}\)，会直接违反所述下界。
- **至少三个位置是实质条件。** 两个相邻中心侧位置 \(\ell=\pm1\) 有
  \[
  r(r+1)(z^2-9)-8(2r+1)d^2
  \]
  这个二次、三阶接触、多项式系数高度的辅助式。
- **\(R>D\) 必须严格。** 三个中心位置的旧式
  \[
  r(r+1)z(z^2-9)-8(2r+1)zd^2
  \]
  是次数3、统一接触阶3的小系数例子。
- \(S\) 为空时下界只是平凡界。指数增长结论要求固定 D、h 后令 r 增大；不能把 D 或 h 随 r 增长也无条件算入。

因此，结论确实排除了指定模板中**真实矩、全部固定次数、多项式系数高度**的路线；没有否定高次数增长、非多项式辅助式或不满足统一 \(R>D\) 的混合接触路线，更不是原题无解。

## 6. 独立实际检查记录

**23:56:49 UTC，V8 精确有理运算实际完成：**

| 参数 | 位置 | 检查范围 |
|---|---|---|
| \(r=17,h=1,p=11\) | \(-1,0,1\) | 局部展开至 \(d^6\) |
| \(r=10,h=3,p=7\) | \(-3,0,3\) | 同上；覆盖 \(p=r-h\) 边界 |

六个分支全部通过：

- 隔离 \(\pm p\) 后专门化回原归一化多项式；
- 专门化形式根与直接真实根递推一致；
- 形式系数 p-整；
- \(\tau\) 次数界；
- \([\tau d^3]\Delta=-20/9\)；
- 每根六个受约束的三角系数样例。

另在 **23:59:39 UTC** 仅计算了 \(D=9,h=1,r=100\) 的公式参数，得到条件下界的上取整为
\[
14779452631213910477951824.
\]
这只是 Q、C 的整数运算，**不是 D9 接触矩阵验证**。

没有运行 D7/D9 大矩阵；主任务终止的计算仍不计通过。没有 Lean、shell 或本地文件写入。
