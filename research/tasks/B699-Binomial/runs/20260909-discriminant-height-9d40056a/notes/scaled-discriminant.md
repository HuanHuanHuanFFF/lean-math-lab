# 保留阶乘的判别式上界

负责人：coefficients 子任务；主线程于 2026-09-09T06:15Z 前追加独占 `lean/ScaledDiscriminant.lean` 及本文件。共享原截止 08:58:52Z、检查点 06:43:52Z、收束 08:13:52Z，不自行延期或启动 Lean。

## 目标与确切依赖

仍使用实际 `B699Height.coefficientPolynomial n i j`，没有引入假想多项式。目标是对自然数 `1≤i`、`i≤j`、`i≤n-j`、`j≤n` 证明

`(i.factorial^(2*(i-1)) * F.discr.natAbs)^2 ≤ i^(i*(i+1)) * n^(3*i*(i-1))`。

该量纲为主线程 `FactorialHeight.lean` 的具体消费者所需，保留完整阶乘。其意义是把实际内容下界和 `U≤n^π(i−1)` 接到显式高度；单独代数上界仍不关闭 B699 全题。

与 algebra 子任务锁定的实际接口：

- `coefficientPolynomial_discr_step`：在 `2≤i,i≤j,i≤n-j,j≤n` 下，`(i:ℤ)^(i-2)*Disc(F) = (j:ℤ)^(i-1)*C(n-j,i-1)*C(n-1,i-1)*Disc(F(n-1,i-1,j-1))`。
- `coefficientPolynomial_discr_one`：`1≤j` 时实际线性多项式判别式为 1。

截至本文初写，这两个接口由 algebra 正在实现，尚非已验收依赖。本模块可先写泛型代数辅助，但最终主定理必须调用实际接口，不能把未证公式假设当作完成。

## 精确消阶乘与平方归纳

定义 `Δ(n,i,j)=i!^(2(i-1))*|Disc(F)|`。对 `i≥2`，给实际判别式递推乘 `i^i*((i-1)!)^(2(i-1))`。因 `i+(i-2)=2(i-1)`，以及 `i!=i*(i-1)!`，无需除法就得到左边 Δ。右边用两次 `m.descFactorial r=r!*C(m,r)` 并合并阶乘指数，得到

`Δ_i = i^i * j^(i-1) * (n-j).descFactorial(i-1) * (n-1).descFactorial(i-1) * Δ_(i-1)`。

平方后，`j,n-j,n-1≤n` 和下降阶乘界给新增 n 次数 `6(i-1)`。归纳假设贡献 `3(i-1)(i-2)`，总和恰为 `3i(i-1)`。i 因子满足

`i^(2i)*(i-1)^((i-1)i) ≤ i^(2i+(i-1)i)=i^(i(i+1))`。

线性基例是 Δ=1，目标左右均为 1。下降参数 `(n-1,i-1,j-1)` 保持四个域约束，且 `n-1-(j-1)=n-j`，避免改变 k。该较粗上界不用额外的 `jk≤n²/4`，已经恰好满足高度消费者。

## 当前状态

纸面归纳已核对，数学常数无需调整。等待实际判别式递推完成及统一环境首编；具体代码、诊断和 Lean 接受状态将在本文件续记。

2026-09-09T06:22Z：完整 `ScaledDiscriminant.lean` 候选已落，导入实际 `JacobiIdentity.lean`，最终名称按主线程约定为 `coefficientPolynomial_scaled_discr_sq_le`。取绝对值、精确 Δ 递推、一步上界及强归纳均有证明体，无占位和公式参数。实际 Jacobi 来源接口亦已落盘，但双方均等待统一首编，因此整个新链仍属于静态候选，不能宣称已验收。
