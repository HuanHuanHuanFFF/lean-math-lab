# PROOFS · B699 D / i=3 · 第十一轮 TWO-END / BRIDGE256

## P0. 范围、冻结前置与符号

固定**同一个原始合法数对** `(n,j)`，令 `k_0=n-j`；反设它处于 `NC3`。本轮不重建此前全链，只采用第十轮冻结的规范最小临界两底、真实 `mu=1`、平衡必要核心：

```math
P=Q+hv,
\qquad 2\nu=h(Q-v)-Q,
\qquad v\nu^2=PQ^2-1,
```

```math
n=PQ\nu+2=c2^s,
\qquad j=(P+\nu)Q^2,
\qquad k_0=(Q^2+v\nu)P,
```

```math
d=Q-v\ge17,
\qquad d\equiv1\pmod{16},
\qquad Q/3<v<Q.
```

平衡分拆写成

```math
d^2+d+1=3y^2,
\qquad v=Ay,
\qquad W=By,
\qquad AB=3(d-1).
```

Pell 规范为

```math
U_t+X_t\sqrt3=(2+\sqrt3)^t,
\qquad U_t=2y,
\qquad d=(3X_t-1)/2,
\qquad t=8q+1.
```

为避免与原 `k_0=n-j` 混淆，本轮将 Pell 指数参数记为 `q`。置

```math
a=4q+1,
\qquad b=4q,
\qquad U=U_a,
\qquad X=X_b.
```

第十轮已经证明

```math
AB=9UX,
\qquad 3\nmid t,
\qquad d<357B^2,
```

以及真混合必要条件

```math
B_U:=B/\gcd(B,9X)>1,
\qquad
B_X:=B/\gcd(B,9U)>1.
```

还可直接使用第十轮由同一正根得到的整数逼近：

```math
J=16Ad+120y+27B-4Bh\in\mathbb Z,
```

```math
\left|J-40\sqrt3\right|
<\frac{8B^2+44+48/B}{d}.                       \tag{IRR-J}
```

平方恢复的必要条件写为

```math
Y^2=S
:=v^4+5dv^3+10d^2v^2+10d^3v+5d^4+d^2W.       \tag{SQ}
```

本轮只排除上述必要核心中的条件域；必要核心中的形式点不能反向称作 `NC3`。

---

## P1. 相邻 Pell 块的准确二进结构

### P1.1 `U_a` 与 `X_b` 的赋值

Pell 坐标满足递推

```math
U_{r+2}=4U_{r+1}-U_r,
\qquad
X_{r+2}=4X_{r+1}-X_r.
```

由 `U_0=1,U_1=2` 的模 `4` 周期，所有奇指标都有

```math
U_{2m+1}\equiv2\pmod4.
```

因此

```math
\boxed{v_2(U_a)=1.}                                  \tag{1}
```

另一方面

```math
X_{2m}=2U_mX_m.
```

奇指标的 `X_m` 为奇数；第一次倍增时 `U_m` 恰含一个 `2`，以后偶指标的 `U_m` 为奇数。逐次倍增即得，对任意偶数 `r`，

```math
v_2(X_r)=v_2(r)+1.
```

故

```math
\boxed{v_2(X_b)=v_2(q)+3=:\rho\ge3.}                 \tag{2}
```

### P1.2 两块的最大公因数

若奇素数 `ell` 同除 `U_a` 与 `X_b`，由

```math
U_a=2U_b+3X_b
```

得到 `ell|U_b`；但 Pell 方程在 `ell|X_b` 下给 `U_b^2=1 mod ell`，矛盾。因此两者无奇公共因子。结合 (1)、(2)：

```math
\boxed{\gcd(U_a,X_b)=2.}                              \tag{3}
```

---

## P2. 纯二跨块只能落在两个端点

所谓**纯二跨块**，指 `B_X` 没有奇素因子。因第十轮已有 `B_X>1`，它是非平凡二幂。

写

```math
U=2u,
\qquad X=2^\rho x,
```

其中 `u,x` 为奇数。将

```math
B=2^\beta C,
\qquad C\mid9u,
\qquad m=9u/C
```

