# B699 · Pro A interrupted-session handoff

日期：2026-09-11（Asia/Shanghai）  
状态：**因网页会话连续卡死，应用户要求立即停止研究；本文件仅冻结已产生的状态，不继续推理。**

## 0. 新会话应如何启动

1. 以 `B699-R9-ABC-context.zip` 为冻结主上下文，先读其 `navigation/CURRENT_STATE.md`、`navigation/TASK_PROTOCOL.md`，再读 B/C handoff。
2. 读取本包的 `checkpoint/CHECKPOINT.md`、`checkpoint/ROUTE_CHECKS.md`、`SESSION_STATE.json`。
3. 当前可信交付前沿仍为上一轮的 **R8 = {3,4,5,6,7,8,9,14}**；本中断会话**没有新增整指标闭合、没有新增有效高度、没有新增 Lean**。
4. `i=10` 的上一轮结论仍按“纸面＋完备精确证书、未 Lean、人审待定”处理。不要因本会话的局部实验改变其等级。
5. 恢复研究时优先审查本包 `workspace/evidence/` 和 `workspace/logs/` 中的 i14 条件设计与 content-G 计算。任何标为 `INCOMPLETE_FLOAT`、`INCOMPLETE_CONDITIONAL`、`FLOAT_COST_ONLY`、`NEW_UNPROVED_G` 的内容都不是已证数学输入。

## 1. 固定原题与边界

对自然数 n,i,j，若

`1 ≤ i < j ≤ floor(n/2)`，

目标证明存在同一个素数 `p ≥ i` 同时整除 `C(n,i)` 与 `C(n,j)`。必须保留 `p=i`、完整素数幂；`D=V` 只能在 `noCommon` 分支使用。

## 2. 本会话开始时已确认的事实

- 上一轮 `i=10` 交付包 SHA-256 与先前记录一致；其范围仍是全部合法 `n,j` 的纸面＋精确证书闭合。
- 新读的 Pro B 光滑窗口和 Pro C 统一核材料都**没有单独闭合 R8 中的新指标**；它们主要提供子族/有限化工具，不能把剩余无界参数自动消掉。
- 因此本会话工作集一直保持 `R8={3,4,5,6,7,8,9,14}`。

## 3. 已运行但尚未成为定理的路线

### 3.1 i9：一般“容量/转移”消费者不足以单独闭合

`workspace/evidence/capacity_probe.json` 中的快速模型给出：

- i=8 arbitrary-transfer LP net ≈ -0.3162；
- i=9 net ≈ -0.137619；
- i=14 net ≈ -0.0904。

因此仅靠该消费者、在当前输入下，仍有明显缺口。这个结论是**模型诊断**，不是原题不可能性。

### 3.2 i14：扩大 Padé 次数后，出现“条件图可过门槛”的强信号

本会话发现旧搜索可能过早限制近似次数，于是扩大 `e,d,f` 搜索并分别保留分母代价。相关代码/输出：

- `workspace/code/probe_pade14.py`
- `workspace/code/probe_refined_seeds.py`
- `workspace/evidence/pair_refine60_*.json`
- `workspace/evidence/refine60_coverage.json`
- `workspace/logs/refine60.log`
- `workspace/logs/select_refine60.log`

14 个素数对的 refine60 设计文件已产生；`refine60_coverage.json` 明确写着：

`14_PAIR_DESIGNS_COMPLETE_GLOBAL_GRAPH_POSTPROCESSING_NOT_COMPLETED`。

一次条件选择跑到 69 条 cuts 时得到条件模型最小值 `223182`、目标 `220000`，即 net `+3182`（见 `select_refine60.log`）。

另一路更强调有效 content 家族的 i14 设计，在 42 cuts 下得到：

- conditional min = `221164`
- target = `220000`
- conditional net = `+1164`
- 29 个 content families

见 `workspace/logs/design_effective14.log` 与 `workspace/evidence/design_effective14*.json`。

**重要：这还不是 i14 高度。** 设计中存在 `NEW_UNPROVED_G` / 尚未完成全称有效化的 content-G 输入；必须逐条证明有效共同阈值、全部排列/碰撞/同位置量词，才能把条件图升级成高度。

### 3.3 i14 碰撞分支曾是瓶颈，但条件设计可补过

`workspace/logs/collision_design14.log` 显示 pair (3,5) 的碰撞设计从负净值逐步上升：前 6 条仍负，加入第 7 条后转正；最终该局部设计有正余量。这个结果同样依赖条件 cuts，不能单独登记为证明。

