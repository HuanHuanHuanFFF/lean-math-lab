# B699 Pro A — cyclotomic/adjacent next round

入口：REPORT.md → notes/PROOFS.md → SOURCE_ADOPTION.md / FAILURE_BOUNDARIES.md → HANDOFF.md / SESSION_STATE.json。

新接收（Python 3标准库，无额外依赖）：

    python3 code/reproduce.py

为保留发布成员字节不变：

    python3 code/reproduce.py --output /absolute/path/to/new-results

条件形状界：

    python3 code/fiber_bounds.py --E 13

接收不运行发现搜索、不运行LLL，不运行旧content/A14局部块/A9末端，也不是Lean。所有无界量词的纸面证明见notes/PROOFS.md。

inputs内仅一个原字节ZIP；sources内8份精确采用副本附路径和SHA。SHA256SUMS覆盖本包其余数据成员，不包含自身。外置release-receipt记录最终ZIP SHA、解压校验、干净目录实际重放及重放前后成员一致性。
