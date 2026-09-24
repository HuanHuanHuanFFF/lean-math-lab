# 汇总包重放说明

汇总时尝试从复制后的 `round12/replay.sh` 重新执行完整重放，但单次容器命令在完整流程结束前达到执行时限；部分输出保存在 `ROUND12_REPLAY_FROM_AGGREGATE.txt`，不能将该次尝试声称为完整 PASS。

本包保留 Round 12 当时已经完成的原始完整重放与验收回执：

- `round12/logs/replay.log`：末尾包含 `ROUND12_REPLAY=PASS`；
- `original-deliveries/...archive-check.txt`：原始 evidence ZIP 的解压验收记录；
- `meta/ROUND12_SHA256_VERIFY.txt`：本次打包重新核对 Round 12 内部 `SHA256SUMS.txt` 的结果；
- `meta/ROUND12_ZIP_SHA256_VERIFY.txt`：本次打包重新核对原始 Round 12 evidence ZIP 外部 SHA-256 的结果。

因此，总包验收只声明“原证据完整保留、哈希一致、总包可完整解压并逐文件复核”，不把这次超时的重复 replay 冒充新的完整验收。
