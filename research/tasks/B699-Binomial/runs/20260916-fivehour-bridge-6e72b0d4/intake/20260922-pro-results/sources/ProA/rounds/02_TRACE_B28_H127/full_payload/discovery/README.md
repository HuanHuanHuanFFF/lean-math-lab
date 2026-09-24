# 发现器、原试验及重放边界

原始C++发现器：b28_restricted.cpp；tail_q5.cpp、tail_q6.cpp、tail_q7.cpp；tail_q7_weighted.cpp。
对应JSON为当时完整输出，tail_q7普通版本无完整JSON，因为该次命令超时；空日志只记录未完成。
recover_b28.py和recover_tail_q5.py使用SymPy作发现性精确恢复/因式分解；
最终code/algebra.py改用标准库Fraction并检查完整方向的因子恒等式。

joint_ledger*.py是发现过程不同门费用的有理插值版本；原始脚本保留其当时绝对依赖路径，
需要上一ZIP解压在 `/mnt/data/prev_b22/B699-ProA-B22-H117-20260921/`。
不修改这些已运行原脚本来伪造历史哈希或声称其原本独立。
最终code/ledger.py已完全独立于旧目录，并从最小采用文件读取11族。

发现输出与最终输出的等号状态集合已核对相同；原中间记录包含较大的规范代表表，
不把这些记录数量解释为多项式或B699点的数量。
编译二进制不保存，均可由源码编译。
