# B677：不重叠等长整数区间的 LCM

对自然数 `n,m,k`，`k>0`、`n+k≤m`，令 `M(n,k)=lcm(n+1,…,n+k)`。原题要求 `M(n,k)≠M(m,k)`。一个合法相等见证即可反驳；证明原题须覆盖全部无界参数。

[来源题面](https://conjectures.io/problems/erdos677-erdos-677)。当前各批均没有完整解答；证据与剩余范围分别以各批记录为准。

## 独立研究批次

| 批次 | 主题 | 接续 |
|---|---|---|
| [20260909-far-interval-a48ab240](runs/20260909-far-interval-a48ab240/README.md) | 素数幂匹配与跨度排除；**未 Lean 化** | [前沿](runs/20260909-far-interval-a48ab240/frontier.md) · [交接](runs/20260909-far-interval-a48ab240/HANDOFF.md) |
| [20260908-external-reductions-b3c1b7](runs/20260908-external-reductions-b3c1b7/README.md) | 外部约数候选归约及原题消费者 | [前沿](runs/20260908-external-reductions-b3c1b7/frontier.md) |
| [20260908-formalization-92c221](runs/20260908-formalization-92c221/README.md) | 初等有限化与内核有限证书 | [前沿](runs/20260908-formalization-92c221/frontier.md) |
| [20260908-interval-lcm-f0a6539](runs/20260908-interval-lcm-f0a6539/README.md) | 区间 LCM 的距离与起点限制 | [前沿](runs/20260908-interval-lcm-f0a6539/frontier.md) |

同题研究放在本目录。新独立推进放入 `runs/日期-主题-短标识/`；换模型、会话或并发数量不改变既有批次身份。详见[目录规则](../../../docs/STRUCTURE.md)。各批独立维护进度和报告，本页仅作题面与导航。

正式模块：[IntervalLcm](../../../Math/B677/IntervalLcm.lean)、[公理与边界检查](../../../Tests/B677IntervalLcm.lean)、[示例](../../../Examples/IntervalLcm.lean)。
