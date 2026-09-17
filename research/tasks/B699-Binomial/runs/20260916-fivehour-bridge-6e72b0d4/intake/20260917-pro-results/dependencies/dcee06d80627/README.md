# B699 · Pro B：任意多槽位数字块的整行排除

入口：REPORT.md → notes/PROOFS.md → SOURCE_ADOPTION.md → HANDOFF.md。

本轮没有新增完整指标；R7不变。新内容为全次数的首窗口多项式禁形、任意块数的明确间隔消费者，以及互素次数的更短结式判据。所有新无界结论为作者纸面证明，未Lean／独立研究者／人类审稿，不主张新颖性。

## 复现

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

仅需Python 3.10或更新版本标准库。重放在新建临时输出目录执行3条命令，逐字节比较7份数学输出；不覆盖冻结输出，不重跑sources/previous.zip的历史实验。replay目录是实际运行日志，不是数学前提。

## 证据边界

小模板／数字向量回归不承担无限证明，完整范围在notes/PROOFS.md。两个大块样例只检查4个向量，已明确标注。新核不需要数论出版高度；联网仅核对官方结式基础接口。

旧原ZIP存为sources/previous.zip，原字节哈希及文本成员映射见sources/SOURCE_MAP.json。没有Git写入或Lean工程。
