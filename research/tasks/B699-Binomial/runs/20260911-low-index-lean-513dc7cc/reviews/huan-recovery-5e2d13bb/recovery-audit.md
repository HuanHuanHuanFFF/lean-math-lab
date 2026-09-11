# B699 恢复接收审计

审计固定副本 `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67`，只读核对原 `RECOVERY.md`、`ci-evidence-audit.json`、`published-source-audit.json`、`recovery-metadata.json`、恢复树和当前 CI 元数据。没有运行 Lean、没有下载 acceptance 大对象、没有复制源码、没有提交或推送。

结论是 38–45 的历史 CI 证据可按行接收，尚不构成当前工作树的新 Lean 验收或发布状态。9 个证据归档的 CRC、大小和 SHA-256 全部通过，当前 GitHub run 34525396228 的 evidence digest 与本地归档一致。每行源码闭包对照均为 `missing=0, mismatch=0`：22 个归档外上游源码在固定副本存在且干净，4 个共享源码哈希一致；固定 pin 为 Lean 4.33.1、mathlib `0df444a360eaa60ab8c11dca51a86af692955474`，9 个依赖均报告 `head_matches=true, clean=true`。

八个 `common_i038` 到 `common_i045` 都是完整的

`∀ n j : ℕ, 1 ≤ i ∧ i < j ∧ j ≤ n / 2 → ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.choose n i ∧ p ∣ Nat.choose n j`，

且声明名、原题源哈希、日志哈希和传递公理输出均与证据相符；公理集合为 `propext`、`Classical.choice`、`Quot.sound`。每行 25 项复用均满足 before/after 源码哈希相同、对象存在、退出码为 0、无失败/超时且无 unexpected axioms。

共享 acceptance 包位于恢复包的 `ci-artifacts/b699-shared-acceptance.zip`：外层 SHA-256 为 `be00c892c5612e8b11fbfc6fc3dc84e98cba24235b0ec9a2e27197cbd2679d16`，内层 `shared.zip` SHA-256 为 `82a49e63c8f37a6ff985704ea804258f36fb5c2bf9e2f84551d4b91902c87635`。内层有 26 个 `.olean`、46 个日志、1 份 evidence 和 `cache-manifest.json`；manifest 的 73 项逐项大小/哈希核对全通过。`manifest_sha256` 指向 lake-manifest 哈希，而不是 manifest 文件自哈希。

机器可读的完整路径、哈希、行级摘要、冲突列表和建议复制映射见 [recovery-audit.json](./recovery-audit.json)。`conflicts` 为空；工作树中与本审计无关的既有变更仍需由主线程保护。审计不声明 38–45 已 push 或已发布。
