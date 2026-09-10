# 阶乘状态轨迹

负责人：本批子任务 `height_block_lemma`，本次仅拥有 `lean/FactorialTrace.lean` 与本记录，不修改已验 `HeightBlock.lean`。固定数学来源 `12c31b8b5729b0017cf8e1423cd98ed5230aaaae` 的 `ThreeWindowSize`；有向乘法采用本批 `lean/dyadic/Base.lean`。本轮仍共享开始 `2026-09-09 17:59:27 UTC`、计划截止 `23:59:27 UTC`；本子任务约 `18:23 UTC` 接入，不自行延长，不自行启动 Lean 或重计算。

## 障碍和作用

主任务在 `verification/20260909T182156Z` 的代表性整块检查中定位到内存耗尽，尚未推翻数学不等式。长递归会在内核内重建数千次近似状态；本方案改为提供显式状态，只核验每个局部乘法及相邻指数。每段从已证状态出发，能按 64 步串接，并选取段内 `s`、`L`、`U` 所需状态。

预计作用：消除轨迹生成阶段的长递归核验瓶颈；通用声音性独立成立，但本轮具体阶乘轨迹、幂轨迹、67 段高度证书和最终原题结论仍须主任务整合验收。这里只改变核验方式，数学目标不变，也不宣称新增原创结果。

## 可供生成器使用的接口

命名空间 `B699FactorialTrace`。

`State` 的字段顺序为 `k`, `factorialLower`, `factorialUpper`, `windowLower`, `descLower`；后四字段类型都明确写为 `B699Dyadic.Dyadic`。可用 `⟨k, ⟨m,e⟩, ⟨m,e⟩, ⟨m,e⟩, ⟨m,e⟩⟩` 输出纯数据，避免把字段定义成再次求值的递归表达式。

`Good N st` 精确表示：`factorialLower.value ≤ k!`、`k! ≤ factorialUpper.value`、`windowLower.value ≤ windowFactorials k`、`descLower.value ≤ N.descFactorial k`。`initial` 是 `k=0` 且四字段均为 `one`，`good_initial N` 对任意自然数 `N` 给出初始事实。

`stepCheck bits N a b` 检查五项等式：

1. `b.k = a.k + 1`；
2. `b.factorialLower = mulDown bits (embed b.k) a.factorialLower`；
3. `b.factorialUpper = mulUp bits (embed b.k) a.factorialUpper`；
4. `b.windowLower = mulDown bits a.windowLower b.factorialLower`；
5. `b.descLower = mulDown bits (embed (N-a.k)) a.descLower`。

`stepCheck_sound hcheck hstart` 将一个已证状态传给下一状态。没有要求 `k ≤ N`；超过 `N` 时自然数下降阶乘归零，声音性仍成立。

`traceCheck bits N start states` 检查全部相邻步骤。`states` 不含 `start`，包含其后每个状态及最终状态；64 步块恰含 64 个状态。空表合法，其终点是初态。`endpoint start states` 返回终态。`traceCheck_sound hcheck hstart` 给出终态 `Good`，以及对任意 `st ∈ states` 的 `Good N st`；便利入口为 `good_of_mem_trace hcheck hstart hmem`。

`endpoint_index hcheck` 证明终点指标严格等于 `start.k + states.length`；每步由 `stepCheck_index` 证明指标增加 1，检查器没有跳步或重复步骤的漏洞。

建议生成器用 `segmentCheck bits N start states finish`，它额外核验 `endpoint start states = finish`。`segmentCheck_sound hcheck hstart` 给出三项：`Good N finish`、`finish.k = start.k + states.length`、每个成员的 `Good`。将上一段结果 `.1` 作为下一段初始事实，分块独立使用内核 `decide`。段内查询可由 `.2.2 st hmem` 提取；成员关系只比较显式小状态数据。

## 模块首编证据与整根边界

本模块已实际 Lean 编译通过。每步只借用 `mulDown_le` / `mul_le_mulUp`、阶乘递推、区间阶乘乘积递推、下降阶乘递推；列表声音性采用归纳。无直接调用 `factorialWindowDown`、`factorialWindowUp` 或 `descFactorialDown`。首次编译即通过，源码在验收后冻结；全部接口和语义没有修改。

已实际核对主任务生成的 [evidence.json](../verification/20260909T182902Z/evidence.json) 中 `FactorialTrace.lean` 的独立编译条目、[完整日志](../verification/20260909T182902Z/logs/compile-0009-research_tasks_B699-Binomial_runs_20260910-large-index-lean-7c4e2a91_lean_FactorialTrace.lean.log) 及八条声明的传递公理。

- 本模块位于该次 12 文件验证中的第 9 个编译记录；实际新编时间 `2026-09-09 18:29:09..18:29:17 UTC`，`8.425` 秒，退出码 `0`，没有超时，输出对象存在。
- 当前源码、编译前后及证据快照的 SHA256 一致：`359c4c7147cad7964c50a480c71484794a7208104c8f652fd3f0b0ead786dd67`。
- 使用固定 Lean `4.33.1`、`-j1 -M1280 -DElab.async=false -DautoImplicit=false -DrelaxedAutoImplicit=false`；完整命令保存在日志。本子任务没有另行启动编译。
- 八条声明公理审计通过，无 `unexpected_axioms`。`stepCheck_index` 和 `endpoint_index` 为 `[propext, Quot.sound]`；其余六条为 `[propext, Classical.choice, Quot.sound]`。
- **该次整体验证根仍失败**：根 `success=false`、退出码 `1`；失败条目是另一文件 `CountIntervals.lean` 的编译错误，记录为 `Lean exit 1; unexpected axioms: sorryAx`。该失败文件不是 `FactorialTrace.lean` 的依赖，不能抹去本模块实际成功，也不能将整根误记为成功。后续完整成功根需要重新绑定本模块及其来源对象。
- 此处仅接受通用轨迹声音性与单模块编译，不接受任何尚未核验的具体64步状态数据、资源改善效果、67段高度证书或最终原题定理。

本任务没有数学反例或失败的证明策略。前述内存耗尽属于旧整块求值方式的资源失败，不能据此称原不等式失败；显式64步检查的实际内存改善仍需本批测量。首次源码候选的“尚未编译”状态已由以上模块成功证据取代，但整根边界单独保留。

`18:31 UTC` 交接：本子目标约用 8 分钟，保持 `FactorialTrace.lean` 冻结；仅更新本记录。没有修改已验 `HeightBlock.lean`，没有改其它文件、分支、依赖或历史证据，没有 commit/push。

下一检查：主任务把本模块绑定到完整成功根，再运行小段及实际64步证书，核对终点、段内状态、公理与资源峰值；只有明确证据后才能标记具体轨迹被接受。
