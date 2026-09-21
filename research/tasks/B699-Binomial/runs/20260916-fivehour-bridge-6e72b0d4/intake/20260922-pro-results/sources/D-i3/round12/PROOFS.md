# PROOFS · B699 D / i=3 · 第十二轮 POWER-RESULTANT / BRIDGE4096

## P0. 范围与冻结前置

固定**同一个原始合法数对** `(n,j)`，反设它处于 `NC3`。本轮只在第十一轮留下的规范最小临界两底、真实 `mu=1`、平衡 `D_v=D_W=y` 必要核心内工作：

```math
P=Q+hv,
\qquad 2\nu=h(Q-v)-Q,
\qquad v\nu^2=PQ^2-1,
```

```math
n=PQ\nu+2=c2^s,
\qquad c\in\{1,3\},
\qquad d=Q-v,
```

```math
d^2+d+1=3y^2,
\qquad v=Ay,
\qquad W=By,
\qquad AB=3(d-1).
```

原 `P=p^a,Q=q_0^r` 是不同奇素数的完整幂；`Q>=11`，`h>=15` 为奇数，`v` 为正偶数，`nu=2H` 且 `H` 为奇数。平衡 Pell 规范为

```math
U_t+X_t\sqrt3=(2+\sqrt3)^t,
\qquad t=8q+1,
```

```math
U=U_{4q+1},
\qquad X=X_{4q},
\qquad AB=9UX.
```

第十一轮已把纯二跨块压到高二桥 `BRIDGE256`：

```math
U=2u,
\quad X=2^\rho x,
\quad \rho\ge8,
\quad m\mid9u,
\quad m\text{ 奇},
```

```math
A=2mx,
\qquad B=2^\rho\frac{9u}{m},
\qquad m<27\,2^{\rho-1},
```

```math
v_2(q)=\rho-3,
\qquad 3\nmid t,
\qquad t\equiv1\pmod{256}.
```

本轮只排除这个必要核心中的条件域。形式状态不能反向称作 `NC3`，辅助非剩余素数也不是原题共同见证。

---

## P1. 同一原输入的二次范数方程

由 `nu=2H` 与

```math
2\nu=hd-Q
```

得到

```math
h=\frac{4H+Q}{d}.
```

将它代入

```math
v(2H)^2=(Q+hv)Q^2-1
```

并使用 `Q=d+v`，得到同一原输入的整系数二次式

```math
\boxed{
F_H:=4dvH^2-4vQ^2H-(Q^4-d)=0.}                 \tag{1}
```

再定义

```math
N:=4vH^3+H+Q.
```

直接展开有

```math
2d\left(N-\frac{nQ}{2}\right)=2HF_H.
```

所以在真实输入上

```math
\boxed{N=\frac{nQ}{2}.}                         \tag{2}
```

这里没有引入新的候选 `(n',j')`；`F_H`、`N` 都由同一个原 `(n,j)` 恢复。

---

## P2. POWER-RESULTANT 恒等式

置

```math
\mathcal A=Q^3(d+4v),
\qquad
\mathcal C=Q^5-dv,
```

```math
M=H\mathcal A+\mathcal C.
```

首先有精确多项式恒等式

```math
d^2N-QM=(Hd+Q^2)F_H.                              \tag{3}
```

由 `(1)`、`(2)` 得

```math
\boxed{M=\frac{d^2n}{2}=c\,d^2 2^{s-1}.}         \tag{4}
```

再定义

```math
\begin{aligned}
L(d,v)={}&3d^6+19d^5v+50d^4v^2+70d^3v^3
          +55d^2v^4\\
       &-2d^2v+23dv^5+4v^6,
\end{aligned}
```

以及

```math
\begin{aligned}
R(d,v)={}&Q^{10}-12Q^7+15dQ^6-4d^2Q^5-4dQ^3\\
         &+12d^2Q^2-12d^3Q+4d^4,
\qquad Q=d+v.
\end{aligned}
```

第二条精确恒等式为

```math
d^2R-4vM(dM-L)=-Q^6(d+4v)^2F_H.                 \tag{5}
```

在真实输入上代入 `(1)`、`(4)`，并除以 `d^2`：

```math
\boxed{
R=c\,v\,2^{s+1}
  \left(c\,d^3 2^{s-1}-L\right).}               \tag{POWER}
```

`d` 为奇数，`v` 为偶数；而 `L` 的首项 `3d^6` 为奇数，其余各项均为偶数，所以

```math
L\equiv1\pmod2.
```

`NC3` 冻结入口已有 `s>=9`，故括号

```math
c d^3 2^{s-1}-L
```

为奇数。因此得到**精确赋值公式**

```math
\boxed{v_2(R)=s+1+v_2(v).}                       \tag{6}
```

在高二桥中 `v=2mxy`，`m,x,y` 均奇，于是

```math
\boxed{v_2(R)=s+2,
\qquad s=v_2(R)-2.}                               \tag{7}
```

