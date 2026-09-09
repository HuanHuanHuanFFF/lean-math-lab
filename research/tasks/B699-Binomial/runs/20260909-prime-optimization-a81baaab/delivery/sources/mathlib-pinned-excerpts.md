# 实际读取的固定 mathlib 代码

项目仓库 HuanHuanHuanFFF/lean-math-lab，提交
`63a04b064d62e7e8752b1edd75c186d07dc57a20` 的 `lake-manifest.json` 指定：

- mathlib rev：`0df444a360eaa60ab8c11dca51a86af692955474`
- inputRev：`v4.33.1`
- 文件：`Mathlib/NumberTheory/Chebyshev.lean`
- 文件 Git blob：`6ffaf1bc3538b5a86fae7f4c62cc1287f9d48f2a`

本轮通过已连接 GitHub 的 fetch_file 实际读取，未编译或检查这些定理的传递公理。下面是原文件的代码摘录；外围 imports、namespace、scoped notation 未全部复制，因此它不是独立可编译文件，也不是本轮新写的 Lean 证明。

原文件声明：Copyright (c) 2025 Alastair Irving；Released under Apache 2.0 license；Authors: Alastair Irving, Terry Tao, Ruben Van de Velde。原来源与许可归原作者；不作本轮原创代码。

固定来源：
```text
https://github.com/leanprover-community/mathlib4/blob/0df444a360eaa60ab8c11dca51a86af692955474/Mathlib/NumberTheory/Chebyshev.lean
```

## 1. θ 的上界（实际读取 175..220）

```lean
/-- Chebyshev's upper bound: `θ x ≤ c x` with the constant `c = log 4`. -/
theorem theta_le_log4_mul_x {x : ℝ} (hx : 0 ≤ x) : θ x ≤ log 4 * x := by
  rw [theta_eq_log_primorial]
  trans log (4 ^ ⌊x⌋₊)
  · gcongr <;> norm_cast
    exacts [primorial_pos _, primorial_le_four_pow _]
  rw [Real.log_pow, mul_comm]
  gcongr
  exact floor_le hx
```

完整名字是 `Chebyshev.theta_le_log4_mul_x`，不是另一条渐近估计。

## 2. π 的 Abel 恒等式（实际读取 635..679）

```lean
set_option backward.isDefEq.respectTransparency.types false in
/-- Expresses the prime counting function `π` in terms of `θ` by using Abel summation. -/
theorem primeCounting_eq_theta_div_log_add_integral {x : ℝ} (hx : 2 ≤ x) :
    π ⌊x⌋₊ = θ x / log x + ∫ t in 2..x, θ t / (t * log t ^ 2) := by
  -- Rewrite in a form to which Abel summation can be applied
  simp only [primeCounting, primeCounting', count_eq_card_filter_range]
  rw [card_eq_sum_ones, range_succ_eq_Icc_zero, sum_filter]
  push_cast
  let a : ℕ → ℝ := Set.indicator (Set.ofPred Nat.Prime) (fun n ↦ log n)
  trans ∑ n ∈ Icc 0 ⌊x⌋₊, (log n)⁻¹ * a n
  · refine sum_congr rfl fun n hn ↦ ?_
    split_ifs with h
    · have : log n ≠ 0 := log_ne_zero_of_pos_of_ne_one (mod_cast h.pos) (mod_cast h.ne_one)
      simp [a, h, field]
    · simp [a, h]
  rw [sum_mul_eq_sub_integral_mul₁ a (f := fun n ↦ (log n)⁻¹) (by simp [a]) (by simp [a]),
    ← intervalIntegral.integral_of_le hx]
  · -- Rewrite the derivative inside the integral
    have int_deriv (f : ℝ → ℝ) :
        ∫ u in 2..x, deriv (fun x ↦ (log x)⁻¹) u * f u =
        ∫ u in 2..x, f u * -(u * log u ^ 2)⁻¹ :=
      intervalIntegral.integral_congr fun u _ ↦ by simp [field]
    rw [int_deriv]
    simp [a, Set.indicator_apply, sum_filter, theta_eq_sum_Icc]
    grind
  · -- Differentiability
    intro z ⟨_, _⟩
    have : z ≠ 0 := by linarith
    have : log z ≠ 0 := by apply log_ne_zero_of_pos_of_ne_one <;> linarith
    fun_prop
  · -- Integrability of the derivative
    refine ContinuousOn.integrableOn_Icc fun z ⟨_, _⟩ ↦ ContinuousWithinAt.congr ?_
      (fun _ _ ↦ deriv_inv_log_apply) deriv_inv_log_apply
    have : z ≠ 0 := by linarith
    have : log z ^ 2 ≠ 0 := by
      refine pow_ne_zero 2 <| log_ne_zero_of_pos_of_ne_one ?_ ?_ <;> linarith
    exact ContinuousAt.continuousWithinAt <| by fun_prop
```

完整名字是 `Chebyshev.primeCounting_eq_theta_div_log_add_integral`。源代码的 π 是自然数素数计数，经 coercion 进入实数等式；报告 π(x) 对应这里的 π⌊x⌋₊。

## 3. 本轮没有被伪装成现成代码的部分

EC 上界、(IC) 证书消费者、整数 Gap 拼接都在 REPORT.md 有完整纸面证明，但本轮没有把它们声称为库里已有 theorem，也没有提交带占位证明的 Lean 文件。下一步应先消费以上两个真定理，而非重新证明 Abel 或导入 RS/Dusart 计数作假设。
