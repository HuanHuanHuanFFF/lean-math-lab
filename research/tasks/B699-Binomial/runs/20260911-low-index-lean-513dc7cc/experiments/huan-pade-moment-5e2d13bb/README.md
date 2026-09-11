# 有理多项式矩：替代积分前置

- 负责人：/root/i18_downstream_review，受父任务指定的独立新实验。
- 开始：2026-09-11 05:22:28 UTC；没有另设总时限。
- 唯一写入：本目录。旧下游 review、PadeInteger 和其他候选全部只读。
- 来源动机：父任务提出以具体有理矩泛函替代 Beta 积分和 MeasureTheory 缓存依赖；方案启动时未测试。
- 首个检查点：实际定义 M(p)=sum(coeff_k(p)/(k+1))，证明线性、单项式值和全部自然数 a,b 的 betaMoment 恒等式，做小型 Fraction 回归，准备完整但未编译的 Lean 候选。
- 预期改变：消除多项式核的有理 Beta 矩计算所需的实积分前置；若随后将实际 Padé 系数与矩值对应并给出有限 Bernstein 证书，可尝试纯代数的全 m 增长界。
- 仍缺：具体 Padé 核到系数的统一对应、可用的增长常数及证书、阶乘前因子估计、G/θ、最终原题 Lean 消费者。此实验不直接消除任何 i 的无界原题区域，不声明新颖性或新增 B 指标。
- 执行限制：不运行 Lean、大计算、下载或发布。直接依赖的本机 olean 存在只记为缓存盘点，不等同于编译通过。

Moment.lean 是核心独立候选；BernsteinCone.lean 是可分开验收的锥正性及条件增长消费者候选。详细数学、API 和交接状态见 REPORT.md；小算术见 check_moments.py 和 EXACT_CHECKS.json。

完成检查点：具体 M 与全部自然数 β 矩的代数论证已给出；小型精确检查通过。两份 Lean 候选完整写出但未编译。详见 [REPORT.md](REPORT.md)、[EXACT_CHECKS.json](EXACT_CHECKS.json) 和 [FREEZE_V1.json](FREEZE_V1.json)。

冻结后由主线程以固定源哈希接入定向编译；本实验不继续修改这版候选。