这比仅要求平方目标 `Y^2=S` 更早：它不需要先开平方，就能从 `(d,v)` 唯一恢复原二幂指数候选 `s`，并继续用完整 `(POWER)` 检查 `c=1,3`。

所有展开恒等式由 `evidence/symbolic_verify.py` 独立重放。

---

## P3. 高二桥给出的统一赋值下界

高二桥中

```math
d-1=3UX=3\cdot2^{\rho+1}ux,
```

故

```math
v_2(d-1)=\rho+1,
\qquad d>2^{\rho+1}.                              \tag{8}
```

由

```math
d^2+d+1=3y^2
```

有 `y>d/2`。又 `A=2mx>=2`，所以

```math
v=Ay>d,
\qquad Q=d+v>2d.                                  \tag{9}
```

冻结平方恢复中

```math
Y=d\nu-Q^2>Q^2,
```

于是

```math
\nu=\frac{Y+Q^2}{d}>\frac{2Q^2}{d}.
```

再用 `P>Q`：

```math
n-2=PQ\nu>\frac{2Q^4}{d}>32d^3.                  \tag{10}
```

由于 `n=c2^s`、`c<=3`，由 `(8)`、`(10)`：

```math
2^s=\frac nc>\frac{32}{3}d^3>2^{3\rho+6}.
```

因此

```math
\boxed{s\ge3\rho+7.}                             \tag{11}
```

与 `(7)` 合并：

```math
\boxed{v_2(R)\ge3\rho+9.}                        \tag{12}
```

这是所有真实高二桥行的必要条件；不满足它的形式 Pell 行立即退出。

---

## P4. 2-adic Hensel 门与每行唯一乘子

写

```math
v=2a,
\qquad a=mxy\text{ 为奇数}.
```

在 `d=1` 处，`R` 精确化为

```math
R(1,2a)=8aG(a),                                    \tag{13}
```

其中

```math
\begin{aligned}
G(a)={}&128a^9+640a^8+1440a^7+1728a^6+1128a^5\\
     &+344a^4-10a^3-44a^2-11a-1.
\end{aligned}
```

而 `(8)` 给

```math
d\equiv1\pmod{2^{\rho+1}}.
```

`R(d,2a)-R(1,2a)` 被 `d-1` 整除，所以 `(12)` 至少推出

```math
aG(a)\equiv0\pmod{2^{\rho-2}}.
```

`a` 为奇数，故

```math
\boxed{G(a)\equiv0\pmod{2^{\rho-2}}.}             \tag{14}
```

模 `2` 有

```math
G(a)\equiv a+1,
\qquad G'(a)\equiv1.
```

因此 `G` 在奇 2-adic 整数中有唯一根。记它模 `2^k` 的截断为 `theta_k`，则

```math
\boxed{mxy\equiv\theta_{\rho-2}
       \pmod{2^{\rho-2}}.}                         \tag{15}
```

前几个值为

```text
theta_6=55,
theta_7=55,
theta_8=183,
theta_9=183,
theta_10=183,
theta_11=183.
```

### P4.1 固定 `q` 时至多一个乘子

固定 Pell 行 `q`，令 `chi=xy`。考虑

```math
\mathscr R_q(m)=R(d,2\chi m)/8.
```

由于 `d=1 mod16`，它是整数多项式；直接模 `2` 展开得

```math
\mathscr R_q'(m)\equiv1\pmod2
```

对每个奇 `m` 成立。普通 Hensel 提升于是给出：对任意 `N>=4`，同余

```math
R(d,2\chi m)\equiv0\pmod{2^N}
```

在奇 `m` 中至多有一个模 `2^{N-3}` 的解类。

真实输入取 `N=3rho+9`，所以乘子被压到唯一类

```math
m\equiv m_*(q)\pmod{2^{3\rho+6}}.                 \tag{16}
```

另一方面

```math
0<m<27\,2^{\rho-1}<2^{\rho+4}<2^{3\rho+6}.
```

故：

```math
\boxed{
\text{对每个固定 Pell 行 }q，
\text{至多一个正乘子 }m
\text{ 能通过 POWER 赋值门。}}                    \tag{VROW1}
```

这不是 `q` 的绝对界；它把每行的无界分配问题压成至多一个恢复候选。

---

## P5. 低六位的显式公式

令

```math
\gamma=(2+\sqrt3)^4=97+56\sqrt3
       =1+8(12+7\sqrt3).
```

写

```math
q=2^{\rho-3}w,
\qquad w\text{ 奇}.
```

由二项式展开 `gamma^q`，其 `sqrt3` 坐标即 `X_{4q}`。

* 一次项除以 `2^rho` 后贡献 `7w`；
* 二次项除以 `2^rho` 后贡献

  ```math
  32\cdot21w(q-1)\equiv32\pmod{64};
  ```

* 对 `k>=3`，使用

  ```math
  v_2\binom qk\ge v_2(q)-v_2(k)
  ```

  可知除以 `2^rho` 后的赋值至少

  ```math
  3k-3-v_2(k)\ge6,
  ```

  因而模 `64` 消失。

