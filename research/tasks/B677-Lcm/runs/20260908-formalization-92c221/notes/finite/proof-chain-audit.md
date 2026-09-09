# 完整有限证书的可审查证明链

本说明审查最终实际使用的 Lean 定义与消费者，不把输入生成器的成功当作定理。
最终 full root 现已完整通过；验收与原始 evidence 见 `acceptance.md`。本说明的数学
审查不替代内核编译，二者的证据边界仍分别保留。

目标是全自然数 `n,m,k`，在 `0<k`、`n+k≤m`、`m<89693` 时排除相等区间 LCM。
没有端点 `m+k<89693` 的附加条件：数据的起点覆盖到 `89692`，长度覆盖到 `71`，
每行的真实区间仍延伸到其应有的 `start+k`。

## 普适精确数学

`ModularRows.interval_gcd_next` 对所有 `n,k` 证明

```text
gcd(LCM(n+1,...,n+k), n+k+1)
  = gcd(LCM(1,...,k), n+k+1).
```

对每个同时整除两者的素数幂，用 `x ↦ n+k+1-x` 把一个区间中的因子
反射到另一个区间；两向整除都在 Lean 中证明，空区间 `k=0` 单独处理。
`interval_lcm_mul_step` 因此得到精确乘法递推，`interval_lcm_mod_step`
仅在此后取模。模数 `18446744073709551557` 无需素数性质。

`ModRep` 同时固定该长度的初始 LCM 和每个起点的精确模 LCM。
第一行检查 `LCM(n+1)=n+1`；每个后续行检查上一行的精确 gcd 递推及
`A_(k+1)=lcm(A_k,k+1)`。故数据表中的每一个值都由内核检查连接到原定义。

## 排除相等所需的唯一查表性质

`representative` 是输入数据定义的确定性自然数函数。对于每个有效起点，
`hashPointCheck` 只要求

```text
representative(signature(n,k)) ≤ n < representative(signature(n,k)) + k.
```

相等 LCM 必给出相等模值，因而两次函数应用相同。两条被检查的跨度不等式
立即与 `n+k≤m` 矛盾。这是 `hash_rows_noncollision` 的全部推理。
不假设 hash 单射，不假设模值区分所有不等 LCM，也没有概率成功率前提；
不合适的数据或 hash 碰撞只能使检查无法通过。

## 覆盖与内核计算

`allTree_sound` 把完整深度 `17` 的布尔检查展开为全部 `2^17` 个起点的性质，
而 `89693≤2^17` 在 Lean 中核验。每个 Part 最多覆盖 `2^14` 个连续起点，
内部的直接计算叶块深度为 `8`。`allTree_join` 只把相邻的等长块合并；
每行的 8 个 Part 精确重建深度 `17`。只有 `n≥89693` 的填充块使用
`allTree_outside`，其阈值前提也由 Lean 证明。

第 71 行的 `Pred71` 确实使用长度 `70` 的前一行更新为 `71`，并以 `k=71`
核验跨度。最终 `certificate.Consumer` 逐行建立全部 71 个 `ModRep`，
再通过完整的有限长度分支树覆盖 `1≤k≤71`。这里的覆盖由最终定理的
Lean 证明保证，而不是通过文件名、JSON 中的计数或生成器断言保证。

全部直接值计算使用 `decide +kernel`。纯 Python 负责生成待核验数值和索引，
不能建立 Lean 命题；没有 `native_decide`、额外计算公理或省略的检查部分。

## 所有较长区间

`PrimeCertificateKernel.prime_witness_chain_checked` 检查 1372 个递增素数见证、
每个素数的 `minFac` 条件、全部相邻跨度和末端覆盖，推出对每个 `m<89693`
有素数 `m<p≤m+72`。当 `k≥72`，该素数位于后区间；
`B677.interval_lcm_ne_of_later_prime` 由分离条件排除它整除前区间 LCM。
因此最终消费者的 `k≤71` / `k≥72` 分支覆盖所有正自然数长度。

本有限链没有 Dusart 前提，也没有最终 `8/369` 大范围排除结论。
后者由主线程把此有限定理与初等界、显式外部 Dusart 输入整合。