规范化；于是 `m` 为正奇数，且

```math
\boxed{
A=2^{\rho+1-\beta}mx,
\qquad
B=2^\beta\frac{9u}{m}.}                              \tag{4}
```

记

```math
\alpha=v_2(A)=\rho+1-\beta.
```

原 `A` 为偶数，故 `alpha>=1`；而 `B_X>1` 等价于 `beta>=2`。

在平方目标 (SQ) 中，`d,y` 均为奇数。若同时

```math
\alpha\ge2,
\qquad
\beta\ge3,
```

则除常数项外的全部项都被 `8` 整除，于是

```math
S\equiv5d^4\equiv5\pmod8,
```

不可能为奇平方。故必有

```math
\boxed{\beta=2\quad\text{或}\quad\alpha=1.}          \tag{TWO-END}
```

两个端点分别为：

* **低二端点 `L2`**

  ```math
  \boxed{A=mX/2,
  \qquad B=18U/m.}                                    \tag{L2}
  ```

* **高二端点 `H2`**

  ```math
  \boxed{A=mX/2^{\rho-1}=2mx,
  \qquad B=2^{\rho-1}9U/m.}                           \tag{H2}
  ```

这一步没有假设 `m`、`rho` 或 Pell 指数有界。

---

## P3. 利用 `J` 的二进格点改进乘子界

沿用第十轮的粗比较

```math
d>\frac6{13}U^2.                                      \tag{5}
```

### P3.1 低二端点

在 `L2` 中，`v_2(B)=2`、`v_2(A)>=2`。因为 `y,h` 为奇数，直接在 `J` 的定义中取模 `16`：

```math
J\equiv4\ \text{或}\ 12\pmod{16}.                   \tag{6}
```

这些同余类中离 `40sqrt3` 最近的整数是 `68`，故

```math
|J-40\sqrt3|
\ge40\sqrt3-68
=\frac{176}{40\sqrt3+68}
>\frac{88}{69}.                                       \tag{7}
```

先只用 `B>=4`：

```math
8B^2+44+48/B\le\frac{23}{2}B^2.
```

由 IRR-J 与 (7)，

```math
d<10B^2.
```

将 `B=18U/m` 与 (5) 联立，得

```math
m^2<7020,
\qquad m\le83.
```

真实分支中 `q=1` 已被 `3|t` 排除，所以 `q>=2`，从而

```math
U\ge U_9=70226,
\qquad B=18U/m>8.
```

于是可把 IRR-J 的分子加强为

```math
8B^2+44+48/B<9B^2.
```

再次合用 (7)：

```math
d<\frac{621}{88}B^2<8B^2.
```

代回 (5) 后

```math
m^2<5616<75^2.
```

`m` 为奇数，因此

```math
\boxed{m\le73\quad\text{在整个低二端点中成立}.}     \tag{8}
```

### P3.2 高二端点，`rho=3`

此时 `v_2(A)=1,v_2(B)=3`。在 `J` 中：`16Ad` 被 `32` 整除；`120y` 与 `B(27-4h)` 均为 `8 mod16`，所以

```math
J\equiv0\pmod{16}.                                    \tag{9}
```

最近的格点是 `64`，并且

```math
|J-40\sqrt3|
\ge40\sqrt3-64
=\frac{704}{40\sqrt3+64}
>\frac{352}{67}.                                      \tag{10}
```

这里 `B>=8`，IRR-J 的分子小于 `9B^2`，故

```math
d<\frac{603}{352}B^2<2B^2.
```

由 `B=36U/m` 与 (5)：

```math
m^2<5616,
\qquad
\boxed{m\le73.}                                       \tag{11}
```

### P3.3 高二端点，`rho>=4`

此时 `16Ad` 被 `32` 整除，`B(27-4h)` 被 `16` 整除，而 `120y=8 mod16`：

```math
J\equiv8\pmod{16}.                                    \tag{12}
```

最近格点为 `72`，故

```math
|J-40\sqrt3|
\ge72-40\sqrt3
=\frac{384}{72+40\sqrt3}
>\frac{192}{71}.                                      \tag{13}
```

仍由分子 `<9B^2`，

