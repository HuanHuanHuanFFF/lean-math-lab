# B699：n=4j 的纸面与有限证书链

**未 Lean 化。当前状态：纸面证明＋外部定理＋精确有限证书；未 Lean 化。** 本次合入保存网页研究交付，不构成新的 Lean 验收、人工同行评审或新颖性确认。

对所有自然数 1≤i<j，存在素数 p≥i 同时整除 C(4j,i) 与 C(4j,j)。

原报告给出 n=4j 整族的完整纸面与有限计算覆盖链。核心 T4 完整素数幂转移、POS 正高度指数及 H4 初等高度界不依赖 EEES；整族闭合仍引用 Dusart 的 theta 上界、pi 上界和短区间素数定理。原会话的第二实现检查器报告 PASS，不等于 Lean 内核验收。

## 接续与证据

- [最终交接](HANDOFF.md) · [完整推导](derivation.md) · [本批前沿](frontier.md) · [形式化接口](interfaces.md)。
- [失败与转向记录](attempts.md)；[来源](sources.md)。
- [原版计算记录](experiments/independent-check.json)；脚本的适用范围和恢复方式见原交接。原包历史检查点不覆盖最终 HANDOFF。
- [外部接收快照](../../../../external-results/20260909-web-results-06de4137/README.md) · [原始 ZIP](../../../../external-results/20260909-web-results-06de4137/originals/B699-n4j-web-research.zip) · [接收与字节映射](IMPORT.json)。

来源为用户交付的独立网页 GPT-6 Pro 会话；原研究负责人为该网页会话，本次接收整合负责人为本控制中心。独占新增范围为本批；未接管仍在运行的其他批次。来源和接收基线均为 `7fd3928656489afe2c80698f0a09d1d933444186`；短标识来自原 ZIP 的 SHA-256 前八位。

固定依赖为 Lean v4.33.1、mathlib `0df444a360eaa60ab8c11dca51a86af692955474`，本次未更改 pins。相关旧批次入口：[已交付批次](../20260909-large-prime-structure-cb4764f0/README.md)。网页任务未指定固定小时预算，实际耗时未提供；接收检查点为 2026-09-09，原研究已交付。

本次只核对导入字节、来源映射、入口链接与变更范围，不重跑原实验，不运行 Lean。公共 `Math/Tests/Examples` 未改变；main 的公共 Lean CI 即使成功，也不能提升本批证据等级。后续如重跑会覆盖输出的脚本，应使用隔离副本和新的证据目录，保留原版日志及哈希。

下一步：先评估或形式化 T4、POS、H4 的无解析依赖接口，再处理证书消费者；Dusart 供应定理须继续保持显式依赖。具体规格见 interfaces.md。不要重复搜索已闭合的 n=4j 比例族。
