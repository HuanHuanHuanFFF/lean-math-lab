# 探索诊断，不是闭合证书

probe_negative.py及probe_negative.json保留首个完成的d≤3000诊断。该脚本原运行的输出路径为/mnt/data/b699-next-exploration/probe_negative.json；跨环境重跑时只需改变该输出位置。范围2498个d、110324个经过系数筛的状态，一项正本原坐标，原行模板恢复零项。运行时间字段不是确定性数学输出，主reproduce不比较该实验的计时。

之后扩大探针的工具调用超时中断；临时sed还使实际范围与标签不一致，故该脚本及未完成结果均未采纳。详见FAILURES F1。

无限结论完全由proofs/PROOFS.md的完整赋值、严格大小界和12状态的完备归约证明，不从这个探针的零命中外推。
