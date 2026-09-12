# 本轮探索运行

`probe_residual.cpp`已实际编译运行，范围n≤1000000，结果在evidence/probe-residual.json。它仅诊断R=1，不参与最终无限证明或默认接受。

`python code/probe_outer_nine.py`已实际运行：15120周期和31个小素数的探索输出在evidence/outer-nine-probe.json。随后压缩为六族12格，默认接受只重建完整短证书。

大数因式分解只用于寻找行实例；最终完整分解与素性由标准库完整试除独立接受，不依赖探索用的分解库。
