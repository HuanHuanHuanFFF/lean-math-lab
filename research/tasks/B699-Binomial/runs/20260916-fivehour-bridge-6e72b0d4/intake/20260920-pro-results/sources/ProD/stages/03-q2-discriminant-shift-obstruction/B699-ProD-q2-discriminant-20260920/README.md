# B699 Pro D · q2完整源判别式与平移见证障碍

2026-09-20。此包为数学研究轮交付，不是仓库发布或Lean成果。

**frontier reduction = 0。** 原主目标尚未闭合。本包提供完整源必要条件的准确编码、两条全参数失败族、自然平移的准确估值障碍以及下一轮未决候选。详细结算见REPORT.md；不要把无界弱模型称作NC反例。

阅读顺序：REPORT.md → PROOFS.md → FAILURES.md → HANDOFF.md。SOURCE_ADOPTION.md解释采用范围和字节来源；evidence/包含这次实际程序输出。

## 重放

需要Python 3.9或更高版本，仅使用标准库：

    sh REPLAY.sh

不支持shell时：

    python3 code/replay.py

显示完整输出：

    python3 code/replay.py --json

可选的有界否证探针：

    python3 code/probe_small_g.py

它只完整复算同一个预定的2≤a≤26范围；未证明a有界，不是原题末端。默认重放不运行它。

`--write`仅用于封包前生成结果，通常不应在已封存副本运行，否则可能使哈希失效。默认运行不会改写证据。不要使用Python的`-O`，以免禁用断言。

SHA256SUMS覆盖包内除清单自身外的全部交付文件。ZIP外另提供该ZIP的SHA256。所有无限断言由PROOFS中的全参数推导承担；程序、作者证明、出版输入、Lean和外部独立审读的等级不互换。
