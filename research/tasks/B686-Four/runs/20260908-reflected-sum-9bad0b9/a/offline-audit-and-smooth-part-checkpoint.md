# A的掉线后交付快照

主任务于2026-09-07 23:49 UTC通过agent消息收到，直接保留正文。不是对不可读取本地审计文件的逐字复原；其中执行时间、原文件时间笔误及未落盘部分以正文限定为准。

下面直接交付可保存的完整摘要，不依赖本地恢复或此前消息。A=a7b2；本轮没有写远端、commit 或 push。

# 一、中心两位置独立审计

## 1. 来源与实际执行记录

审计对象是 B/James=af9e 的 `cofactor-structure-and-pell.md` §§5–6；完整读取报告 354 行，并核对前置定义。

所读 SHA256：

```text
b/cofactor-structure-and-pell.md
9759f912ba09cac7cb9aa2b1bd347d8dc0949ae52bf647fef363956f5d2a000e

main/routes.md
2e85382d80c719a4619369049b733990f357b4402b19c418d365190eae999205

main/prime-synchronization-theorem.md
58514e7f3699e8a99a2742c982d63e099c612d3dc59ceedd3b6cff407234b0fe
```

最后一个版本含主任务 23:02 的 Lean 状态更新；完整 MRSTT 高度结论仍为纸面结论。

- 最后成功本地执行：**2026-09-07 23:19:43 UTC**，读回审计报告并完成 `git diff --check`。
- 最后 Python 数学测试：**23:16:04 UTC，退出 0，Python 3.12.13**。
- 随后本地访问/编辑返回 409；未假称恢复或同步。
- 未读取 B 的测试脚本，未重复 Lean 审查。
- 本地报告首行“23:03–23:24”是待更正的时间笔误，正确记录为“23:03 启动、23:19 初稿”；更正及日志追加没有落盘。

结论：**未发现 B §§5–6 的漏洞。以下是独立重构。**

## 2. 原式到整数单位校正

设
\[
P_k(x)=\prod_{\ell=1}^k(x+\ell),\qquad
P_k(m)=4P_k(n),\qquad d=m-n\ge k,\quad k\ge3.
\]

若 \(p>k,\ p^a\Vert d\)，模 p 原式给 \(3P_k(n)=0\)，故唯一位置 \(\ell\) 满足 \(p\mid n+\ell\)。

根处展开
\[
P_k(-\ell+z)=c_\ell z+b_\ell z^2+z^3T_\ell(z),
\qquad c_\ell=\prod_{r\ne\ell}(r-\ell).
\]
\(c_\ell\) 为 p 单位。如果 \(v_p(z)\ne a\)，差多项式的线性项 \(c_\ell(d-3z)\) 具有唯一最低估值，矛盾。因此
\[
v_p(n+\ell)=a,\qquad p^{2a}\mid3(n+\ell)-d.
\]

假设距离的全部完整粗素数幂只分配到 \(i<j\)，写
\[
d=Ast,\quad R_i=3(n+i)-d=us^2,\quad R_j=vt^2,
\quad h=j-i,\quad C=uv.
\]
A 是 d 的 k-光滑部分，s,t 互素且仅含 >k 素数，允许为 1。精确有
\[
vt^2-us^2=3h.
\]
这给交叉单位条件，但不给自身组上的 \(\gcd(u,s)=\gcd(v,t)=1\)。

令
\[
H_\ell=b_\ell/c_\ell=p_\ell/q_\ell.
\]
最简分母 \(q_\ell>0\) 仅含 ≤k 素数；零调和项取 \((p_\ell,q_\ell)=(0,1)\)。

关键恒等式：
\[
3((z+d)^2-4z^2)=4d^2-(3z-d)^2.
\]
原式模 \(s^3\) 给
\[
3c_iR_i\equiv4b_id^2\pmod{s^3}.
\]
除共同整数因子 \(s^2\)，清分母并约去单位 \(c_i\)，得到
\[
s\mid3q_i u-4p_iA^2t^2.
\]
乘 v，使用 \(vt^2\equiv3h\pmod s\)，再约去 3，得到
\[
s\mid X_i=q_iC-4hp_iA^2.
\]
另一位置使用 \(us^2\equiv-3h\pmod t\)，得到
\[
t\mid X_j=q_jC+4hp_jA^2.
\]

