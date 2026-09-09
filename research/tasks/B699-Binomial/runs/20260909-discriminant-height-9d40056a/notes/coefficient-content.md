# 实际系数内容桥

负责人：coefficients 子任务；独占本文件及 `lean/CoefficientContent.lean`。基线 `main` 为 `7fd3928656489afe2c80698f0a09d1d933444186`。共享开始 2026-09-09T05:58:52Z，原截止 08:58:52Z；06:43:52Z 检查点，08:13:52Z 收束。子任务不自行延期，不启动并行 Lean 流水线。

## 目标、来源与预期用途

原输入为自然数 `1≤i<j≤n/2`。实际对象固定为

`F = ∑ r∈range(i+1), C(j.choose r * (n-j).choose(i-r)) * X^r : Polynomial ℤ`。

直接采用旧 `PrimePowerTransfer.lean` 中的 `B699LargePrimeStructure.avoidingPart n i j`；这是 `C(n,i)` 中所有 `p≥i` 且 `p∤C(n,j)` 的**完整**素数幂乘积。其 `avoidingPart_eq_primePart_of_noCommon` 已在旧批验收；本批不重做旧批验收或修改旧文件。

已读旧云端 report/frontier/HANDOFF/ACCEPTANCE、旧电脑 report/frontier/handoff/acceptance，以及 GapBridge、PrimePowerTransfer、SmallPartBound、SlopeThree 和 `notes/discriminant/source-and-identity.md`。纸面来源中的系数恒等式是本桥的采用输入，下面重新在 Lean 证明，不把纸面论断作为公理。

预期变化：接通“实际完整素数幂部分 → 实际整数多项式内容 → 判别式缩放”的第一段。单独完成此桥不会排除新的原题区域；具体判别式非零性与次数有利上界、有效高度消费者仍需其他模块。

## 数学推导与接口

对 `r≤i≤j≤n`，并在所有相关指数合法时，交换两种选取次序给出

`C(n,j) C(j,r) C(n-j,i-r) = C(n,i) C(i,r) C(n-i,j-r)`。

若 `D=avoidingPart n i j`，实际定义给 `D∣C(n,i)` 和 `Coprime D C(n,j)`。因此恒等式给每个实际系数被 D 整除。这里不删除 `p=i`，也不只取平方自由部分。只有在原始 `¬∃p, Prime p ∧ i≤p ∧ p∣gcd(C(n,i),C(n,j))` 下才把 D 换为 V。

计划公开接口放在 `namespace B699Height`：`coefficientPolynomial`，自然数恒等式 `coefficient_identity`，实际 D/实际 V 的每个系数整除，多项式系数/degree/端点/`eval 1`，以及实际 `F=C(D)*G` 的整数多项式见证。代数子任务另明确需要导数下降桥 `F'=C(j)*F(n-1,i-1,j-1)`，在基础接口完成后接通。

## 当前证据与下一项检查

2026-09-09T06:06Z：旧接口静态核对完成；工具链及 mathlib 源正在由统一环境线程恢复，本子任务没有启动 Lean。下一项可证伪检查是固定 mathlib 的 `Nat.choose_mul`、系数求和及导数选择递推 API；新文件只在串行编译通过后标记 Lean 已证。

2026-09-09T06:22Z：完整候选已落盘，无占位证明。固定提交的原始 mathlib 源已通过官方 GitHub raw 核对相关 API：Choose/Basic、Choose/Vandermonde、Polynomial/Coeff、Polynomial/Derivative、Degree/Domain 与 Eval/Coeff。实际商多项式另有 `coefficientPolynomial_quotient_natDegree` 与 `coefficientPolynomial_quotient_ne_zero`，供内容判别式消费者使用。依赖闭包只需新消费者实际采用的旧模块；未启动编译，尚不标记 Lean 接受。

首次实际编译记录为 `verification/dev-20260909T063937752657Z/006-CoefficientContent.log`。只有 `coefficientPolynomial_coeff` 的一处根错误：默认 `simp` 先拆开 `C` 及自然数乘积的强制转换，因而 `coeff_C_mul_X_pow` 失去匹配。修复为 `simp only` 限定使用有限和系数、单项系数和范围成员公式；实际定义与声明没有改变。此前自然数系数恒等式、完整 D/V 整除和 `eval 1` 输出只含标准公理。其余依赖该失败声明的 `sorryAx` 是 elaboration failure 传播，整次编译未接受，也不能把它记为源码占位已通过。等待主线程重编。

后续主线程编译 `verification/dev-20260909T064447443898Z/006-CoefficientContent.log` 成功：本文件八项实际传递公理输出均仅含 `propext`、`Classical.choice`、`Quot.sound`。这是开发编译证据；最终完整新输出闭包验收仍由主线程统一产生。实际系数、整数商、次数、端点与导数基础现已通过内核编译，数学主链后续还有完整上界及最终消费者验收。
