/-
Adapted from Mathlib/NumberTheory/Chebyshev.lean and
Mathlib/Analysis/SpecialFunctions/Log/InvLog.lean at fixed mathlib commit
0df444a360eaa60ab8c11dca51a86af692955474.
Original copyright 2025 Alastair Irving; authors Alastair Irving, Terry Tao,
Ruben Van de Velde, Michael Stoll, Terence Tao. Apache 2.0 license.
Only EC-required statements are retained. The inverse-log derivative is proved
on [2,∞), the exact domain used by the Abel integral, avoiding unrelated
global asymptotic and singular-point imports. This is a fresh proof candidate.
-/
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.NumberTheory.AbelSummation
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.NumberTheory.Primorial
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1600000
open Nat hiding log
open Finset Real
open scoped Nat.Prime
namespace B699SlimChebyshev

noncomputable def theta (x : ℝ) : ℝ :=
  ∑ p ∈ Ioc 0 ⌊x⌋₊ with p.Prime, log p
scoped notation "θ" => B699SlimChebyshev.theta

theorem theta_eq_sum_Icc (x : ℝ) :
    θ x = ∑ p ∈ Icc 0 ⌊x⌋₊ with p.Prime, log p := by
  rw [theta, sum_filter, sum_filter, ← add_sum_Ioc_eq_sum_Icc] <;> simp

theorem theta_eq_log_primorial (x : ℝ) : θ x = log (primorial ⌊x⌋₊) := by
  unfold theta primorial
  rw [cast_prod, log_prod (fun p hp ↦ mod_cast (mem_filter.mp hp).2.pos.ne')]
  congr 1 with p
  simp_all [Prime.pos]

theorem theta_le_log4_mul_x {x : ℝ} (hx : 0 ≤ x) : θ x ≤ log 4 * x := by
  rw [theta_eq_log_primorial]
  trans log (4 ^ ⌊x⌋₊)
  · gcongr <;> norm_cast
    exacts [primorial_pos _, primorial_le_four_pow _]
  rw [Real.log_pow, mul_comm]
  gcongr

theorem deriv_inv_log_apply {x : ℝ} (hx : 2 ≤ x) :
    deriv (fun x ↦ (log x)⁻¹) x = -x⁻¹ / log x ^ 2 := by
  have hx0 : x ≠ 0 := by linarith
  have hl : log x ≠ 0 := log_ne_zero_of_pos_of_ne_one (by linarith) (by linarith)
  exact ((Real.hasDerivAt_log hx0).inv hl).deriv

theorem integrableOn_theta_div_id_mul_log_sq (x : ℝ) :
    MeasureTheory.IntegrableOn (fun t ↦ θ t / (t * log t ^ 2)) (Set.Icc 2 x)
      MeasureTheory.volume := by
  conv => arg 1; ext; rw [theta, div_eq_mul_one_div, mul_comm, sum_filter]
  refine integrableOn_mul_sum_Icc _ (by norm_num) <| ContinuousOn.integrableOn_Icc fun x hx ↦
    ContinuousAt.continuousWithinAt ?_
  have : x ≠ 0 := by linarith [hx.1]
  have : x * log x ^ 2 ≠ 0 := mul_ne_zero this <| by simp; grind
  fun_prop

set_option backward.isDefEq.respectTransparency.types false in
theorem primeCounting_eq_theta_div_log_add_integral {x : ℝ} (hx : 2 ≤ x) :
    (Nat.primeCounting ⌊x⌋₊ : ℝ) = θ x / log x +
      ∫ t in 2..x, θ t / (t * log t ^ 2) := by
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
  · have int_deriv (f : ℝ → ℝ) :
        ∫ u in 2..x, deriv (fun x ↦ (log x)⁻¹) u * f u =
        ∫ u in 2..x, f u * -(u * log u ^ 2)⁻¹ := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [Set.uIcc_of_le hx] at hu
      rw [deriv_inv_log_apply hu.1]
      simp only [div_eq_mul_inv, mul_inv_rev, neg_mul, mul_neg]
      ring
    rw [int_deriv]
    simp [a, Set.indicator_apply, sum_filter, theta_eq_sum_Icc]
    grind
  · intro z ⟨_, _⟩
    have : z ≠ 0 := by linarith
    have : log z ≠ 0 := by apply log_ne_zero_of_pos_of_ne_one <;> linarith
    fun_prop
  · refine ContinuousOn.integrableOn_Icc fun z hz ↦ ContinuousWithinAt.congr ?_
      (fun y hy ↦ deriv_inv_log_apply hy.1) (deriv_inv_log_apply hz.1)
    have : z ≠ 0 := by linarith [hz.1]
    have : log z ^ 2 ≠ 0 := by
      refine pow_ne_zero 2 <| log_ne_zero_of_pos_of_ne_one ?_ ?_ <;> linarith [hz.1]
    exact ContinuousAt.continuousWithinAt <| by fun_prop

end B699SlimChebyshev
#print axioms B699SlimChebyshev.theta_le_log4_mul_x
#print axioms B699SlimChebyshev.primeCounting_eq_theta_div_log_add_integral
