# B699 已完成交付与网页研究归档

本次以 main `23c4e21096cd711be08927c0c451627c832d64c2` 为基线，接入两份上一轮已完成的固定提交，并保存用户交付的调查报告和网页证明包。**当前正在运行的主机 323..999 Lean 任务与 Chat 优化任务不在本次范围内。**

## 固定提交与接受范围

| 交付 | 固定提交 | 本次采用的证据状态 |
|---|---|---|
| [云端判别式高度](../../tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/README.md) | `24cb8dc2f1befccc5432673b34e7c5422fb4939a` | 原题消费者已 Lean 验收：每个 i≥185 的反例满足 n≤effectiveHeight(i)；高度内仍有剩余区域 |
| [主机上一轮低指标](../../tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/README.md) | `63a04b064d62e7e8752b1edd75c186d07dc57a20` | 151 项高度证书、无限尾部和通用覆盖链已 Lean 验收；具体完整覆盖行与 LowIndexComplete 未验收。154 项全域排除属于纸面／精确证书层 |

云端依据为原批 [ACCEPTANCE.md](../../tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/verification/ACCEPTANCE.md)；主机依据为原批 [acceptance.md](../../tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/acceptance.md)。两批目录、源码、失败记录和原始验收字节保持不变。Git 合并和公共 CI 不提高研究成果的证据等级。

## 原始调查与网页成果

| 原件 | SHA-256 | 可读入口 |
|---|---|---|
| [B699-proof-reuse-survey.md](originals/B699-proof-reuse-survey.md) | `0621d2392ccbc411c15a5c04a6868978b41c75303f9e1521f6a83956d0eab4a9` | [调查报告接收说明](../../tasks/B699-Binomial/runs/20260909-proof-reuse-survey-0621d239/README.md) |
| [B699-middle-index-closure-evidence.zip](originals/B699-middle-index-closure-evidence.zip) | `b96965a898f6f097d66fbb0d8df4e12e5b03c8f238e43143cd32fe7c506e0cf0` | [中间指标证明及证书](../../tasks/B699-Binomial/runs/20260909-middle-index-b96965a8/README.md) |

两份原件均由用户转交，来自独立网页 Chat 研究会话；原报告中的具体文献、引用与署名保留。原件只更换归档文件名，字节未改。ZIP 的35个文件全部原样解包到对应题目批次的 `delivery/`；其中原 `MANIFEST.sha256` 校验34个其他文件。

**这些网页成果均未 Lean 化。** 调查报告给出 i≥150000 的纸面替代路线；后续网页包在纸面和确定性计算层覆盖全部 i≥185。文献中的源定理不等于已存在可复用 Lean 证明。

调查报告引用的 `B699_proof_reuse_evidence_2026-09-09.zip` 没有随用户材料提供，本次没有该文件；保留原文并明确此缺件。报告中的其他会话引文标识和临时路径是历史来源信息，不能当作当前仓库可访问资源。

此前三份网页成果（B699 n=4j、素数输入、B677 远区间）继续保存在[原快照](../20260909-web-results-06de4137/README.md)，原件和接受说明不变。

## 接收检查

[manifest.json](manifest.json) 固定原件、成员映射、原会话审读快照及排除范围。[integration-checks.json](integration-checks.json) 记录本次检查；[verify_intake.py](verify_intake.py) 可在本次整合版本重现。

本次检查固定提交目录及原件字节、解包映射、历史清单、所修改导航与受保护目录；没有重新运行 Lean 或数学实验。中间指标批次另外保存此前已完成的两种高度算法和完整素数链试除的接收记录，明确属于外部精确计算。后续若源码或证书发生变化，应另存新的验证结果，不能改写此次清单。
