# 全偶 k 中心化 Runge 上界：形式化可行性检查

检查时间：2026-09-08。范围是 `next-route-a/centered-runge-bound.md` 的全偶 `k=2r` 有限代数平方根路线；`quarter-runge-bound.md` 的复积分割线路线不纳入目标。没有写新 Lean、构建依赖或安装包。

结论：纸面推导的主代数结构清楚，但在当前固定 mathlib 缓存和约两小时窗口内没有一条低风险的完整 Lean 闭合路径。建议停止启动工程，只保留纸面结果与有限 fixtures，除非主任务愿意先承担 PowerSeries/有限系数 API 和实数误差链的独立建设。

## 已确认的可复用入口

| 用途 | 路径与声明 | 当前缓存 | 可复用程度 |
|---|---|---|---|
| PowerSeries 基础系数/乘法 | `.lake/packages/mathlib/Mathlib/RingTheory/PowerSeries/Basic.lean`：`PowerSeries.coeff`、`mk`、`ext`、`coeff_mul`、`coeff_pow` | `.olean` 缺失 | 能表达系数递推，但需要先构建和胶合 |
| 有限截断 | `PowerSeries/Trunc.lean`：`trunc`、`coeff_trunc`、`trunc_trunc_pow`、`coeff_mul_eq_coeff_trunc_mul_trunc` | `.olean` 缺失 | 可表达固定阶数截断；没有直接的目标平方根定理 |
| 二项式形式幂级数 | `PowerSeries/Binomial.lean`：`binomialSeries`、`binomialSeries_coeff`、`binomialSeries_add` | `.olean` 缺失 | 需要 `BinomialRing`；可给 `(1+X)^r` 系数，但尚未给目标有限平方根/整数缩放 |
| Catalan 生成函数 | `PowerSeries/Catalan.lean`：`catalanSeries`、`catalanSeries_sq_mul_X_add_one` | `.olean` 缺失 | 直接给 `C=1+X*C²` 的整数卷积恒等式，适合作为 `sqrt(1-4X)` 的替代构造；仍需自行连接到多因子乘积和截断 |
| Catalan 递推/闭式 | `Combinatorics/Enumerative/Catalan/Basic.lean`：`catalan_succ`、`catalan_succ'`、`catalan_eq_centralBinom_div`、`succ_mul_catalan_eq_centralBinom` | `.olean` 缺失 | 有整数递推和中心二项式闭式；未找到现成 `catalan n ≤ 4^n`，可由 `centralBinom_le_four_pow` 加除法单调性另证 |
| 中心二项式界 | `Data/Nat/Choose/Central.lean`：`centralBinom_le_four_pow`、`centralBinom_eq_two_mul_choose` | `.olean` 已有（约 20 KB，时间 05:03） | 可支持 Catalan 的粗指数界，但不是完整 Catalan 界本身 |
| 多项式系数 | `Algebra/Polynomial/Basic.lean`、`Coeff.lean`：`Polynomial.coeff_mul` 等 | `.olean` 已有 | 可表达有限多项式乘法/系数；加权卷积仍需新证明 |
| 清分母 | `Algebra/Polynomial/DenomsClearable.lean`：`DenomsClearable`、`denomsClearable_of_natDegree_le`、`denomsClearable_natDegree`、`one_le_pow_mul_abs_eval_div` | `.olean` 缺失 | 面向多项式在有理点取值的清分母，不直接解决平方根系数递推和全局整数差 |
| 旧两尺度整数接口 | `research/tasks/B686-Four/lean/Round3TwoScaleGap.lean`：`intervals_of_small_signed_remainder`、`doubling_of_square_intervals`、`simultaneous_scaling_of_small_remainders`、`not_four_of_two_scales` | 旧 `.olean` 缺失；源码只导入 `Mathlib.Tactic.Ring/NormNum` | 可复用为末端整数/误差判据，但前置的 `A,E` 构造、相对误差和非零首余项仍需证明 |

未找到专用的“按次数加权系数和”“偶次幂求和界”声明；可用的只是 `coeff_mul`、`Finset.sum_le_sum`、幂单调性、二项式粗界等通用工具。Catalan 方案减少了有理系数分母，但不消除这些有限卷积和实数不等式的胶合工作。

## 路线闭合所缺的实质工作

1. 在 Lean 中定义任意 `r` 的有限 Catalan/平方根截断，证明乘 `L=4^J` 后得到整数多项式，并证明截断平方与 `R` 的首 `J+1` 个偶次系数相同。现有 PowerSeries/Catalan 恒等式只提供生成函数层面的入口。
2. 证明 `E=A^2-L^2R` 非零（纸面用 `R(T)` 在 `T=1` 的简单根排除多项式平方），并形式化 `E` 的偶次性、次数界、非零首项整数下界。
3. 形式化 `Arel`、`Erel`、`Gap` 的实数有理不等式和 `X≥X0` 下的误差夹逼，再把整数差 `H=A(Y)-2A(X)` 接到 `Round3TwoScaleGap.not_four_of_two_scales`。这不是已有接口的直接调用，含多个严格常数和大小条件。
4. 处理 `r=1`、`r=2` 等边界和 `ell=0` 分支，并把 `X=2n+k+1`、`Y=2m+k+1` 的自然数条件桥完整接回原方程。

有限证据 `[centered-runge-probes.json](../next-route-a/centered-runge-probes.json)` 覆盖偶数 `k=2..64` 的 32 个精确 fixtures，不能替代上述任意偶数定理。

## 决策

继续：保留纸面路线、Catalan/PowerSeries API 路标和旧 `Round3TwoScaleGap` 入口，作为以后专门形式化任务的起点。

停止：当前不启动工程。缓存缺口、Catalan 到有限多项式的自定义胶合、加权系数界和实数误差链共同构成完整闭合路径；在剩余约两小时内，低风险交付应优先级不足。该判断不否定纸面论证，也不把有限 fixtures 宣称为 Lean 结果。
