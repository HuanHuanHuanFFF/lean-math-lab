# 保留 jk 因子的判别式递推接口

这是对已验源码和旧纸面来源的静态复用核对，不是新的 Lean 验收或新范围定理。固定基线为 main `48836e312dc8f2550dcd19f5c241507c9d48639b`。

令 `F=B699Height.coefficientPolynomial n i j`、`k=n-j`、`Δ=(i!)^(2(i−1)) |Disc(F)|`。足够域条件为自然数 `1≤i`、`i≤j`、`i≤n-j`、`j≤n`；原题条件蕴含这些条件。源码参数顺序是 n、i、j。

高度批 [ScaledDiscriminant.lean](../../20260909-discriminant-height-9d40056a/lean/ScaledDiscriminant.lean) 中的 `scaledDiscriminant_step` 已证明

\[
\Delta(n,i,j)=i^i j^{i-1}(k)_{i-1}(n-1)_{i-1}\Delta(n-1,i-1,j-1).
\]

关键是降阶时 j 也减一，k 不变。保留 jk 而不立即用 n 替代两者，可先界为 `i^i(jkn)^(i−1)Δ(n−1,i−1,j−1)`。由已有 i=1 基例及归纳，令 `H_i=∏_{ν=1}^i ν^ν`、`B=i(i−1)/2`，得到 `Δ≤H_i(jkn)^B`。再用 `4jk≤n²` 和 `H_i²≤i^(i(i+1))`，可得到无除法平方目标

\[
4^{i(i-1)}\Delta^2\le i^{i(i+1)}n^{3i(i-1)}.
\]

i=1 为等号；i=0 不在本次确认域内。这个上界不需要 noCommon 或任何素数分布假设。现有 `scaledDiscriminant_sq_le` 只有删掉左端4因子的粗界；以上是可由同一递推供给的待实现消费者，尚未编写或验收。

旧 [arithmetic-bound.md](../../20260909-large-prime-structure-cb4764f0/notes/discriminant/arithmetic-bound.md) 已通过 Jacobi 闭式给出等价纸面界。因此新增价值是替换闭式公式依赖的接口说明，不能记为新数学范围。当前三窗口主线不需要它，应作备用，不因此更换低指标任务。

## 素数供应备选的限制

上传报告提出 Dusart 2018 和 RS＋Trudgian 的替代消费者；本次没有重查其原论文、外部项目或未附带脚本，不把它们录为新供应证明。比较报告所写区间长度即可发现：`1/log³x` 比 `1/(25log²x)` 更窄当且仅当 `log x>25`，所以“始终更锐”的概括不成立。门槛是否更有利和特定消费者是否够用必须分开核对。

原报告使用了已过时的中指标前沿，且全球优先权无法由其有限搜索认证，这些内容不采用。对新探索，只保留原题的精确约束：同一个共同素数、阈值包含 p=i、小素数部分需要完整幂。单个二项式的大素因子或 gcd 大小本身不够，但若有新的共同支撑桥或小素数部分控制，相关方法仍可组合使用。
