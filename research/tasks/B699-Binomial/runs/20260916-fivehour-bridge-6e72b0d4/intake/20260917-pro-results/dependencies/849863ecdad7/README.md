# B699 Pro A — 固定代数关系与每行193上界

从OVERVIEW.md进入，完整论证在notes/PROOFS.md。

主复现只需Python标准库：

    python3 -B code/reproduce.py --out /一个新的空目录

它不会生成14亿项密集矩阵、运行优化器或重放旧数学链。新小核系数尚未恢复；这一边界在报告、状态和接收输出中均保留。

`code/probe_*.py/.cpp`是发现阶段代码（部分用SciPy/NumPy、C++），不属于数学接受入口。对应结果在evidence和logs中；浮点搜索不是证书。原字节输入和所采用的普通文本在sources，逐成员映射在evidence/source_manifest.json。

MANIFEST.json覆盖其他所有归档成员，不包含自身。
