# B699 Pro A · LOC77 / LOC83 / SAT144 / COVER10

这是2026-09-20本会话第三轮的新证据包，接续COVER11。先读REPORT.md，再读PROOFS.md、FAILURE_BOUNDARIES.md和HANDOFF.md。

核心：同一个固定G的可载点不可约分量≤10；若总余量E≥1则≤9。达到10必须G加权次数305且剥源竖线后的所有因子零余量。不是全i9闭合，实际G仍未恢复。

## 一条完整接收命令

在本包根目录执行：

    python -B code/reproduce.py --out /absolute/nonexistent/replay --workers 3 --compare

输出目录必须事先不存在。需要Python≥3.11、NumPy、g++或CXX指定的C++17编译器；Linux/类Unix环境。程序从包内源码编译精确工具，不联网、不使用SymPy/SciPy、不读取旧包或仓库。没有Lean。

`--compare`将所有确定性JSON输出与verification/final逐字节对照；编译工具、性能日志和RUN_STATS不属于确定性数学输出。外部release receipt另记录最终ZIP哈希、空目录解压及实际执行结果。

## 文件入口

- evidence：完整根门、子式、精确核、全部仿射空间、全参数签名、模131不可约边界、联合账本发现结果。
- code/reproduce.py、verify_new.py、verify_location_ledger.py、negative_checks.py：最终接收。
- code/discover.py：方便的串行重发现驱动（需SymPy），拒绝已存在输出。实际本轮采用分阶段命令，其日志在logs；不声称这个后装配驱动曾作为整条命令运行。
- code/gates.py、nf_gate.cpp、sat_gate.cpp、jets.py、fast_jets.py、recover.py、modular_kernel.py、signatures.py：发现工具；两种根矩/枢轴和Newton/Lagrange表示区分。
- verification/final：实际分阶段接收的确定性参考输出；最终档案会在新的空目录作完整单命令重放。
- SOURCE_ADOPTION、evidence/source_manifest：冻结前置的准确路径/哈希与移植代码归属。没有重复装入旧大证据。

可选探索脚本中的冻结几何探针按SOURCE_ADOPTION定位输入，不是最终接收依赖。所有已采用新结论均由上述完整接收链覆盖。

证据等级为作者纸面＋确定性精确证书＋同会话另一实现，非外部独立全链审稿。
