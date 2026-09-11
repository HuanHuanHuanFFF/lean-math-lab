# 有理阶乘公因子：独立审查与 Lean 候选

所有本目录 Lean 源均为**未编译候选**。本任务不启动 Lean、Git、下载或大规模计算；主任务负责按固定源逐文件串行验收及传递公理审计。唯一写入范围为本目录，其他实验、已验源和状态均不改。

- 所属 run：`20260911-low-index-lean-513dc7cc`；支持工作 owner：`/root/i18_downstream_review`。
- 本轮开始：2026-09-11 10:02:02 UTC；父任务未设总时限，每 20 分钟或重要障碍记录 checkpoint。
- 输入：同 run `experiments/huan-G-rational-factorial-test-5e2d13bb/REPORT.md`、`rational-factorial-checks.json`，以及 `lean/PadeInteger.lean` 的实际定义。精确源 hash 记录于本目录检查输出。
- 已接受的 Lean 下界：本候选无。纸面输入的独立审查通过；有限样例不是全参数证明。

## 目标与前沿

对所有自然数 `u,v` 及 `h≤u`，令 `f=v/2`，

`N=(u+f)! f!`，`V=u! v!`，`D=(N:ℚ)/V`。

证明实际无符号系数 `qMagnitude u v u h / D` 是正整数，并推出实际 `qContent u v u / D` 是正整数与 `D≤qContent u v u`。不能把待证阶乘整除作为最终消费者的前提。带 `(-1)^u` 的 `qCoefficient` 的商只有带符号整数结论。

这会解锁一个不依赖素数分布/θ估计的**实际内容下界**。它比已采用的 `L^(dm)` 指数弱；输入 REPORT 的高度可行性检查指出十个原始权重方案均不能直接由此闭合。不能据此替换修正 G/θ 桥、声称 i18 全增长已接受，或提高 B 原题计数。原题全量消费者和新路线的参数优化仍缺；新颖性未评估。

## 独立数学审查

令 `a=u-h,b=h`。偶数 `v=2f` 时，实际商消去组合数阶乘后为

`(2a+b)! (2f+b)! / (a! b! (a+b+f)! f!)`。

对每个 `n>0`，将 `a,b,f` 分解为商和余数 `A=a%n,B=b%n,F=f%n`。整数商部分恰好抵消，所需层不等式化为

`(A+B+F)/n ≤ (2A+B)/n + (2F+B)/n`。

若 `A≤F`，左端被第二项单独控制；否则被第一项单独控制。无需假设 `n` 为素数。把 `n=p^i` 代入并按 Legendre 公式求和得到具体阶乘积整除。对任意 `v`，直接用 `2*(v/2)≤v` 与阶乘单调整除推广，因此不需要在实现中复制奇数支。

接入 gcd 时先证明 `N ∣ V*q_h`，再用有限 gcd 的乘法关系得到 `N ∣ V*G`。正整数见证给出 `G/D`，避免不必要的 Rat.num/den API。这不假设 `D` 自身为整数：`u=v=2` 时 `D=3/2,G=3`。

## 模块边界

拟集成位置为本 run `lean/RationalDivisor/`，由主线程复制，当前候选导入也指向这些位置。

1. `FloorLayers.lean`：具体自然数除法分解及全 `a,b,f,n>0` 的层不等式。
2. `FactorialDivisibility.lean`：固定共同 Legendre 截断，逐素数求和；具体四阶乘积整除两个阶乘积，再放宽第二分子。
3. `Coefficients.lean`：实际 `qMagnitude` 的阶乘清分母等式与 `N ∣ V*q_h`、正性。
4. `Content.lean`：实际有限 gcd 的缩放整除、`D>0`、两个正整数商和 `D≤G`。

只使用已存在且有本机缓存的自然数除法、Choose.Factorization、GCDMonoid.Finset 与有理数基础。未调用 PadicVal、MeasureTheory、IntervalIntegral 或下载新缓存。所有公开结果附 `#print axioms`，不得用 `sorry`、`native_decide` 或自造公理。

## 检查点

- 2026-09-11 10:11 UTC：完成独立纸面审查及实际符号对照；已向主线程反馈四模块划分。确认本机 Legendre 位于已缓存 `Mathlib.Data.Nat.Choose.Factorization`；无需未缓存 PadicVal 模块。正在准备候选和小型独立精确检查。

- 2026-09-11 10:20 UTC：四模块候选已完成到实际 `G/D` 正整数和 `D≤G`，并单独给出有符号系数整数商。小检查通过 6,050 个层实例、169 参数组、1,183 系数；总计算 0.012 秒。源码仍未编译，下一步由主线程按模块顺序实际核验，不能由有限输出或 API 目读标为接受。
