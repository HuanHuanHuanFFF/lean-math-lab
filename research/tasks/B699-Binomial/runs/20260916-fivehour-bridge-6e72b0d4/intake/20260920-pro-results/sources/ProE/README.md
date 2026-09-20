# 读取顺序

1. `00_MASTER/MASTER_REPORT.md`：本会话全部阶段与最终前沿。
2. `00_MASTER/CURRENT_FRONTIER.md`：下一会话直接接续。
3. `00_MASTER/FAILURE_BOUNDARY_INDEX.md`：避免重走已经否证的路线。
4. `02_STAGE_WORKTREES/<stage>/`：看对应轮 REPORT / PROOFS / HANDOFF / FAILURES。
5. `03_EVIDENCE_ZIPS/`：原始交付 ZIP，字节不改。
6. `04_EVIDENCE_UNPACKED/`：便于直接查看代码、证书、输出。
7. `05_VALIDATION_AND_REPLAY/`：实际归档重放记录。
8. `06_EXPLORATORY/`：未形成正式定理包的探索，不能按已证明结果采用。

本归档未修改仓库。
