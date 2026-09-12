# 实验映射和复跑入口

## 正式新接受

统一入口 `python3 code/reproduce.py --record replay/local`，依次运行：

| 脚本 | 输入 | 实际输出 |
|---|---|---|
|check_sources.py|原dispatch、成员映射、嵌套cut来源|source_binding_check.json|
|build_graph_certificate.py|55矩形＋3三分支，对照模型|graph_certificate.json|
|check_graph_independent.py|上述证书，DFS/Cramer另算|graph_independent.json|
|build_light_certificate.py|17条矩形等价子集|light_graph_certificate.json|
|check_light_independent.py|源17/55、单半空间闭式|light_graph_independent.json|
|check_affine_packing.py|固定有理点质量|affine_packing_check.json|
|check_consumer_arithmetic.py|固定算术和实际D输入|consumer_arithmetic.json|
|check_i3_coverage.py|3个区间计数、5个族实例、投影诊断|i3_coverage_check.json|
|check_negative_cases.py|真实验证器上的13类破坏|negative_cases.json|

输出均位于evidence/；复跑先写临时空目录再比较，不覆盖原件。全部源和输入前后哈希在真实reproduction.json。

## 发现阶段，不承担最终证明

- probe_gamma.py 与 gamma_probe*.json：初步比较不同γ；含未采用的非整数s乐观公式。
- probe_all_lines.py 与 all_lines_*.json：固定有限仿射池/图的浮点发现。
- probe_critical_dual.py 与 critical_dual_discovery.json：发现打包，再精确恢复有理权；正式checker另重建全部线。
- probe_conics.py、probe_conic_graph.py 与 conic_*：有限圆锥池探索，没有全多项式不可能性结论。
- probe_arithmetic.py：n≤10000的投影整除诊断，不是原题完整检验。
- probe_exact_moments.py：辅助k≤50000的完整约数投影范围；辅助参数仍无界。
- supporting_gamma_probe.json：错误的统一斜率15猜测的反向证书。
- critical_zero_probe.json / joint_slope_probe.json：后由正式生成器/独立checker重做的中间发现。
- dependency_ablation_probe.json、rectangle_subset_probe.json：删去3重引理、55→17的发现，已由light正式链重做。
- collisions_without_triple.json：先去掉三素数假设的中间发现，后由两套正式模型重做。

发现性脚本有有限输入域，部分需SciPy/SymPy；环境版本单列。无需运行它们来接受最终纸面接口。最初rectangular_minima.json是交互式形成的37域输入，正式checker从原17/55条自行重建，不信任这一中间文件。

## 失败原件

failures/里两份首版脚本有真实复跑失败记录。浮点转简单分母时的首次负松弛全文未保留，FAILURES.md如实注明；不伪造缺失日志。通过记录、失败记录、发现输出、有限证明数据分开存放。