所以若 `X_{4q}=2^rho x`，则

```math
x\equiv32+7w\pmod{64}.                              \tag{17}
```

再令 `V=U_{4q}`。因 `X_{4q}` 被 `2^rho`、`rho>=8` 整除，Pell 方程给 `V^2=1 mod64`。而

```math
U_{4q+1}=2V+3X_{4q},
\qquad y=U_{4q+1}V-1,
```

故

```math
y\equiv1\pmod{64}.                                 \tag{18}
```

将 `(17)`、`(18)` 代入 `(15)`，并用 `theta_6=55`：

```math
\boxed{m(32+7w)\equiv55\pmod{64}.}                 \tag{ROOT64}
```

这一显式门对全部 `rho>=8` 成立。

---

## P6. `rho=8,9,10,11` 的完整有限环排除

固定 `rho` 后，真实乘子满足

```math
1\le m<27\,2^{\rho-1},
\qquad m\text{ 奇}.
```

对每个 `m`，证书按以下**完备**步骤构造全部可能 Pell 行：

1. 由 `(15)` 枚举全部

   ```math
   w\pmod{2^{\rho-2}}
   ```

   使 `mxy=theta_(rho-2)`；
2. 由 `q=2^(rho-3)w` 得到准确的 `q` 二进类；
3. 用 `3∤t` 保留 `q mod3 in {0,2}`；
4. 在 `97+56sqrt3` 模 `m` 的**首返周期**内检查 `m|9u`；
5. 以非互素 CRT 合并，得到全部基础类；
6. 对每个基础类，提升到一个或两个辅助素数的完整首返周期，并验证原平方目标

   ```math
   S=v^4+5dv^3+10d^2v^2+10d^3v+5d^4+d^2W
   ```

   是二次非剩余。

周期均为有限环内从恒等元开始的第一次返回；合数模数的周期由各素数幂周期的最小公倍数恢复。因而证书不是对某个 `q` 区间的扫描。

完整结果：

| `rho` | POWER 后仍有状态的乘子 | 基础 CRT 类 | 见证周期提升状态 | 双素数类 |
|---:|---:|---:|---:|---:|
| 8 | 139 | 201 | 219 | 0 |
| 9 | 261 | 367 | 399 | 0 |
| 10 | 482 | 678 | 714 | 0 |
| 11 | 910 | 1256 | 1344 | 1 |
| **合计** | **1792** | **2502** | **2676** | **1** |

唯一需要两个辅助素数的类是

```text
rho=11,
m=16573,
q=161957120 mod 543031296.
```

提升到共同周期 `3801219072` 后共有七个状态；素数 `41` 排除六个，素数 `71` 排除最后一个。

每个辅助素数只用于证明整数平方 `Y^2=S` 不存在，**不被称作原题共同见证**。

因此：

```math
\boxed{\rho=8,9,10,11\text{ 全部退出。}}           \tag{H8--H11}
```

第十一轮已经排除 `rho=3,...,7`，所以剩余纯二桥必须满足

```math
\rho\ge12,
\qquad v_2(q)=\rho-3\ge9,
\qquad 512\mid q,
```

从而

```math
\boxed{t=8q+1\equiv1\pmod{4096}.}                 \tag{BRIDGE4096}
```

机器证书位于 `certificates/layers_8_11.json`；`verify.py` 重新生成全部基础类并逐个重算非剩余值。

---

## P7. 原 `q=32` 弱模型的删除

第十一轮留下的首个精确弱模型为

```math
q=32,
\qquad \rho=8,
\qquad m=1.
```

该 Pell 行在乘子界内共有七个真实整除分支

```text
m=1,3,9,13,39,117,1549.
```

逐项计算 `R` 的准确 2-adic 赋值：

| `m` | `v2(R)` | `s=v2(R)-2` | 必需下界 `s>=31` |
|---:|---:|---:|---:|
| 1 | 7 | 5 | 失败 |
| 3 | 4 | 2 | 失败 |
| 9 | 6 | 4 | 失败 |
| 13 | 5 | 3 | 失败 |
| 39 | 4 | 2 | 失败 |
| 117 | 5 | 3 | 失败 |
| 1549 | 5 | 3 | 失败 |

故该整行在开平方、分解 `Q` 或检查 `n` 之前，已经被同一原输入的 POWER 赋值门删除。证书见 `q32_diagnostic.json`。

---

## P8. 返回原题与证据等级

本轮始终在 `NC3` 的同一原 `(n,j)` 上推导。若某个必要状态被 POWER 赋值、完整周期或平方非剩余排除，则该 `(n,j)` 不可能是 `NC3`，所以返回原题结论：存在某个同一素数 `p>=3` 同时整除 `C(n,3)` 与 `C(n,j)`。

本轮没有辨识这个原见证；辅助素数只用于反证平方恢复。

证据等级：冻结作者级前置，加上本轮纸面恒等式、SymPy 精确展开、标准库有限环首返证书和离线重放。没有 Lean 或外部独立审读。
