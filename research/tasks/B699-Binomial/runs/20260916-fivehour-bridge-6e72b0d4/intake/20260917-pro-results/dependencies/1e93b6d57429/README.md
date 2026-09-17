# B699 · Pro D · H02⁺ residual splitting · 2026-09-16

阅读顺序：REPORT.md → SOURCE_ADOPTION.md → PROOFS.md → notes/FAILURES.md → HANDOFF.md。

本包是新一轮数学交付，不包含继续执行仓库任务的授权。所有无界主张及完整端点在PROOFS.md；证据只承接其中明确的有限义务。

## 本轮新链的本地接收

需要 Python 3.10+，接受过程仅用标准库：

```sh
python3 code/replay.py
```

它实际运行：生成新证书 → 不导入生成器的另一检查器 → 非真空/原题回归 → 损坏证书拒绝。不会读写用户仓库、访问网络、运行历史全链或执行discovery脚本。不要用 `python -O`，因为检查器以assert作为数学接受门。

- evidence/new-certificate.json：三正核、Taylor/正性数据、完整有限域、全部终端分解与CRT记录。
- outputs/generation.json、verification.json、regression.json、mutations.json：各层实际结果，运行时间不是无限证明。
- sources/SOURCE_MAP.json：实际源字节及采用边。唯一数学输入为旧QIG §1–3，完整原文随包；其他源用于比较。
- MANIFEST.json：发包时全部非清单成员的大小和SHA256。重复运行会更新含时间的outputs；完整性核对应在运行前。
- notes/DECISIONS.md、FAILURES.md：选择、失败、比较及未控制参数。
- 其他 probe 脚本/输出：探索记录，部分依赖Sympy/Scipy；不在接受链中，不要求重跑。

等级：纸面证明＋本会话两套确定性实现；未Lean、未外部独立审读。完整指标仍为R7。无外部出版新输入，未继承单位窗口的Bugeaud/Yu链。