两式符号正确。**无需约去调和分子，也无需自身组上的 u、v 可逆。**

## 3. 正性、分母与高度

由原题已有
\[
kd<2m,\qquad3m<4kd
\]
可逐边推出
\[
(3k/2-4)d<R_\ell<(4k-1)d,
\]
从而
\[
A^2(3k/2-4)^2<C<A^2(4k-1)^2.
\]

又 \(|H_\ell|\le k/2,\ h\le k-1\)，并且
\[
(3k/2-4)^2-2k(k-1)
=16+10(k-40)+(k-40)^2/4.
\]
因此 k≥40 时
\[
0<X_i<18q_iA^2k^2,\qquad
0<X_j<18q_jA^2k^2.
\]
不存在“整除零却推出模数上界”的问题。

设 \(\rho_\ell=|k+1-2\ell|\)。调和差恰有 \(\rho_\ell\) 项倒数，故最简分母整除这些分母之积：
\[
q_\ell\le k^{\rho_\ell}.
\]
零中心对应空积 1。于是
\[
d<324q_iq_jA^5k^4,\qquad
m<432A^5k^{\rho_i+\rho_j+5}.
\]

另外两种加强也成立：

- 偶数中心相邻对 \(k=2r\ge4\)：两整数右侧相同，故
  \[
  (st)^3\mid G=rR_iR_j-4d^2,\qquad0<G<8k^3d^2.
  \]
  得 \(d<8A^3k^3,\ m<(32/3)A^3k^4\)。
- 对称间距 \(i+j=k+1,\ h\ge1\)：\(H_i=-H_j=p/q>0,\ q\le k^h\)，故
  \[
  (st)^3\mid qR_iR_j-4hpd^2.
  \]
  k≥40 时得到 \(m<(64/3)A^3k^{h+3}\)。必须满足位置整数条件：h 奇配 k 偶，h 偶配 k 奇。

## 4. 与 M9-3 的量词连接

先固定 \(R,b,C_A\)，其中 \(R,b\ge0,\ C_A\ge1\)。若
\[
\rho_i+\rho_j\le R,\qquad A\le C_Ak^b,
\]
则
\[
m<432C_A^5k^E,\qquad E=5b+R+5.
\]

M9-3 固定 \(\delta=1/4\)，令其统一阈值为 \(K_0\)。取整数 K 至少为
\[
\max\{802,K_0,432C_A^5,\exp((E+1)^4)\}.
\]
对于 k≥K，
\[
\log m<(E+1)\log k
\le(\log k)^{5/4}<(\log(2k))^{5/4},
\]
与 M9-3 矛盾。

正确量词是
\[
\forall R,b,C_A\ \exists K\ \forall k\ge K\ \forall n,m,i,j.
\]
没有计算出实用 K，也不能让 R、b、\(C_A\) 随候选改变。

直接联合还给必要式
\[
(\rho_i+\rho_j+5)\log k+5\log A+\log432
>(\log(2k))^{3/2-\delta}.
\]
因此固定多项式 A 时，固定 \(\tau\in(0,1/2)\) 的
\[
\rho_i+\rho_j=O((\log k)^{1/2-\tau})
\]
同样在大 k 尾部被排除：取 \(\delta=\tau/2\)。

## 5. 独立测试

实际命令：

```text
python3 -B research/tasks/B686-Four/round9/a/cofactor-unit-audit-probe.py
```

23:10:23、23:16:04 UTC 均退出 0。算法在原始差多项式上逐位求根至 \(p^{3a}\)，再 CRT 合并；不是用待审公式生成根。

| k；i,j | s,t；A | n；d | 决定性输出 |
|---|---|---|---|
| 4；2,3 | 5,7；1 | 29768；35 | 两整除余数 0；三次整除通过 |
| 14；7,8 | 289,19；6 | 143939183644；32946 | 模 \(17^6\) 提升；三次整除通过 |
| 40；20,22 | 41,109；6 | 72618760091；26814 | \(H_j=-1199/7980\)，\(v\bmod109=0\) |
| 41；21,22 | 43,47；6 | 712863783；12126 | \(H_i=0\)，\(u\bmod43=0\) |
| 41；20,22 | 43,47；1 | 7463885456；2021 | 两整除余数 0；三次整除通过 |

另在 k=`3,4,5,14,38,39,40,41,82,101` 的全部 **367 个位置**检查了分母整除、\(q\le k^\rho\)、零中心及调和绝对值界。

