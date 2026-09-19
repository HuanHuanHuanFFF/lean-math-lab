# B699 Pro A · Weight6 closure / at most43 covering components

阅读入口：REPORT.md → PROOFS.md → HANDOFF.md。唯一项目总览仍为用户提供的OVERVIEW-2026-9-17.md；本目录为后续研究增量。准确结论、冻结来源与证据缺口见SOURCE_ADOPTION.md及FAILURE_BOUNDARIES.md。

本轮新接收：

```sh
python3 -B code/reproduce.py --out /absolute/new-empty-directory
```

要求Python3和g++（C++17）；接收只用Python标准库。它会编译两套新的小型源枚举，核对49,040个源子集、权重、高度、四个真实整数核、23个密集源配置和四个全容量乘积，并生成REPLAY.json。运行只使用新输出目录，不修改输入证书。不要把浮点近似、模秩下降或历史PASS标签当作整数证书。

`code/reproduce.py`、`code/accept_source_ranks.cpp`为接收主入口；`eval14_probe.cpp`、`eval_dense_probe.cpp`作为独立对照实现重放。其他code文件是本轮发现或诊断来源，可能需要SymPy，不能因存在于包中就视为最终采用。证据地图见evidence/OBLIGATIONS.json。

`logs/new-acceptance-01`是失败的首轮自检，`logs/new-acceptance-02`是修正后的新接收；后续打包前及解压重放记录另存。发现日志和未采用诊断保留；可重建的编译二进制和Python缓存不打包。旧大证据ZIP不重复附入，来源只有指针/哈希。

所有结果仍是作者纸面＋精确证书，不是Lean、外部独立全篇审稿或原题全部闭合。43是覆盖分量上界，R7、57模板、152行目标与一般无界参数不变。