```math
d<\frac{639}{192}B^2<4B^2.                           \tag{14}
```

把

```math
B=2^{\rho-1}9U/m
```

与 (5) 联立，得到

```math
m^2<702\,2^{2\rho-2}.
```

因 `sqrt(702)<27`：

```math
\boxed{m<27\,2^{\rho-1}.}                             \tag{15}
```

这仍是相对界；`rho` 尚未统一有界。

---

## P4. 低二端点的完整排除

由 (8)，只需处理奇数

```math
1\le m\le73.
```

对固定 `m`，令

```math
\beta_q=(U_{4q},X_{4q})=(97+56\sqrt3)^q.
```

它在有限环模 `m` 中可逆。从单位状态迭代至第一次返回，因此得到完整周期，而非前缀采样。分支整数性是

```math
m\mid18U_{4q+1},
```

并同时保留第十轮条件

```math
q\not\equiv1\pmod3.
```

37 个奇乘子中：

* 29 个在完整有限环周期内没有任何分支状态；
* `m=9` 由 P5 的统一纸面证明排除；
* 其余七个乘子

  ```text
  1,3,13,37,39,61,73
  ```

  共有 38 个完整首返状态，全部由精确二次非剩余证书排除。

证书见 `certificates/low_endpoint.json`。对见证素数 `ell`，计算在模 `m ell` 中完成：先验证商的分子整除 `m`，再恢复

```math
B=18U/m\pmod\ell,
\qquad
A=mX/2\pmod\ell.
```

因此没有在模 `ell` 中非法除以 `m`。若 (SQ) 是整数平方，则模每个 `ell` 必为平方或零；证书在每个状态给出一个 `ell` 使 Legendre 符号为 `-1`。

---

## P5. `m=9` 的统一无界排除

这里

```math
A=9X/2,
\qquad B=2U.
```

再记 `V=U_b`。相邻 Pell 恒等式给

```math
U=2V+3X,
\qquad d=1+3UX,
\qquad y=UV-1.
```

第九轮正根中心

```math
R_0=12(d^2-d)/B^2+30y/B+27/4
```

在本支中准确化为

```math
R_0-10\sqrt3/B
=27X^2+15V+\frac{27}{4}
 +\frac{9X-15-5\sqrt3}{U}.                            \tag{16}
```

置

```math
f=\frac{9X-15-5\sqrt3}{U}.
```

真实 `q>=2`，故 `b>=8` 且

```math
X\ge X_8=10864>384.
```

由 `V^2=3X^2+1`：

```math
\frac32X<V<\frac74X,
\qquad
6X<U<\frac{13}{2}X.
```

又 `15+5sqrt3<24`，所以

```math
f>\frac{2(9X-24)}{13X}>\frac{11}{8},
\qquad
f<\frac{9X}{U}<\frac32.                              \tag{17}
```

令 `N=27X^2+15V`。由 (16)、(17)，中心严格位于

```math
N+8+\left(\frac18,\frac14\right).                    \tag{18}
```

另一方面，IRR 的误差在本支中为

```math
E=\frac{4U+11/(2U)+3/U^2}{d}
<\frac5{3X}<\frac18.                                  \tag{19}
```

因此整数 `h` 不可能落在该开区间的误差邻域中。于是 `m=9` 的全部无界 Pell 状态退出；没有有限末端。

结合 P4：

```math
\boxed{\text{低二端点 }L2\text{ 完全排除}.}          \tag{LOW2}
```

---

## P6. 高二端点的前五个二进层完全排除

在高端点中，

```math
A=mX/2^{\rho-1},
\qquad
B=2^{\rho-1}9U/m.
```

固定 `rho` 时，准确层条件为

```math
v_2(q)=\rho-3,
```

等价于

```math
q\equiv2^{\rho-3}\pmod{2^{\rho-2}}.
```

将它、第十轮的 `q!=1 mod3`、乘子整除条件以及 `beta_q` 的首返周期放进同一个有限环账本。P3 给出的完整乘子范围是：

