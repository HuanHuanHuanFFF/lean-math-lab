# KernelMoments 两处最小修复（待实际复验）

唯一修改源是 `lean/Moment/KernelMoments.lean`。第一轮证据 `verification/20260911T074703818438Z` 在第 35 行留下常数多项式映射尚未展开的代数目标，在第 60 行报告 `HasDistribNeg ℚ[X]` 合成达到最大递归深度；三项公开声明均含 `sorryAx`，该次失败仍保持拒绝状态。

第一处把原简化列表中的泛化 `map_pow` 换成固定 mathlib 实际声明 `Polynomial.C_mul` 与 `Polynomial.C_pow`，它们分别把系数乘法、幂送到常数多项式。该问题是映射归一化，不能单靠 `ring` 把未展开的 `C` 应用当成自动同态。

第二处先通过 `← Polynomial.C_mul` 和有理数上的 `neg_one_mul` 证明 `C (-(1-z))=C(-1)*C(1-z)`，再将原来的泛化映射及 `neg_pow` 简化列表缩为 `mul_pow, Polynomial.C_mul, Polynomial.C_pow, pow_add`。两边保留相同的 `C(-1)^C` 因子，交给交换环归一化。本次没有提高 `maxRecDepth`，没有新增数学前提。原 `neg_pow` 的右边重新含有符号 `(-1)^n`，新路径避开该负幂简化；日志只能直接证明递归深度耗尽，内部准确原因尚未用诊断追踪确认，不把它误记为缺少多项式环实例。

源前后 SHA、真实诊断日志 hash、固定库源及其他已验源 hash 见 `fix-record.json`，完整差异见 `change.patch`，修改前源码见 `source-before.lean`。原实验冻结源及已验 Moment、Kernel、Subdivision、Factors 都未改。本代理没有运行 Lean 或 Git。下一步是主线程按修复后 SHA 编译，并核验三个公开声明的传递公理；如果仍有失败，应以新的真实诊断继续处理。
