# 独立数学与 Lean 题面对照审查

负责人：`independent_review`。审查检查点：2026-09-08T17:59Z；约定检查点 18:09Z，原总截止 19:41:06.887Z。唯一写入为本报告。已读 `AGENTS.md`、`docs/STRUCTURE.md`、`lean-research` skill 和题目入口。没有运行 Lean、构建、修改源码、修改 Git 索引或分支、启动其他 Agent；新源码闭包编译和可执行传递公理守卫由主任务负责。

原题按给定的自然数域核对：`1 ≤ i < j ≤ n / 2`，结论是存在素数 `p ≥ i` 整除 `gcd(C(n,i), C(n,j))`。接受已验收的实际完整素数幂转移和 B686 轮筛定理，只检查本批的调用及其假设；没有重新审计整批旧证明或外部论文。全局 EEES 输入按任务包给定的精确版本核对。

本次有界审查未发现四份源码中的数学阻断项、循环假设或与上述候选声明不一致的域。具体依据如下。

| 声明 | 核对结果与边界 |
|---|---|
| `smallPrimePart` / `primePart` / `prime_part_split` | 小部分使用 `p < i`，大部分使用 `i ≤ p`；都使用 `a.factorization p` 的完整素数幂。乘积拆分显式要求 `a ≠ 0`；本批消费者由 `i ≤ n` 给 `C(n,i) > 0`，没有使用零的分解。 |
| `EEES1978` | 量词为所有 `n,i : ℕ`，显示假设 `1 ≤ i`、`2*i ≤ n`、不在十二个给定例外中；结论为真实 `U < V`。它是 `Prop` 定义和定理的显式参数，没有在这四个文件中被当作已证明事实。 |
| `exceptional_common` | 精确使用给定十二对。对每对证明 `n-i < p ≤ n`，再由合法 `j` 推出 `j < p` 与 `n-j < p`，从而同一素数整除两个二项式系数。无需 EEES。两行 `(9,4)`、`(10,5)` 没有合法 `j`；其余十行确实有输入。 |
| `vandermonde_lower_bound` | 在合法 `i<j≤n/2` 及 `2*j≤3*i` 下证明 `C(j,i)^2 ≤ C(n,i)`。选择 `⌊i/2⌋` 与 `i-⌊i/2⌋` 的 Vandermonde 项，单调性假设均由这些条件推出；没有暗加 `i` 为偶数。无需 EEES。 |
| `counterexample_bounds` / `counterexample_size` / `common_of_twice_j_le_three_i` | 反例先通过 `exceptional_common` 排除例外，再由 EEES 得 `C(n,i)<V²`，由已采用的 `V ∣ C(j,i)` 及正性得 `V≤C(j,i)`。故平方必要条件和 Vandermonde 区域的原题消费者都保留显式 `heees` 参数，不能作为无条件全域结果报告。 |
| `small_prime_part_le_pow` / `four_mul_primes_below_le` | 令 `t=#i.primesBelow=π(i-1)`。mathlib 的逐素数幂界只要求 `n>0`，给 `U≤n^t`。轮筛应用于 `i-1` 后给 `77t≤16i+600`；`i≥185` 蕴含 `2400≤13i`，所以 `4t≤i`。没有把 `π(i)` 错用为 `π(i-1)`。 |
| `small_prime_part_lt_large_of_quadratic` | 显式域 `i≥185`、`i²<n` 已蕴含正性、`i≤n` 和 EEES 常用域 `2i≤n`。结合 `2t≤⌊i/2⌋` 与幂/二项式下界得 `U²<C(n,i)=UV`，从而 `U<V`。没有 EEES 前提，也不要求额外的非例外条件。 |
| `choose_ratio_lower_bound` | 在一般域 `i≤j≤n` 上证明 `n^i*C(j,i)≤j^i*C(n,i)`。归纳从 `j` 开始，每步取消的 `N+1-i` 为正，目标方向与逐因子不等式 `n(j-r)≤j(n-r)` 一致。 |
| `counterexample_scaled_power` / `common_of_fourth_lt_cube` | 实际转移和 `U≤n^t` 给 `C(n,i)≤n^t*C(j,i)`；与比值界联立并取消正的 `C(j,i)` 得 `n^i≤j^i*n^t`。在 `i≥185` 及 `j⁴<n³` 时取四次方，得到 `n^(4i)≤j^(4i)*n^(4t)<n^(3i)*n^i=n^(4i)`。这一消费者保持完整合法域和原题 gcd 结论，既没有 EEES 参数，也没有 `n>i²` 或 `2j≤3i` 参数。 |

