# B699 Pro D · 本会话完整研究总包（2026-09-20）

本包整理本会话从首次读取 `OVERVIEW2026-9-26.md` 到“单候选格恢复”阶段为止的全部 Pro D 研究交付。

范围：主责 `i=4,…,8`，实际主线集中在 i6/H025 两尾类、RES10、全近侧中心较小＋低残量支；没有接管 i3 专用路线，也没有主攻 i9。

## 顶层目录

- `SESSION_SYNTHESIS.md`：本会话完整累计数学结论、阶段时间线、失败边界与当前未解决问题。
- `stages/`：7 个阶段的完整 evidence ZIP 解包副本，包含 REPORT/PROOFS/FAILURES/HANDOFF、代码、证书、replay、来源摘录等。
- `original_archives/`：7 个当时实际交付给用户的原始 evidence ZIP，按原字节保留。
- `delivered_sidecars/`：当时单独提供下载的 `.sha256`、`.verification.json`，以及运行时仍存在的单独 Markdown 目录副本。
- `verification/`：本次总打包重新执行的 7 阶段 replay、ZIP 完整性与统计记录。
- `session_context/`：会话入口与来源说明。
- `FILE_INVENTORY.tsv`：总包内逐文件清单及字节数。
- `MASTER_SHA256SUMS`：总包所有文件的 SHA256（不含其自身）。
- `REPLAY_ALL.sh`：在总包解压目录中依次执行 7 个阶段的 `REPLAY.sh`。

## 总状态

严格按本会话一直采用的记账口径：**所有阶段均未认证相对全部历史覆盖并集的真实未知无界区域净减少，因此累计 `frontier reduction = 0`。**

这不等于没有新数学结果。本会话完成了多条全参数条件消费者、支持族闭合、失败反模型、原行唯一性和可执行格恢复接口。完整列表见 `SESSION_SYNTHESIS.md`。

完整指标仍为 `R7={3,4,5,6,7,8,9}`。没有 Lean、新仓库提交、PR、push 或仓库修改。

## 重新验证

本次总包制作时，在总包自己的解包副本中重新执行全部 7 个 `REPLAY.sh`，结果均为 PASS。详见：

- `verification/replay_summary.tsv`
- `verification/replay_all.log`
- `verification/original_archives_ziptest.txt`

运行：

```sh
bash REPLAY_ALL.sh
```
