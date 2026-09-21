# HANDOFF · B699 D / i=3 · 第十二轮后

## 唯一接续范围

继续同一个原始合法 `(n,j)` 的规范最小临界两底、真实 `mu=1`、平衡 `D_v=D_W=y` 必要核心。不要把本轮结果扩成一般两底或整个 `i=3`。

冻结：

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

## 本轮新增，直接采用

### 1. POWER-RESULTANT

令 `nu=2H`，定义

```math
R=Q^10-12Q^7+15dQ^6-4d^2Q^5-4dQ^3
  +12d^2Q^2-12d^3Q+4d^4,
```

```math
L=3d^6+19d^5v+50d^4v^2+70d^3v^3+55d^2v^4
  -2d^2v+23dv^5+4v^6.
```

同一个原输入满足

```math
R=c v 2^(s+1) (c d^3 2^(s-1)-L),
```

所以

```math
v2(R)=s+1+v2(v).
```

高二桥中 `v2(v)=1`，且

```math
s>=3rho+7,
\qquad v2(R)>=3rho+9.
```

### 2. 每行唯一乘子

写 `v=2mxy`。固定 Pell 行 `q` 后，满足 POWER 赋值门的正乘子

```math
0<m<27*2^(rho-1)
```

至多一个。低层必要门为

```math
mxy=theta_(rho-2) mod 2^(rho-2),
```

其中 `theta` 是多项式 `G` 的唯一奇 2-adic 根。全部公式见 `PROOFS P4`。

### 3. H8--H11 已闭

本轮以完整周期＋平方非剩余排除

```math
rho=8,9,10,11.
```

不要重跑这些层，也不要重新把 `q=32,m=1` 当作障碍。

## 当前准确前沿

平衡 BLOCK-MIX 只剩：

### A. odd--odd

`B_U,B_X` 均有非平凡奇部分；奇素数和完整指数仍无界。

### B. BRIDGE4096

纯二高桥必须满足

```math
rho>=12,
\quad v2(q)=rho-3>=9,
\quad 512|q,
\quad t=8q+1=1 mod4096.
```

并继续满足

```math
U=2u,
\quad X=2^rho x,
\quad m|9u,
\quad m\text{ 奇},
```

```math
A=2mx,
\quad B=2^rho 9u/m,
\quad m<27*2^(rho-1).
```

每个固定 `q` 至多一个 POWER 乘子候选，但 `q,rho` 仍无界。

## 下一轮最高价值方向

1. **不要机械扩固定 `rho` 表。** 首攻完整 POWER 奇部：

   ```math
   R/[v 2^(s+1)]
   =c(c d^3 2^(s-1)-L),
   \qquad s=v2(R)-2.
   ```

   尝试与 `m|9u`、原 `Q/P` 完整素数幂或 Pell 相邻块联立，统一排除 `rho>=12`。

2. 检查 POWER 唯一乘子是否能在实大小界下迫使某个固定奇模冲突，或取得 `rho` 绝对界。

3. 若高桥路线停滞，转攻 `odd--odd`，但保留完整奇幂；不要只做支持集合计数。

## 已知失败边界

存在 `rho=8,m=1` 的有限精度 2-adic 壳满足 `R=0 mod2^33`。所以仅增加 2-adic 精度不是全局闭合。详见 `FAILURES.md`。

## 重放

```bash
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

仓库只读：不要修改、提交、推送或发布。
