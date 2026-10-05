# 两个无界θ接口的独立源审

S `/root/tail2h_verification`，复杂既定语义核验，gpt-6.1-sol/xhigh；仅源码对应审读，不是compiler/AX/normalchecker接受。本候选不在第二CI的108 fresh源码表中，不增加完整指标或真实无界Gap。

`supply/ThetaOriginalLegacy.lean` 保留两个准确实数输入：

- `∀ x : ℝ, 0 < x → Chebyshev.theta x - x ≤ x / 36260`。
- `∀ x : ℝ, 122568683 < x → x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)`。

独立对照旧 `gap/ThetaTail.lean:71`，这两个类型与 `gap_4095_of_theta_estimates_and_initial_segment` 完全一致；其第三个输入是全Nat y∈[10000000,122568684)的实际Prime严格向上Gap，正对应本轮 `FullInitial.theta_initial` 的候选精确范围。有限初段若实际接受，可以消去第三个输入，但不能证明前两个无界实数估计。

独立对照旧 `terminal/FiniteConsumerLegacy.lean:10`，`original_tail_of_gap` 的最终消费者确为全Nat n/i/j、4883≤i、i<j≤n/2，同实际Prime p≥i同除两个完整choose。本新桥保留相同量词与结论，没有加入额外n/j界，也未弱化p=i端点。

新桥的两个根 `ThetaBridge.gap_from_two_uniform_theta`、`ThetaBridge.original_tail_from_two_uniform_theta` 仍是未编译候选；即使未来编译通过，也是有两个明确数学输入的条件结果。下一检查须绑定旧ThetaTail的已接受source/object/raw闭包，实际编译新桥、严格Std3传递AX、normalchecker和独立准确literal；不得将本次源审或Git发布当成这一检查完成。

来源版本与原签件沿 `supply/NEXT-TWO-THETA.md`：旧ThetaTail字节SHA a56752ab3dde8be228178fa8803b72ec9dd4e9d607d34b0f500f3513ac0d2a0d；旧FiniteConsumerLegacy SHA4638d82f1abf9c2ceedfbf3134d2e752bdca21f140fba22829f36848fb81fa1e。当前新候选SHA9682b9d5432d518702701349c7bcd172a978a13c6d850ec2b5ae6b6e8cbf836d；源审不重跑这些旧证明。
