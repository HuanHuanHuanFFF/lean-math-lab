# B699 Leader intake：Pro B 原件行政归档

接收日期：2026-09-11。负责人：Leader；归档支持：package_b_intake。写入范围为本 run 与题目/Leader 导航；未设研究时间预算。本轮目标为保存交付和接续状态，来源基线与发布方式见 handoff。

本 run 仅归档两份 Pro B 冻结附件中的 UTF-8 文本作者材料，保留源码、证书、失败记录、日志、来源副本和 manifest 的原路径与原字节。归档清单、成员 SHA-256/大小、落地路径、ZIP 内精确偏移和遗漏二进制位置见 [`ARCHIVES.json`](ARCHIVES.json)。完整原 ZIP 由已上传附件提供，永久文件标识见清单；下文占位路径需替换为执行者实际取得的附件路径。

归档结果：107 个 UTF-8 文本成员，共 1,311,182 bytes；二进制成员遗漏 1 个，共 152,666 bytes。精确内容包：54 个文本成员，ZIP 152,666 bytes，SHA-256 `7b30ab2decda6ce9e5e7d47d54fe8b769be8f2877788701d602781c4fd974dae`，Library ID `libfile_ea4c50aa2f5c8191a5a581eb8886c21e`。约分分子包：53 个文本成员和 1 个二进制成员，ZIP 284,551 bytes，SHA-256 `d3600610a6b2f465f42e2d47a7ae4d0c7b783d24ca0ff91f9d41f283f98f30ae`，Library ID `libfile_6e18713b2c6481919651b2dd6dce07db`。

唯一遗漏的 binary 是约分分子包成员 `originals/previous-exact-content.zip`（成员序号 26；未压缩 152,666 bytes；SHA-256 `7b30ab2decda6ce9e5e7d47d54fe8b769be8f2877788701d602781c4fd974dae`）。它与精确内容附件原 ZIP 字节完全相同，因此可从附件恢复完整布局；归档已提供 [`restore_binary.py`](restore_binary.py)。在仓库根目录运行：

```bash
python research/tasks/B699-Binomial/runs/20260911-leader-intake-b-6e18713b/restore_binary.py \
  '/path/to/B699-R8-ProB-reduced-numerator-closure-evidence(1).zip' \
  research/tasks/B699-Binomial/runs/20260911-leader-intake-b-6e18713b/receipts/reduced-numerator/originals/previous-exact-content.zip
```

脚本只读取 ZIP、复制成员原字节并核对大小/SHA-256，拒绝覆盖已有输出，不执行任何数学或作者文件。该命令补齐已归档第二包的完整布局；随后可在 `receipts/reduced-numerator/` 使用作者的复现入口，由具名技术执行者负责核验。两个附件本身仍是完整原始来源。二进制没有编码文本副本，恢复受限于相应附件仍可读取且输出父目录可写。

Leader 本轮没有做技术验收、数学核验、证书复跑、Lean 编译或作者脚本执行；没有新增 Lean。R8 仍为 `{3,4,5,6,7,8,9,14}`。状态与接续交由：[`frontier.md`](frontier.md)、[`handoff.md`](handoff.md)、[`prompts/B699-Pro-B-reduced-numerator-followup.md`](prompts/B699-Pro-B-reduced-numerator-followup.md)。

行政比对通过：107/107 个落地文本成员与 ZIP 解压成员逐字节相同；遗漏 binary 与精确内容原 ZIP SHA-256 和字节均相同。完整结果和成员级证据见 [`ARCHIVES.json`](ARCHIVES.json)。
