# 后续 Codex 的形式化接口

以下为**建议的新接口及其精确数学规格**，不是已存在的 Lean 定理名，也不是已经编译的源码。实施范围只限 `n=4j`。

## 0. 定义与基线复用

统一使用目标

```text
Common4(i,j) := exists p, Prime(p) and i<=p
                        and p | choose(4*j,i) and p | choose(4*j,j).
```

保留基线实际 `V`、`D/avoidingPart` 的完整指数定义。优先读取并复用固定版本的 `PrimePowerTransfer.lean`、`SmallPartBound.lean`、`GapBridge.lean` 中相关实现；这些名称来自已读取的报告，不在此猜测其中具体的现有 lemma 名。

新定义可取：

```text
s(i) = card {p in [0,i) : Prime(p)}        -- p<i，不是 p<=i
z(i) = (i+3) / 4                         -- 自然数整除
E(i) = i - s(i) - z(i)                   -- 消费前先证明无截断问题与 E>=1
K4(i) = product of primes p>i with
        ((p%3=2 and p<=3*i-7) or (p%3=1 and p<=3*i-11)).
```

支撑端点建议先在整数上写清，再证明与自然数版本等价；对 `3≤i<4` 等小边界不得依赖静默截断。

## 1. `slopeFourAvoidingPart_dvd`

输入：自然数 `3≤i<j`。输出：

```text
D(4*j,i,j) | K4(i) * choose(j,z(i)).
```

关键子接口：实际 `Q=p^(e+δ)` 定位；零分支完整幂的互素乘合；非零分支 `Q=p, p>i, e=1`；`t=1 or t=2` 的模 3 支撑分类。这里不应要求 noCommon。

## 2. `slopeFourHeightExponent_pos`

输入：`3≤i`。输出：

```text
s(i) <= i/2
E(i) >= ceil(i/2)-ceil(i/4) >= 1.
```

这是本轮最直接可独立消费的低指标结构：没有有限异常表。

## 3. `slopeFourNoCommon_height`

输入：`3≤i<j` 与 `not Common4(i,j)`。输出两个整数结论：

```text
choose(4*j,i) <= (4*j)^s(i) * K4(i) * choose(j,z(i))
3^i * factorial(z(i)) * j^E(i)
    < K4(i) * 4^s(i) * factorial(i).
```

第一个重用小素数部分上界，第二个只需要下降阶乘估计。不要把 EEES 加回这个接口。

## 4. 高度截止表消费者

证书记录 `(i,s,z,E,K_factors,K,J)` 必须验证：

```text
s=s(i), z=z(i), E=E(i)>=1, K=K4(i)
A=3^i*factorial(z), R=K*4^s*factorial(i)
A*J^E < R <= A*(J+1)^E.
```

于是 noCommon 蕴含 `j≤J`。统一小指标线性界另外核对

```text
A*(1024*i)^E >= R   for all 3<=i<=1023.
```

不需要在 Lean 内构造巨大二项式证明这些截止；这是整数幂和阶乘比较。可以先实现证书判定器、正确性定理，再分块证明表的判定值，避免一个超大内核项。

## 5. 解析消费者，外部假设必须透明

把 `sources.md` 中 theta、pi、短区间三个精确声明作为明确的输入定理，或接入真正已经证明的形式化版本，不得新加无标注公理冒充闭合。

先实现 `i≥1024` 时的对数比较与固定有理数证书，得到 `n<4096i`。再连接短区间定理，得到 `n≤528980`。输入来源不是原有 `i≥10^6` 判别式结果。

## 6. 素数覆盖消费者

全局区间 `(a,b,p)`：检查 `Prime(p)`、`p≤a≤b`、两端为 4 的倍数、`b−p≤G`、区间链无缝覆盖。这将所有相关反例限制到 `i≤G`。

固定 i 的省略区间 `(i,a,b,p)`：检查 `i<a≤b`、`Prime(p)`、`p≤4a`、`4b−i<p`。这给出整个 j 区间的 Common4，而非只证明两个端点。

剩余见证 `(i,j,p)`：检查 `Prime(p)`、`i≤p`，以及两个实际二项式的整除。也可用已经证明正确的 Legendre/进位判定器，但必须允许高次幂进位。

最后验证省略区间和剩余记录恰好覆盖所有
`3≤i≤35, i<j≤min(J(i),3735)`，再向上连接三组不同的覆盖域。

## 7. 最终消费者

`i=1,2` 使用 `p=2` 的直接公式，其余连接上述链，得到 `forall i j, 1<=i -> i<j -> Common4(i,j)`。

建议先提交 T4/POS/H4 的独立、无解析依赖部分，再接证书消费者，最后处理解析来源。纸面数学层已经闭合；尚需的工作是这些接口和依赖的实际形式化验收，不是再做新的无界参数搜索。
