# B699：EEES 消费者与初等无条件区域

采用提交 `37e42aca251c33c62cbc2c40f286daa0526d79ee`。开始时远端 formalization 分支仍指向该提交；PR #1 为 open、未合并，`main` 为 `08a8ac6`。本批在独立克隆和独立分支 `GPT-work/b699-20260909-eees-chain` 工作。

## 实际证明与证据边界

以下参数均为自然数。记 `Common(n,i,j)` 为原题的
`∃ p, p.Prime ∧ i≤p ∧ p∣gcd(C(n,i),C(n,j))`。`U_i(n)` 和 `V_i(n)` 分别为 `p<i` 和 `p≥i` 的完整素数幂乘积；包括 `p=i`，不取平方自由部分。

| 结果 | 完整范围和额外前提 | 状态 |
|---|---|---|
| 完整分拆 | 任意 `a≠0,i`，`smallPrimePart i a * primePart i a = a` | 无条件 Lean |
| 十二例外 | `(n,i)` 属于精确十二对，任意 `i<j≤n/2`，则 `Common(n,i,j)` | 无条件 Lean，覆盖全部合法 `j` |
| Vandermonde | 任意 `i<j≤n/2` 且 `2j≤3i`，`C(j,i)²≤C(n,i)` | 无条件 Lean 组合不等式 |
| 反例平方必要条件 | 任意 `1≤i<j≤n/2` 且 `¬Common`，推出 `C(n,i)<C(j,i)²` | **条件 Lean**，显式参数 `B699Size.EEES1978` |
| 全 Vandermonde 区域原题消费者 | 任意 `1≤i<j≤n/2` 且 `2j≤3i`，则 `Common` | **条件 Lean**，同一个显式 EEES 参数 |
| EEES 二次尾部 | 任意 `i≥185,n>i²`，实际 `U_i(n)<V_i(n)` | 无条件 Lean，无 EEES 参数 |
| 直接反例必要条件 | 任意 `1≤i<j≤n/2` 且 `¬Common`，`n^i≤j^i*n^π(i−1)` | 无条件 Lean，无 EEES 参数 |
| 多项式区域原题消费者 | 任意 `185≤i<j≤n/2` 且 `j⁴<n³`，则 `Common` | 无条件 Lean，无 EEES、二次尾部或 Vandermonde 前提 |

另有 `common_of_quadratic_tail`，在 `i≥185,n>i²` 和完整合法 `j` 范围中，对 `2j≤3i` 给出无条件原题结论。这是实际 EEES 尾部的消费者；上表最后一项覆盖更宽的原题区域。

十二例外是 `(8,3),(9,4),(10,5),(12,5),(21,7),(21,8),(30,7),(33,13),(33,14),(36,13),(36,17),(56,13)`。两行没有合法 `j`，仍保留在外部定理的精确集合中。

## 相比基线关闭了什么

基线的真实 `V_i(n)∣C(j,i)` 转移直接导入，没有重新实现。未验收停止草稿迁入本批后，只修复其具体 `Decidable` 示例问题并完成新源码验收，关闭了完整条件消费者、十二例外和 Vandermonde 的形式化缺口。

本轮主要数学推进是闭合 EEES Region I 的一条初等替代链，并把同一工具直接用于原题。逐素数幂界给 `U≤n^t`，其中 `t=π(i−1)`。已有完整轮筛证书给 `77t≤16i+600`，从 `i≥185` 得 `4t≤i`。与 `n^i≤i^i*C(n,i)` 及 `n>i²` 组合，得到 `U²<C(n,i)=UV`，从而真实 `U<V`。

新的比例不等式 `n^i*C(j,i)≤j^i*C(n,i)` 保留两个二项式系数。反例转移又给 `C(n,i)≤n^t*C(j,i)`；消去正因子后得 `n^i≤j^i*n^t`。当 `j⁴<n³` 时取四次方并用 `4t≤i`，产生严格矛盾。这一原题消费者不再依赖完整 EEES。

这不是完整 B699，也不是完整 EEES。已有其他批次的余因子结构覆盖没有改变。本批单独给出的无条件原题剩余范围为 `i<185`，或 `i≥185,n³≤j⁴`，再扣除本批例外行及其他已采用结果；这些范围仍无界。完整 EEES 本身仍需处理 `i<185` 的一般 `n`，以及 `i≥185,2i≤n≤i²`，并准确保留十二例外。

## 关键依赖的可行性判断

前 40 分钟内已完成判断并实际实现所选分支，详见 [来源依赖备忘录](notes/eees-source-review.md)。固定 mathlib 的素数幂上界、固定项目轮筛证明和 MIT 的幂比较证明体都与本批消费者匹配；不需要升级依赖或引入新的未证明定理。

完整 EEES 原文的强素数估计、有限区域证书和少数低指标的光滑数配置完整性尚无本批可用 Lean 闭包。当前弱 Chebyshev 界直接代入所需区间下界，主项不足，不能替代原文输入。Region III 的删最大赋值项已有局部复用，但仅重做其包装或改善尾部常数不会关闭上述主要缺口。证据、具体恢复条件、固定来源及有限查询的边界均已留下。本轮因此在可收敛分支完成后提前交接，没有为耗满预算启动重复有限搜索或整套解析数论建设。

## 源码、复现和来源

- [SizeObstruction.lean](lean/SizeObstruction.lean)：恢复的完整分拆、例外、Vandermonde、显式 EEES 条件链。
- [ElementaryTail.lean](lean/ElementaryTail.lean)：实际小素数部分界、轮筛消费者、无条件 EEES 尾部。
- [ScaledTransfer.lean](lean/ScaledTransfer.lean)：无条件反例必要条件与 `j⁴<n³` 原题消费者。
- [PowerBounds.lean](lean/PowerBounds.lean)：三条最小复用证明体和本批新增比例引理。完整 MIT 许可、两层固定上游来源和新旧声明的区分均保留。
- [Acceptance.lean](lean/Acceptance.lean)、[AxiomAudit.lean](lean/AxiomAudit.lean)：可执行传递公理守卫及实际消费者。
- [最终验收](verification/ACCEPTANCE.md)、[新输出证据](verification/20260908T180159Z/evidence.json)、[独立 AI 审查](reviews/independent-review.md)。

复现：仓库根运行 `python3 research/tasks/B699-Binomial/runs/20260909-eees-chain-5a2e10/verify.py`。9 个项目模块全部新编，21 项本批公理守卫通过，固定包缓存复用；仅允许标准逻辑公理。开发失败与未接受的原草稿日志保留，不提交编译产物。

这是已知初等工具的形式化复用和独立重建的消费者；不主张数学首创、人工同行评审或完整问题解决。改动仅归本批，公共模块、依赖 pins 和其他研究批次没有修改。
