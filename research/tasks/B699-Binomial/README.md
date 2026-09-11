# B699：二项式系数的公共大素因子

对自然数 `1≤i<j≤⌊n/2⌋`，原题要求存在素数 `p≥i` 整除 `gcd(choose(n,i),choose(n,j))`。一个缺少这种素数的合法三元组即可反驳；充分条件不等于全部输入。

[来源题面](https://conjectures.io/problems/erdos699-erdos-699)。当前各批均没有完整解答；证据与剩余范围分别以各批记录为准。

## 独立研究批次

| 批次 | 主题 | 接续 |
|---|---|---|
| [20260911-leader-intake-bc-824984da](runs/20260911-leader-intake-bc-824984da/README.md) | 当前接收与调度入口：三指标闭合、光滑窗口、统一核；等待 A 新交付 | [状态](runs/20260911-leader-intake-bc-824984da/frontier.md) · [原件索引](runs/20260911-leader-intake-bc-824984da/ARCHIVES.json) |
| [20260911-leader-dispatch-f71b38c0](runs/20260911-leader-dispatch-f71b38c0/README.md) | 上一轮任务调度与 huan 接续（历史快照） | [状态](runs/20260911-leader-dispatch-f71b38c0/frontier.md) · [核验责任](runs/20260911-leader-dispatch-f71b38c0/acceptance.md) |
| [20260911-low-index-lean-513dc7cc](runs/20260911-low-index-lean-513dc7cc/README.md) | VPS已发布的低指标Lean与huan接续来源 | [原验收](runs/20260911-low-index-lean-513dc7cc/acceptance.md) |
| [20260910-leader-integration-ad35779e](runs/20260910-leader-integration-ad35779e/README.md) | 上一批四项闭合与Lean前置整合（历史快照） | [前沿](runs/20260910-leader-integration-ad35779e/frontier.md) · [报告](runs/20260910-leader-integration-ad35779e/report.md) |
| [20260910-i13-closure-ad35779e](runs/20260910-i13-closure-ad35779e/README.md) | i=13全域纸面＋精确证书；未Lean化 | [原报告](runs/20260910-i13-closure-ad35779e/delivery/REPORT.md) |
| [20260910-pade-three-closure-4edad426](runs/20260910-pade-three-closure-4edad426/README.md) | 11、16、21全域纸面＋精确证书；未Lean化 | [原报告](runs/20260910-pade-three-closure-4edad426/delivery/REPORT.md) |
| [20260910-unbounded-tail-9f6c2a17](runs/20260910-unbounded-tail-9f6c2a17/README.md) | huan已验EC分析前置；i≥4883原目标未完成、新增覆盖0 | [验收](runs/20260910-unbounded-tail-9f6c2a17/delivery/acceptance.md) |
| [20260910-four-index-formal-62d16b14](runs/20260910-four-index-formal-62d16b14/README.md) | VPS工具链缺失、Lean未启动，新增验收0 | [恢复](runs/20260910-four-index-formal-62d16b14/delivery/handoff.md) |
| [20260910-leader-integration-c1bf7a69](runs/20260910-leader-integration-c1bf7a69/README.md) | 首批交付合成与旧四路任务（历史快照） | [前沿快照](runs/20260910-leader-integration-c1bf7a69/frontier.md) · [分支盘点](runs/20260910-leader-integration-c1bf7a69/BRANCHES.md) |
| [20260910-large-index-lean-7c4e2a91](runs/20260910-large-index-lean-7c4e2a91/README.md) | 1000..4882共3883项，全部合法n,j；**完整Lean验收** | [验收](runs/20260910-large-index-lean-7c4e2a91/acceptance.md) · [报告](runs/20260910-large-index-lean-7c4e2a91/report.md) |
| [20260910-elementary-count-bbbfe15e](runs/20260910-elementary-count-bbbfe15e/README.md) | EC完整候选及环境阻塞记录；**未编译，新增验收0** | [验收状态](runs/20260910-elementary-count-bbbfe15e/acceptance.md) · [恢复](runs/20260910-elementary-count-bbbfe15e/handoff.md) |
| [20260910-seven-index-closure-77927828](runs/20260910-seven-index-closure-77927828/README.md) | i=17,23,26,27,30,32,33 的全部合法 n,j；依赖 BFT 及完整精确证书，未 Lean 化。 | [原报告](runs/20260910-seven-index-closure-77927828/delivery/REPORT.md) |
| [20260910-four-index-closure-c1bf7a69](runs/20260910-four-index-closure-c1bf7a69/README.md) | i=19,22,24,25 的全部合法 n,j；BFT、位置加权、碰撞分支、指数分块和完整末端证书，未 Lean 化。 | [原报告](runs/20260910-four-index-closure-c1bf7a69/delivery/REPORT.md) |
| [20260910-asymmetric-pade-022987af](runs/20260910-asymmetric-pade-022987af/README.md) | i=11,16,19,21,22,24,25 的显式绝对高度，覆盖全部合法 j；未完成高度内排除，未 Lean 化。该报告的历史有界项11、16、21已由后续Padé三项批次在纸面层闭合；原报告保持原文。 | [原报告](runs/20260910-asymmetric-pade-022987af/delivery/REPORT.md) |
| [20260910-shifted-slope-25dde8a7](runs/20260910-shifted-slope-25dde8a7/README.md) | 保存原始移位斜率推导、适用边界及实验；不是完整 B699 的全域证明，未 Lean 化。 | [原报告](runs/20260910-shifted-slope-25dde8a7/delivery/REPORT.md) |
| [20260909-middle-index-cert-1a78f8cd](runs/20260909-middle-index-cert-1a78f8cd/README.md) | 185≤i≤999 共815项、全部合法 n,j 的原题消费者；**完整 Lean 验收** | [正式验收](runs/20260909-middle-index-cert-1a78f8cd/acceptance-815.md) · [报告](runs/20260909-middle-index-cert-1a78f8cd/report.md) · [最终消费者](runs/20260909-middle-index-cert-1a78f8cd/lean/ExtendedComplete.lean) |
| [20260909-low-index-bounds-a5b51cea](runs/20260909-low-index-bounds-a5b51cea/README.md) | 七项具体数值高度与 i=4 非有效绝对有限性；**未 Lean 化**，未完成高度内排除 | [前沿](runs/20260909-low-index-bounds-a5b51cea/frontier.md) · [原报告](runs/20260909-low-index-bounds-a5b51cea/delivery/REPORT.md) |
| [20260909-prime-optimization-a81baaab](runs/20260909-prime-optimization-a81baaab/README.md) | 初等计数包装及115／41行替代证书；短区间供应仍有依赖，**未 Lean 化** | [前沿](runs/20260909-prime-optimization-a81baaab/frontier.md) · [原报告](runs/20260909-prime-optimization-a81baaab/delivery/REPORT.md) |
| [20260909-reuse-notes-292cede7](runs/20260909-reuse-notes-292cede7/README.md) | 保留 jk 的判别式递推备用接口；不收录“领先”调查全文，**未 Lean 化** | [技术摘录](runs/20260909-reuse-notes-292cede7/notes/technical-extract.md) |
| [20260909-middle-index-b96965a8](runs/20260909-middle-index-b96965a8/README.md) | 全部 i≥185 的网页纸面／精确证书闭合；交付时**未 Lean 化** | [前沿](runs/20260909-middle-index-b96965a8/frontier.md) · [原报告](runs/20260909-middle-index-b96965a8/delivery/REPORT.md) |
| [20260909-proof-reuse-survey-0621d239](runs/20260909-proof-reuse-survey-0621d239/README.md) | 证明复用调查与素数估计替代；**未 Lean 化** | [前沿](runs/20260909-proof-reuse-survey-0621d239/frontier.md) |
| [20260909-low-index-structure-b41a5a63](runs/20260909-low-index-structure-b41a5a63/README.md) | 上一轮154项纸面全域排除；151项高度与通用链已 Lean，完整覆盖数据未验 | [前沿](runs/20260909-low-index-structure-b41a5a63/frontier.md) · [报告](runs/20260909-low-index-structure-b41a5a63/report.md) · [验收](runs/20260909-low-index-structure-b41a5a63/acceptance.md) |
| [20260909-slope-four-243425d5](runs/20260909-slope-four-243425d5/README.md) | n=4j 的纸面与有限证书链；**未 Lean 化** | [前沿](runs/20260909-slope-four-243425d5/frontier.md) · [交接](runs/20260909-slope-four-243425d5/HANDOFF.md) |
| [20260909-prime-input-d2f7a636](runs/20260909-prime-input-d2f7a636/README.md) | 素数输入的条件简化；**未 Lean 化** | [前沿](runs/20260909-prime-input-d2f7a636/frontier.md) · [交接](runs/20260909-prime-input-d2f7a636/HANDOFF.md) |
| [20260909-discriminant-height-9d40056a](runs/20260909-discriminant-height-9d40056a/README.md) | i≥185 的原题有效高度消费者；**已 Lean 验收** | [前沿](runs/20260909-discriminant-height-9d40056a/frontier.md) · [报告](runs/20260909-discriminant-height-9d40056a/report.md) |
| [20260909-eees-chain-5a2e10](runs/20260909-eees-chain-5a2e10/README.md) | EEES 消费者与初等无条件区域 | [前沿](runs/20260909-eees-chain-5a2e10/frontier.md) · [报告](runs/20260909-eees-chain-5a2e10/report.md) · [验收](runs/20260909-eees-chain-5a2e10/verification/ACCEPTANCE.md) |
| [20260908-external-reductions-b3c1b7](runs/20260908-external-reductions-b3c1b7/README.md) | 外部实际素数幂转移及原题消费者 | [前沿](runs/20260908-external-reductions-b3c1b7/frontier.md) |
| [20260909-large-prime-structure-cb4764f0](runs/20260909-large-prime-structure-cb4764f0/README.md) | 完整素数幂转移、近中心区域与判别式路线 | [前沿](runs/20260909-large-prime-structure-cb4764f0/frontier.md) · [报告](runs/20260909-large-prime-structure-cb4764f0/report.md) · [验收](runs/20260909-large-prime-structure-cb4764f0/acceptance.md) |
| [20260908-formalization-92c221](runs/20260908-formalization-92c221/README.md) | 已采用条件判据的完整消费者复验 | [前沿](runs/20260908-formalization-92c221/frontier.md) |
| [20260908-binomial-cofactors-f0a6539](runs/20260908-binomial-cofactors-f0a6539/README.md) | 二项式系数的小互素余因子判据 | [前沿](runs/20260908-binomial-cofactors-f0a6539/frontier.md) |

本次网页成果见[20260910 接收快照](../../external-results/20260910-web-results-c1bf7a69/README.md)。此前纸面成果见[20260909 接收快照](../../external-results/20260909-b699-paper-a5b51cea/README.md)。此前完成分支、调查原件和中指标纸面成果见[上一接收快照](../../external-results/20260909-b699-proof-reuse-b96965a8/README.md)。两次历史快照均未包含主机本轮815项的最终 Lean 验收；其完整交付现由上列 `20260909-middle-index-cert-1a78f8cd` 批次承接。各历史前沿按其交付时间解释，其余范围以对应批次为准。

同题研究放在本目录。新独立推进放入 `runs/日期-主题-短标识/`；换模型、会话或并发数量不改变既有批次身份。详见[目录规则](../../../docs/STRUCTURE.md)。各批独立维护进度和报告，本页仅作题面与导航。

正式模块：[CofactorCriterion](../../../Math/B699/CofactorCriterion.lean)、[公理检查](../../../Tests/B699CofactorCriterion.lean)、[示例](../../../Examples/CofactorCriterion.lean)。