```text
k=38: coarse positivity margin=-3
k=39: coarse positivity margin=25/4
k=40: coarse positivity margin=16
harmonic denominator/zero/size checks: 367 positions PASS
all original-polynomial digit lifts and integer corrections PASS;
no original witness claim
```

保留的失败诊断：

- \(1199=11\cdot109\) 直接否定“调和分子只有小素因子”。
- 两个零余数模型否定从局部条件擅自推出自身余因子可逆。
- k=38 的负余量仅说明该粗正性证明不能直接延伸，不是原题反例。

这些模型不是原题解，也没有用它们数值验证实高度界。有限长度、无界 A、远中心及三位置以上仍未解决。

# 二、新 A 光滑任务：提前交付的决定性障碍

**未去掉 A 假设。找到的是兼容任意两个指定粗位置、无界 A 的统一局部模型；它明确没有跨越实比例窗障碍。**

## 1. 统一的无界 A 构造

固定任意 \(k\ge3\)、两个位置 \(i<j\)、两个素数 \(s,t>k\)，取
\[
A_E=(k!)^E,\qquad d_E=A_Est,\qquad E\ge4.
\]

对每个 \(p\le k\)，可以任选位置 \(\ell\)，在 \(\mathbb Z_p\) 中构造精确根
\[
F_d(x):=P_k(x+d)-4P_k(x)=0
\]
靠近 \(-\ell\)。

