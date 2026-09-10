# 代码分级

所有脚本以本目录的父目录为证据包根目录，解压到任何路径都可运行。不要使用 Python `-O/-OO`。

## 核心接受（Python 标准库）

`verify_refined_profiles.py`：正式七项结果的唯一主入口。重新验证63条数值约束、穷尽14,112个取向、整数检查七个高度。不会调用浮点探针或分支界定生成器。

`verify_pair_intervals.py` 与 `rational_intervals.py`：公开的有理区间核；外部输入 BFT Lemma 4.1/Proposition 5.1 不由脚本证明。多项式恒等式与行列式在报告中有初等独立推导，不另留下隐藏外部假设。

`verify_graph_and_heights.py`：独立取向枚举，同时保留更保守的13条统一约束、七项 n<2^100000 的先期验收结果。它不是精细高度的替代输入。

`audit_elementary_bridge.py`：精确回归，不代表有限样本证明一般引理。特别单独覆盖 p=i。

`size_crt_interface.py`：为七项导出高度接口；对 i=25 精确计数旧 CRT 规模。没有执行 CRT、候选穷尽或闭合。

`reproduce.py`：依次执行正式核查、回归、规模计数，并编译运行 C++ 的 i=3 弱系统扫描。保存退出码、stdout/stderr 和关键源码/输入哈希。重放全部步骤需要 g++；缺少它时，前三个 Python 命令仍能独立重放数学主证书。

## 数学发现，不用于接受

`probe_*.py`、`select_certified_cut_design.py`、`refine_height_profiles.py`、`disjunctive_graph.py`：参数发现与选择。部分采用浮点、mpmath；参见各文件 import。它们的输出即使标有好看的指数，也不能替代正式有理验收。已采用数据冻结在 results/refined_profiles.json，重放正式结果不需要重跑参数发现。

`probe_i3_slots.cpp`：i=3 必要系统的精确 C++ 探针，n≤10^7，未对无界区域作结论。代码使用 GNU __uint128_t；g++ -O3 -std=c++17 即可编译。输出中 both_pass=0 不是一般 B699 定理。

所有探针代码均为实际研究中使用的源码；并非所有可选参数组合都被执行。正式运行范围以归档日志和重放记录为准。
