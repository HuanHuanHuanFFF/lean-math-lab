# 发现材料，不属于接受前提

这些文件保留本轮实际探针、首次较高次数解、失败输出、模核及正性改写。正式接受只读取根目录evidence及绑定sources，不执行本目录。

执行顺序大致为：三次单零点／临界LP探针 → peel_interpolation和fat-degree探针 → H026首次25次解 → 16/22次解 → H024对称32次解 → 模重构／三角域正性 → 根目录正式证书。

部分发现脚本使用工作时的绝对路径、现有SymPy/NumPy/SciPy及其他发现文件；原样保留，不能声称它们脱离工作目录都可直接执行。可移植、已经执行过的三份系数恢复入口是根目录code/reconstruct_polynomials.py。

construct_symmetric024.py直接整数大矩阵求核超时；实际成功路线为reconstruct024.py的模重构，随后完整整数方程验核。probe_symmetric.py对H023未取得正向解且被工具超时中断；它不是任意次数失败证明。一般方法障碍由notes/PROOFS.md §8独立证明。

旧failure_models仅作为选路诊断，原件身份可追溯至sources中的嵌套D-odd-full包。本轮不把旧有理模型当作整数反例或新成果。完整执行失败说明见notes/FAILURE_BOUNDARIES.md。
