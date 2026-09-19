# B699 Pro A · Mahler联合预算39

完整证明与新增精确证书。入口REPORT.md；完整数学PROOFS.md；接续HANDOFF.md；证据边界FAILURE_BOUNDARIES.md；来源SOURCE_ADOPTION.md。

本run只有本轮普通文件。旧大ZIP/证书不重复打包，保留实际字节哈希与固定原件指针。唯一主总览仍为用户的OVERVIEW-2026-9-17.md，本包只提供OVERVIEW_DELTA。

## 复验

```sh
python3 -B code/reproduce.py --out /absolute/new-empty-directory
```

Python标准库；输出目录必须新建或为空。此入口不读取旧ZIP、不联网、不分配未知H/G的矩阵、不扫描原题数对。输出CHECKS.json列出有限义务、版本、实际耗时和证据边界。

`code/source_rank_gate.py`只是本轮起初的可选诊断，需显式传入上一轮证据ZIP。它不参与M39主接收，不应误计为源清单缩减。

没有Lean、外部独立全篇审稿或远端写入。数论冻结前置和新作者证明层级分开。

可选诊断的显式调用（不是主接收所需步骤）：

```sh
python3 -B code/source_rank_gate.py \
  --source-zip /path/to/B699-ProA-i9-cubic-source-consumers-evidence-20260917.zip \
  --out /absolute/another-new-empty-directory
```

`notes/AUTHOR_AUDIT.md`是作者自检，不是外部审稿；`SHA256SUMS`供逐成员字节核对。打包后干净解压复验的release-receipt单独提供，避免自引用ZIP哈希。
