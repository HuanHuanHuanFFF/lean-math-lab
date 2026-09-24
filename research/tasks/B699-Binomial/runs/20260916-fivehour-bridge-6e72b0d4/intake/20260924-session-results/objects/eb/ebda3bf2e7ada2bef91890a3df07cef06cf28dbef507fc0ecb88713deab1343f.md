# 接续入口

## 冻结范围

继续同一原 `(n,j)`、规范最小临界两底、真实 `mu=1`、平衡 `D_v=D_W=y`。保留完整平方范数、`P/Q` 完整奇素数幂及 `n=c2^s`。

## 新接口

```math
(n-3)^2=5 (mod y),
n/2=((n-2)/2)^2 (mod y),
y=U_t/2.
```

所以每个 `ell|y`：

```math
ell=1 or 49 (mod60),
```

若 `s` 偶：

```math
ell=1 or 49 (mod120).
```

一般 BAD-RANK 消费者：若 `r|t` 且某素数 `ell|U_r` 不在允许余类，则整条 Pell 行退出。

## 已删除的无界 q 行

```text
q mod 23 = 20
q mod 31 = 27
q mod 47 = 41
q mod 59 = 22
q mod 61 = 38
q mod 67 = 25
q mod 71 = 62
q mod101 = 63
```

这些删除适用于 BRIDGE4096，也适用于平衡 odd--odd。

## 不要重试

不要把 POWER 奇部和同一个平方范数再做普通判别式/resultant；二者的代数依赖已精确验证。

## 下一步

首选把 `m|9u` 或完整 POWER 奇部接入，证明 VROW1 唯一乘子迫使某个 BAD-RANK `r|t`；否则对 odd--odd 两侧奇缺额寻找同样的 rank/support 强制。不要机械枚举 rho。
