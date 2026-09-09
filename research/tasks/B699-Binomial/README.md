# B699：二项式系数的公共大素因子

对自然数 `1≤i<j≤⌊n/2⌋`，原题要求存在素数 `p≥i` 整除 `gcd(choose(n,i),choose(n,j))`。一个缺少这种素数的合法三元组即可反驳；充分条件不等于全部输入。

[来源题面](https://conjectures.io/problems/erdos699-erdos-699)。当前各批均没有完整解答；证据与剩余范围分别以各批记录为准。

## 独立研究批次

| 批次 | 主题 | 接续 |
|---|---|---|
| [20260909-eees-chain-5a2e10](runs/20260909-eees-chain-5a2e10/README.md) | EEES 消费者与初等无条件区域 | [前沿](runs/20260909-eees-chain-5a2e10/frontier.md) · [报告](runs/20260909-eees-chain-5a2e10/report.md) · [验收](runs/20260909-eees-chain-5a2e10/verification/ACCEPTANCE.md) |
| [20260908-external-reductions-b3c1b7](runs/20260908-external-reductions-b3c1b7/README.md) | 外部实际素数幂转移及原题消费者 | [前沿](runs/20260908-external-reductions-b3c1b7/frontier.md) |
| [20260909-large-prime-structure-cb4764f0](runs/20260909-large-prime-structure-cb4764f0/README.md) | 完整素数幂转移、近中心区域与判别式路线 | [前沿](runs/20260909-large-prime-structure-cb4764f0/frontier.md) · [报告](runs/20260909-large-prime-structure-cb4764f0/report.md) · [验收](runs/20260909-large-prime-structure-cb4764f0/acceptance.md) |
| [20260908-formalization-92c221](runs/20260908-formalization-92c221/README.md) | 已采用条件判据的完整消费者复验 | [前沿](runs/20260908-formalization-92c221/frontier.md) |
| [20260908-binomial-cofactors-f0a6539](runs/20260908-binomial-cofactors-f0a6539/README.md) | 二项式系数的小互素余因子判据 | [前沿](runs/20260908-binomial-cofactors-f0a6539/frontier.md) |

同题研究放在本目录。新独立推进放入 `runs/日期-主题-短标识/`；换模型、会话或并发数量不改变既有批次身份。详见[目录规则](../../../docs/STRUCTURE.md)。各批独立维护进度和报告，本页仅作题面与导航。

正式模块：[CofactorCriterion](../../../Math/B699/CofactorCriterion.lean)、[公理检查](../../../Tests/B699CofactorCriterion.lean)、[示例](../../../Examples/CofactorCriterion.lean)。