### 3.4 content-G 有效化工作已启动，但只完成部分

为把 i14 条件图中的 `NEW_UNPROVED_G` 变成真实输入，本会话启动了 content-family 的尾部与有限段证书生成。

已完成/保存的可复用计算：

- `workspace/result/evidence/content_tail.json`：多组 family 的无限尾部计算已生成；日志 `content_tails.log` 显示最大涉及素数上界约 `21,449,999,927`。
- `workspace/result/evidence/content_finite_1_2_2.*`：family `(1,2,2)` 的有限覆盖完成，日志显示 `PASS blocks=32936 m0=7684`。
- `workspace/result/evidence/content_finite_43_43_57.*`：family `(43,43,57)` 的有限覆盖完成；dense 版本日志显示 `PASS blocks=107656 m0=24310`。
- 已生成并核对到 `99,999,989` 的素数 cache；日志写 `PASS_STREAMING_CACHE count=5761455 last=99999989 total=4613180990`。
- dense prefix 日志写 `PASS 100000001 dense prefix entries`。

但**整批 family 尚未完成**：`run_content_families.py` 因 `dict() got multiple values for keyword argument 'M'` 中止。该 bug 尚未修复并重跑，所以不能声称所有候选 G 家族均已完成有限段证明。

大素数 cache 约 829 MiB，**未收入本交接 ZIP**；可从附带代码重建。其他代码、输入、已生成证书和日志均保留。

### 3.5 一些搜索仍明确是不完整/浮点

- `checkpoint_p14d20.json`: `INCOMPLETE_FLOAT`，停在 pair `[3,11]` 的 3200/3296。
- `checkpoint_refine60.json`: `INCOMPLETE_FLOAT`，该 checkpoint 本身不是最终覆盖状态；以 `refine60_coverage.json` 和各 pair 文件作为更后产生的状态，但它们仍只是设计搜索。
- `content_cost_estimate.json`: `FLOAT_COST_ONLY`，只用于估算 family 有效化的计算成本，不能作证明。

## 4. 当前最值得恢复的路线

优先级建议只作为恢复线索，不是新结论：

1. **i14**：先从已经使条件图净值为正的少量 cuts 反推真正需要证明的最小 content-G family 集；不要直接把 29/69 条全部重做。
2. 修复 `workspace/result/code/run_content_families.py` 的重复 `M` 字段 bug；分批完成必要 family 的有限段证书，与已有 tail 证书接合，得到每条 G 界的明确 `m0`。
3. 用**精确**约束重新跑 i14 全部不同位置和碰撞分支；只有正净指数成立后才登记绝对高度，再接已有指数块/CRT/末端流程。
4. 如果有效化所需 family 太重，再退回 i9，研究是否能从 B/C 工具或更一般的完整幂分配得到新的真实边；当前 capacity-only 路线不足。

## 5. 明确禁止从本交接中误报的内容

- 不得声称 i14 已闭合或已有绝对高度。
- 不得把 `net +1164` / `+3182` 写成数学定理；它们是依赖未证 cuts 的条件图输出。
- 不得把 float search、cost estimate 或有限 probe 写成无界证明。
- 不得声称所有 content family 已有效化；当前只有部分 finite/tail 证书完成，批处理曾真实失败。
- 不得把 B/C 的固定分母、光滑窗口或统一核提升为 R8 整指标有限性。

## 6. 运行状态

停止交接时已检查系统进程：**没有本任务遗留的 Python/C++ 研究计算仍在运行。** `.pid` 文件是历史记录，不代表活进程。

## 7. 本包内容

- `SESSION_STATE.json`：机器可读摘要。
- `checkpoint/`：原 CHECKPOINT、ROUTE_CHECKS、输入哈希。
- `workspace/code/`、`workspace/evidence/`、`workspace/logs/`：本轮搜索和条件设计。
- `workspace/frozen/`：本轮实际读取的 i10 / Pro B / Pro C 报告与 handoff。
- `workspace/result/`：content-G 有效化代码、输入、已完成证书和日志；**不含 829 MiB prime cache**。
- `raw-small-inputs/`：Pro B / Pro C 原 ZIP（体积小）以及上一轮 i10 report/delivery-check；R9 主上下文和 i10 大证据 ZIP 只记录哈希，不重复打入本包。