令
\[
a=v_p(d),\quad c=v_p(c_\ell),\quad e=v_p(3).
\]
有 \(c\le v_p(k!)\)，而 E≥4 保证
\[
a>c+2e.
\]
在 \(x_0=-\ell\)：
\[
v_p(F_d(x_0))=a+c,\qquad
v_p(F'_d(x_0))=c+e.
\]
第二式来自
\[
F'_d(-\ell)=-3c_\ell+dQ(d),\qquad Q\in\mathbb Z[d].
\]

所以 Newton 步的估值为 \(a-e>c+e\)。每步导数估值不变，残差估值至少由 \(\nu\) 增至 \(2(\nu-c-e)>\nu\)，从而收敛为精确 p-adic 根。并且
\[
v_p(x+\ell)=a-e.
\]

其他位置的估值保持为 \(v_p(r-\ell)\)，因此
\[
v_p(P_k(x))=a-e+c,
\qquad
v_p(P_k(x+d))=a-e+c+v_p(4).
\]
这正确包含 p=2 的估值增加 2，以及 p=3 的例外偏移。

在粗素数 s、t 处，分别选择根靠近 \(-i,-j\)。导数模对应素数为单位，因此也有精确局部根，兼容全部粗距离只命中这两个指定位置。

## 2. 比“固定 CRT”更具体的 A 结构诊断

选择第三位置 \(\ell\ne i,j\)，在全部小素数处采用该分支。

根展开进一步给
\[
v_p(3(x+\ell)-d)\ge2(a-e)-c.
\]
这一估值严格高于 \(e+v_p(i-\ell)\) 和 \(e+v_p(j-\ell)\)。所以
\[
v_p(R_i)=e+v_p(i-\ell),\qquad
v_p(R_j)=e+v_p(j-\ell).
\]
由于 st 在这些小素数处可逆，
\[
v_p(C)=2v_p(3)+v_p((i-\ell)(j-\ell)).
\]

因此，在相应整数近似模型中，
\[
\boxed{C_{\le k}=9\,|(i-\ell)(j-\ell)|}
\]
**完全独立于 E，而 \(A_E\to\infty\)。**

对偶数中心相邻对及 \(\ell=1\)，这就是
\[
C_{\le k}=9(i-1)(j-1).
\]
所以不能由 A 很大，便推断中心余因子 C 必须带有相应巨大光滑部分。

最小的“p∣A 不代表中心命中”例子：k=4，中心位置 2、3，在 p=3 处选分支 \(\ell=1\)。此时
\[
x+2\equiv1,\qquad x+3\equiv2\pmod3,
\]
虽然 \(v_3(A_E)=E\) 任意大。

## 3. 整数非解模型的准确量词

对每个 E、每个要求的有限单位精度 H，可以 CRT 得到整数 \(n_{E,H}\)，同时满足：

- 全部 \(p\le k\) 的产品估值精确正确；
- 对应归一化单位关系正确到至少 H 位；
- 粗距离 s、t 只命中指定中心位置；
- 平方接触、单位校正及中心三次整除成立。

但量词是
\[
\forall E\ \forall H\ \exists n_{E,H},
\]
**不是** \(\exists n\ \forall H\)。不同完成域中的精确根也不是同一个全局整数解。

我选择 CRT 代表元使 \(n>4kd\)，以保证它们明确不是原解：
\[
\frac{P_k(n+d)}{P_k(n)}
<\left(1+\frac1{4k}\right)^k<\frac43<4.
\]
因此这些模型**故意不满足** \(3m<4kd\)，也未同步距离之外全部粗素数。

这正是停止边界：它证明新增 A 结构及中心位置限制不消除局部可解性，却没有证明它们与实比例窗同时相容。

## 4. 实际 JS 检验

本阶段只用了 `functions.exec` 的 JavaScript/BigInt，没有文件系统或 Lean。

- **23:38:16 UTC**：四组参数  
  `(k,E,s,t)=(4,4,5,7),(4,9,5,7),(10,4,11,13),(40,4,41,43)`；共 **28 个局部根检查通过**。
- **23:41:26 UTC**：统一小素数分支 \(\ell=1\) 的补检，共 **22 个根检查通过，包含重复核对**。

执行方法：取 \(N=a+c+15,\ b=c+e\)，模 \(p^{N+b}\) 计算原多项式及导数，执行
\[
x\leftarrow x-(F/p^b)(F'/p^b)^{-1}\pmod{p^N}.
\]
随后直接检查各项估值、至少 12 位单位关系、CRT 后粗平方接触和中心三次整除。

决定性结果：

```text
k=4,E=4: C_small=18; exact valuations PASS; unit digits >=12 PASS
k=4,E=9: C_small=18; exact valuations PASS; unit digits >=12 PASS
k=40,E=4: C_small=3420; exact valuations PASS; unit digits >=12 PASS
all central square/unit/cubic checks PASS
all constructed models: 3m<4kd is FALSE
```

一个可直接复核的整数非解：

```text
k=4, i=2, j=3, s=5, t=7
A=331776
d=11612160
n=7905407968457376340994754980783824964358143
m=7905407968457376340994754980783824975970303
```

产品估值：

```text
p=2: lower 13, upper 15
p=3: lower 4,  upper 4
p=5: lower 1,  upper 1
p=7: lower 1,  upper 1
```

原始 BigInt 乘积还直接验证了 \(P_4(m)-4P_4(n)<0\)。

## 5. 两个全局结论与停止决策

首先，目标
\[
\log A=o((\log k)^{3/2})
\]
**本身未必足以闭合 M9-3**。例如
\[
\log A\asymp\frac{(\log k)^{3/2}}{\log\log k}
\]
仍大于每个固定的 \((\log k)^{3/2-\delta}\)。需要固定的幂次节省，不能让 MRSTT 的 δ 随 k 改变而忽略常数依赖。

其次，一个更直接、但尚未证明的全局目标是：

- 中心相邻对：证明 \(A\le d^{1/3-\varepsilon}k^C\)；
- 一般固定中心带：证明 \(A\le d^{1/5-\varepsilon}k^C\)。

其中 \(\varepsilon>0,C\) 必须固定。分别代入 B 的 \(d<O(A^3k^3)\)、\(d<O(A^5k^{O(1)})\)，即可得到 d、m 的固定多项式高度，交给 M9-3。

这要求真正利用实比例窗与小素数分支之间的全局关系；本次局部族的 \(\log A/\log d\to1\)，说明上述目标不能只靠继续增加同类局部精度证明。

**实际新增原题排除为零；纯局部形式路线在这里停止。**没有启动固定 k 扫描、重复 Lean 或新的外部源搜索。

# 三、对主任务中心三位置观察的有限反馈

你给出的最后一步在以下条件下正确：三根两两之差模 p 可逆，且值、导数均为零模 \(p^2\)。此时三个平方线性因子两两互素；次数 <6 的多项式只能全部系数被 \(p^2\) 整除。对同一个非零层逐 p 合并，确实给高度至少 \(Q^2\)。

我尚未独立核对 **\(v_p(T_2)=-2\) 如何强迫首非零层导数被 \(p^2\) 整除**，不把这段条件性确认冒充完整审计，也不抢 B 的工作。
