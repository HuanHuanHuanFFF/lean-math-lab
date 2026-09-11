# 单个真实增长证书叶片的 Lean 接入原型

- 负责人：/root/i18_downstream_review；开始 2026-09-11 08:24:56 UTC；无另设总时限。
- 唯一写入本目录；旧实验、所有冻结/已验源、runner 和 index 不修改；不运行 Lean。
- 选择：实际 row 00，(p,q)=(2,13)，(c,d)=(3,2)，z=5/512，Q core 的第 0 个叶片 I=[0,1/8]，路径 000；λ=NQ/2^96，NQ=6522198863402714783048734994。
- 目标：证明实际拉回的 core/两 δ weight 属于 BernsteinCone；证明实际 λ−core 拉回等于从真实证书生成的非负 Bernstein 组合；最终构造两个真正的 GrowthTree.leaf。
- 声音性边界：必须证明多项式等式，不仅检查 JSON 系数符号。候选将使用已缓存 Polynomial.funext，把实际多项式等式降为全部有理 x 的明确 ring 等式；不是有限点采样。
- 预期解锁：确认实际证书数据进入 Lean 锥与树构造的可执行小接口。完整 244 叶分段树、全种子增长、G/θ 和 B 原题不由这个单叶结果完成。
- 状态：小型原型准备中；所有新 Lean 文件均未编译，真正编译由 primary 串行执行。

完成检查点：已生成真实 row00/Q/leaf0 的两个 δ 三锥与 GrowthTree.leaf 候选，实际多项式系数恒等式精确检查通过，并拒绝保持正系数但破坏等式的篡改。两次生成源码字节相同；当前运行0.0370秒、峰值23,334,912字节。没有运行Lean。

入口：[REPORT.md](REPORT.md)、[AffineCone](AffineCone.lean)、[ConcreteLeaf](ConcreteLeaf.lean)、[生成检查](GENERATION_CHECK.json)、[冻结清单](FREEZE_V1.json)。本版冻结后不再修改。
