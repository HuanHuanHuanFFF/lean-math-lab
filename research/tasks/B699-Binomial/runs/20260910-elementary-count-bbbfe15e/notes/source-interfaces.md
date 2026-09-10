# 固定接口与证明对应（源码读取，未编译）

固定 mathlib：`0df444a360eaa60ab8c11dca51a86af692955474`。原作者与许可均归mathlib原文件；本分支不复制上游证明为本轮新结果。

| 接口 | 本候选中的用途 |
|---|---|
| `Chebyshev.theta_le_log4_mul_x (hx : 0 ≤ x)` | θ(x)≤log4·x以及积分点态比较 |
| `Chebyshev.primeCounting_eq_theta_div_log_add_integral (hx : 2 ≤ x)` | π⌊x⌋₊=θ(x)/logx+∫₂ˣ |
| `Chebyshev.integrableOn_theta_div_id_mul_log_sq (x : ℝ)` | 在Icc 2 x上的实际theta积分可积性 |
| `Chebyshev.theta_eq_log_primorial` | 用2^145≤primorial128接入实对数 |
| `Nat.primesLE_card_eq_primeCounting` | inclusive素数计数与有限素数集card对接 |
| `Real.log_two_gt_d9` / `Real.log_two_lt_d9` | 已形式化的初等log2数值界，代替重新构造积分估计 |
| `intervalIntegral.integral_mono_on hab hf hg` | 在Icc端点包含条件下积分比较 |
| `intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv hint` | 用G'积分得到G(x)−G(128) |
| `intervalIntegral.integral_add_adjacent_intervals hab hbc` | 把2..x拆为2..128和128..x |

`Real.log_pow`真实参数顺序为 `(x : ℝ) (n : ℕ)`。
`Real.hasDerivAt_log`要求x≠0，导数为x⁻¹。
`integrableOn_theta_div_id_mul_log_sq`是本轮额外找到的直接可积性入口，避免重证阶梯函数可积性。

边界：x=128时区间积分为0，由通用闭区间步骤覆盖；floor只出现在库的inclusive π输入，右端保持原实数x。logx>9/2，故logx与logx−3/2均正；每一有序除法比较均有正性依据。

G'−log4/log²x的通分分子为log4·logx·(logx−9/2)/2。Python检查了精确多项式等式；非负性依赖实数域x≥128，候选在Lean内单独证明，未以Python输出作为前提。

