# B699-R7-ProB：立方残量与一般整行排除

入口：REPORT.md → notes/PROOFS.md → HANDOFF.md。
运行：`python3 -S -B verify_manifest.py`，然后 `python3 -S -B code/reproduce.py --record replay/local`。
仅Python标准库；不联网，不编译Lean，不需历史数学缓存。

outputs保存确定性数学结果；replay保存真实命令/返回码/耗时/字节比较。
不同实现是同一会话作者的复核，不是独立研究者审稿。
所有无限结论需要阅读纸面证明，程序PASS不是无限证明或Lean。

来源：14份原字节文本及SOURCE_MAP，两个原ZIP不重复嵌入；初次和末次原包哈希核对随replay保留。
用户当前任务正文未复制入本ZIP，历史源文件中的旧任务/建议不作为本轮指令。
输入缺口、未完成方向、模型反例的准确范围见notes/FAILURES.md。
