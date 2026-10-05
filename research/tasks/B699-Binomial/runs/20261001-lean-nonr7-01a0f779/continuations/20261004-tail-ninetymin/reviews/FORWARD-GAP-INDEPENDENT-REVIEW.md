# 相对链有限 forward Gap：独立源审

`RatioForward.RatioPrimeChain.near_after` 保持全部自然 y 的半开区间 `[lo,hi)`。在 step `p≤y<q` 中，`4095*q≤4096*p≤4096*y`；因为 `q>y`，Nat减法不截断，得到 `4095*(q-y)≤y`。见证 q 的实际 `Nat.Prime` 来自下一段 chain 的 first_prime；没有从上个 p 的素性推断 q。若 y≥q，则递归下一段；singleton要求 `lo≤y<lo`，域为空。末端 hi明确排除，因为最后 prime不能给 strict y<p。

两个准确候选范围分别为 `[20482069,24574447)` 和 `[20482069,40956329)`；lower inclusive、upper exclusive，输出一个实际 Nat prime、strict `y<p`、完整整数乘积 `4095*(p-y)≤y`。独立 literal源是 Gap6000ExactLegacy.lean / Gap10000ExactLegacy.lean。没有 y上界的统一Gap不由它们供应；旧64点range从10M开始也不能填其间缺口。

源审仅检查语义端点。必须 actual compile、完整传递AX、normalchecker及fixed source/object/raw/old closure绑定，方可接受该有限Gap；主完整6000/10000消费者优先，不因该可选检查推迟原预算。
