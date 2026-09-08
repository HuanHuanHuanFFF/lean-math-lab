# B686 round9 发布状态摘要

本摘要只整理已有证据，不重跑 Lean、Magma 或 LLL。18 个 round9 Lean 文件的 `check-lean-policy.py` 文本扫描为 0 违规；这项扫描不等同于编译通过。

完整 Lean 结果包括 uniform LCM64/250000 链、MatchingLcm 和 RankProduct 的全k有限素数乘积桥；对应的 `verification.json`、`matching-verification.json`、`rank-verification.json` 保留 Lean 版本、源哈希、命令、退出码和 axiom guards。Algebraic 与 Choose 是独立复用片段。完整链仍明确不等于 B686 整体无解。

纸面/来源审计包括外部 Will Blair LCM 材料、主任务 sparse-section/height/window 路线和外部条件核读；外部 18 常数未本地验证。有限计算包括固定 k=5、μ=6、D=8 的 highjet Q-span/共同零验收、J1/J2 18-case Fraction 检查，以及 SNF toy/k5 μ1 D2 与高阶 primitive Q-kernel LLL 诊断。高阶 SNF/HNF 未完成，LLL 结果明确只是子格。

Constants、ElementaryWeighted、WeightedPrime 和 external Lean 文件按现有记录归入未接受/未本地编译材料。原题整体无解、外部同行评审和独立 kernel checker 均未宣称。

policy 结果见 [policy-scan.json](policy-scan.json)；CRLF-aware staged diff 诊断见 [diff-check.log](diff-check.log)。主任务直接以子进程复核的 `diff --check` 退出码为2，修正此前摘要误记的1；诊断仍仅10个EOF空行警告。冻结字节未改动，也没有把它伪装成全绿。

## 最终交接与发布边界

[本轮报告](../report.md)和[全局缺口](../frontier.md)已统一。另一个Astra任务独立复核了两项偶数高度界，结果见[纸面验收](../paper-acceptance/acceptance-summary.md)；最后的[非零性成本复核](../nonvanishing-review/README.md)保留了正规化、抽屉界及Padé计数更正。它们均未升级为Lean或原题整体结论。

[最终冻结核对](final-freeze-audit.json)再次确认14份冻结源、11源导入闭包和13项构建记录一致。此前的[链接和发布卫生检查](link-audit.md)没有发现丢失的本地链接、误暂存缓存、论文全文或高置信凭据。该检查是带时点的快照，最终新文档及暂存区范围另见末次审计。

[末次文档与暂存区审计](final-document-audit.json)区分JSON解析、本地链接和发布范围。初版链接解析把行内公式中的系数记号误认成链接；人工确认后跳过代码片段重查，没有修改冻结原文。最终格式诊断为11个EOF空行，比早期快照多一份fresh检查点；没有实际行尾空格或其他格式诊断，继续保留证据字节。

本目录记录发布前可验证的证据，不预填远端成功。用户授权的目标为origin的main；提交后主任务须核对精确远端SHA及该SHA的Lean/API文档CI。Git提交及Actions记录是实际公开状态的入口。主CI不执行研究目录的专用Lean验收。
