# HANDOFF · B699 D / i=3 · 第十一轮后

## 唯一接续范围

继续同一个原始合法 `(n,j)` 的规范最小临界两底、真实 `mu=1`、平衡 `D_v=D_W=y` 必要核心。不要把本轮结论扩成一般两底或整个 `i=3`。

冻结变量：

```math
P=Q+hv,
\quad 2\nu=h(Q-v)-Q,
\quad v\nu^2=PQ^2-1,
```

```math
n=PQ\nu+2=c2^s,
\quad d=Q-v,
\quad d^2+d+1=3y^2,
```

```math
v=Ay,
\quad W=By,
\quad AB=3(d-1).
```

Pell 规范：

```math
U_t+X_t\sqrt3=(2+\sqrt3)^t,
\quad t=8q+1,
```

```math
U=U_{4q+1},
\quad X=X_{4q},
\quad AB=9UX.
```

## 已完成，不要重跑

1. 第十轮：`d<357B^2`、`3∤t`、`B∤9X`、`B∤9U`，因此 BLOCK-MIX。
2. 本轮 TWO-END：纯二跨块只剩低二端点或高二端点。
3. LOW2：低二端点全排；其中 `m=9` 是统一纸面排除，不是有限状态表。
4. 高二端点 `rho=3,4,5,6,7` 全排；299 个完整状态已有证书。
5. 不能把辅助非剩余素数当原题共同见证。

## 当前准确前沿

平衡 BLOCK-MIX 只剩两类。

### A. odd--odd

`B_U` 与 `B_X` 均有非平凡奇部分。当前没有统一界住这些奇素数及其完整指数。

### B. 高二桥 BRIDGE256

```math
U=2u,
\quad X=2^\rho x,
\quad \rho\ge8,
\quad m\mid9u,
\quad m\text{ 奇},
```

```math
A=2mx,
\quad B=2^\rho\frac{9u}{m},
\quad m<27\,2^{\rho-1},
```

```math
v_2(q)=\rho-3\ge5,
\quad t=8q+1\equiv1\pmod{256},
\quad B_X=2^{\rho-1}.
```

精确弱模型位于 `certificates/remaining_weak_model.json`：`q=32,t=257,rho=8,m=1`。它通过上述门但平方目标非平方。

## 下一轮最高价值路线

### 首攻：高二桥接原完整素数幂

目标不是继续逐层扩表，而是利用：

* `t=1 mod256`；
* `m<27*2^(rho-1)`；
* `Q=d+Ay`、`P=Q+hv` 必须是来自原两底的完整素数幂；
* `Y^2=S`；
* `n=c2^s`。

优先寻找一个对全部 `rho>=8` 的估值、进位或轨道冲突，或把 `rho` 取得绝对界。

首个可否证实验应从 `(q,rho,m)=(32,8,1)` 的弱模型出发，逐项接入 `Q` 素数幂、平方恢复和 `n=c2^s`，检查哪条约束最早破坏模型；不要把弱模型本身当反例。

### 次攻：odd--odd 完整奇块

尝试证明两块上的奇缺额不能同时满足平方范数，或把其中一个完整奇块运输到原 `Q/P` 的共同支持。必须保留同一个原 `(n,j)` 和完整素数幂，不能只做支持集合计数。

## 仍无界参数

`q,t,rho,m,d,y,A,B,h,P,Q,v,nu,n,s`，以及原底素数和完整指数。R7 不变。

## 重放入口

```bash
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

仓库权限：只读研究；不要修改、提交、推送或发布仓库。