| `rho` | 严格范围 | 奇乘子数 | 有分支的乘子 | 无分支乘子 | 被非剩余消费的首返状态 |
|---:|---:|---:|---:|---:|---:|
| 3 | `m<75` | 37 | 8 | 29 | 17 |
| 4 | `m<216` | 108 | 15 | 93 | 35 |
| 5 | `m<432` | 216 | 25 | 191 | 42 |
| 6 | `m<864` | 432 | 44 | 388 | 69 |
| 7 | `m<1728` | 864 | 78 | 786 | 136 |

总计 299 个完整首返状态，全部被确定性二次非剩余证书覆盖。绝大多数乘子只需一个小素数；最复杂的是

```text
rho=7, m=373,
```

其 10 个全局状态由

```text
1489, 11, 79
```

分别消费 `5,3,2` 个。

证书见 `certificates/high_layers.json`。与 P4 相同，所有含 `m` 的商都在模 `m ell` 中先做整除再恢复；层条件、`q mod3` 与 Pell 周期取最小公倍数，因此证书没有漏掉周期提升。

由此：

```math
\boxed{\rho=3,4,5,6,7\text{ 全部排除}.}              \tag{H3--H7}
```

---

## P7. BRIDGE256：纯二跨块的最新准确前沿

若纯二跨块仍存在，LOW2 与 H3--H7 强迫

```math
\rho\ge8.
```

由 (2)：

```math
v_2(q)=\rho-3\ge5,
\qquad 32\mid q.
```

所以 Pell 指数满足

```math
\boxed{t=8q+1\equiv1\pmod{256}.}                     \tag{BRIDGE256}
```

而且剩余纯二桥只能具有**唯一的高端点规范**：

```math
\boxed{
U=2u,
\quad X=2^\rho x,
\quad \rho\ge8,
\quad m\mid9u,\ m\text{ 奇},}
```

```math
\boxed{
A=2mx,
\qquad
B=2^\rho\frac{9u}{m},
\qquad
m<27\,2^{\rho-1}.}                                   \tag{20}
```

在这一区域中

```math
B_X=2^{\rho-1},
```

而 `B_U>1` 仍来自原 U 块。该结论是真实无界区域缩减，但不是 `rho` 的绝对上界。

因此，整个平衡 BLOCK-MIX 现在准确分为：

1. **odd--odd：** `B_U,B_X` 都含非平凡奇部分；
2. **高二桥：** (20)，且 `t=1 mod256`。

低二桥以及高二桥前五层不再属于前沿。

---

## P8. 剩余高二桥的精确弱模型

取

```text
q=32,
 t=257,
 rho=8,
 m=1.
```

由 (20) 唯一得到 `A,B`；它满足：

* 平衡 Pell 与 `AB=3(d-1)`；
* `d<357B^2`；
* `B_U>1,B_X=128`；
* `v_2(A)=1,v_2(B)=8`；
* `3` 不整除 `t`，且 `t=1 mod256`。

但其平方目标严格落在相邻整数平方之间；完整整数与两个正间距位于 `certificates/remaining_weak_model.json`。所以它没有恢复整数 `Y,nu,h,n,j`，不是 `NC3` 或原题反例。

它准确否定的是：

> “BRIDGE256 的支持、赋值和大小条件本身已经足以恢复原输入。”

下一步必须继续接原平方范数、`Q/P` 的完整素数幂性质或 `n=c2^s`，不能只继续做二进层分类。

---

## P9. 原题回传与证据等级

反设同一原 `(n,j)` 处于 `NC3` 并通过冻结桥进入 P0。若其平衡真混合分配属于纯二跨块，则 P2 将其压到两个端点；P4--P5 排除低端点，P6 排除高端点 `rho=3,...,7`。故任何仍可能来自原输入的纯二桥必须满足 BRIDGE256。

对于被排除的条件域，反证返回原题：原数对必存在某个同一素数 `p>=3` 同除 `C(n,3)` 与 `C(n,j)`。有限证书中的辅助素数只否定平方必要条件，**不登记为原题见证**。

本轮证据等级为：冻结作者级入口＋新纸面证明＋完整首返周期/非剩余证书＋离线重放。没有 Lean、外部独立审读或全仓历史消费者并集净差审计。