额外的只读整数核对使用 Python 标准库 `math.comb`、`math.gcd` 和试除素性检验，独立于 Lean 主定理：十二行的素数见证依次为 `7,7,7,11,19,19,29,31,31,31,31,53`，覆盖全部 41 个合法三元组，全部通过。这只是有限题面对照；无限域的证明仍以源码及主任务的内核验收为准。边界示例 `(n,i,j)=(10,3,5)` 的 gcd 为 `12`，其中唯一满足 `p≥i` 的素数是 `p=i=3`，确认保留端点有实际意义。`(2000,185,186)` 满足合法域与 `j⁴<n³`，但不满足 `i²<n`，因此新区域确实不以二次尾部为隐藏前提；`(40000,185,186)` 则给二次尾部消费者的一个非空输入。

就本批这些声明而言，全局 EEES 仍剩 `1≤i<185` 的一般无界 `n`，以及 `i≥185, 2i≤n≤i²`；给定的十二例外仍须按外部定理原述排除。本批无条件原题结果仍没有排除一般的 `1≤i<185` 输入和 `i≥185, n³≤j⁴` 输入，虽有独立例外行结果。条件链在接受全局 EEES 后还可给反例必要条件 `3i<2j`，但不消除所有剩余输入。已有其他批次的判据不在本报告的整体覆盖比较范围内。

复用核对：通过只读 `git show 37e42aca251c33c62cbc2c40f286daa0526d79ee:research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/sylvester/SylvesterSchurSource.lean` 取得固定基线源，SHA-256 为 `5636abc1e07366f0f1f5fb4f5daabbac276cbf537ceeddb528703c3415552285`。去除声明外围空白后，`succ_pow_mul_sub_le_pow_mul_succ`、`pow_le_pow_mul_choose`、`pow_mul_pow_half_lt_pow_of_sq_lt` 三个完整声明与本批逐字相同。MIT 许可正文、署名和两个上游提交来源均保留；本批文件只导入所需 mathlib 模块，不将旧 7700 行文件作为本批导入依赖。`choose_ratio_lower_bound` 是本批扩展，证明不依赖旧全文件的额外命题。

审查中提出的唯一具体记录修正是明确区分三条旧声明与新增比值声明。主任务已将该说明加入 `PowerBounds.lean` 来源头及 `power-source-adoption.json` 的 `new_declarations`，本报告已读取该修正；没有未处理的数学发现。该静态结论不代替主任务对新声明及其实际依赖执行的新闭包编译和公理守卫。

本次最终审查快照（2026-09-08T17:58:53Z）：

| 文件 | SHA-256 |
|---|---|
| [SizeObstruction.lean](../lean/SizeObstruction.lean) | `d8c42b7d57ebf1fc619f381d604e4b217473bc090ee724c870a3391e9986c9c9` |
| [PowerBounds.lean](../lean/PowerBounds.lean) | `3022f40997b3b9302343b99a8fa91a984228af348eb7b02f69fbd198016fee9a` |
| [ElementaryTail.lean](../lean/ElementaryTail.lean) | `3eed4fb5ab42ceebdcddf07dd510c8a97b08441f4f6ec2862246dc1ac0992348` |
| [ScaledTransfer.lean](../lean/ScaledTransfer.lean) | `d09171d2d93141851678b0b4753bf72c2780379a82e1b9e09c57741a690b9c0f` |
