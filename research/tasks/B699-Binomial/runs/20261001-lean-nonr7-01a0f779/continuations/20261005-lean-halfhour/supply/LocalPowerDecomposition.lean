module
public import Mathlib.NumberTheory.Chebyshev
public import Mathlib.Order.Interval.Finset.Nat
public import Mathlib.Algebra.Order.Floor.Semiring
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Ring
public import Lean.Elab.Tactic.NormCast
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerSteps20261005

theorem common_log_cutoff {x z : ℝ} (hx : 2 ≤ x) (hxz : x ≤ z) :
    ⌊Real.log x / Real.log 2⌋₊ ≤ ⌊Real.log z / Real.log 2⌋₊ := by
  apply Nat.floor_le_floor
  exact div_le_div_of_nonneg_right (Real.log_le_log (by linarith) hxz)
    (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le

theorem power_increment_eq_sum {x z : ℝ} {N : Nat}
    (hx : 2 ≤ x) (hxz : x ≤ z) (hN : ⌊Real.log z / Real.log 2⌋₊ ≤ N) :
    (Chebyshev.psi z - Chebyshev.theta z) - (Chebyshev.psi x - Chebyshev.theta x) =
      ∑ k ∈ Finset.Icc 2 N,
        (Chebyshev.theta (z ^ ((1 : ℝ) / k)) - Chebyshev.theta (x ^ ((1 : ℝ) / k))) := by
  have hxN := (common_log_cutoff hx hxz).trans hN
  have hxEq := Chebyshev.psi_eq_theta_add_sum_theta' hx hxN
  have hzEq := Chebyshev.psi_eq_theta_add_sum_theta' (le_trans hx hxz) hN
  rw [Finset.sum_sub_distrib, hzEq, hxEq]
  ring

theorem local_power_increment_eq_sum {x : ℝ} (hx : 100000000 ≤ x) :
    (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
      (Chebyshev.psi x - Chebyshev.theta x) =
      ∑ k ∈ Finset.Icc 2 ⌊Real.log (x + x / 4095) / Real.log 2⌋₊,
        (Chebyshev.theta ((x + x / 4095) ^ ((1 : ℝ) / k)) -
          Chebyshev.theta (x ^ ((1 : ℝ) / k))) := by
  apply power_increment_eq_sum (by linarith) _ (le_refl _)
  have hdiv : (0 : ℝ) ≤ x / 4095 := div_nonneg (by linarith) (by norm_num)
  linarith

theorem integer_interval_card_bound {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    ((Finset.Ioc ⌊a⌋₊ ⌊b⌋₊).card : ℝ) ≤ b - a + 1 := by
  rw [Nat.card_Ioc, Nat.cast_sub (Nat.floor_le_floor hab)]
  have hb := Nat.floor_le (by linarith : (0 : ℝ) ≤ b)
  have ha' := Nat.lt_floor_add_one a
  linarith

end B699LocalPowerSteps20261005
#print axioms B699LocalPowerSteps20261005.common_log_cutoff
#print axioms B699LocalPowerSteps20261005.power_increment_eq_sum
#print axioms B699LocalPowerSteps20261005.local_power_increment_eq_sum
#print axioms B699LocalPowerSteps20261005.integer_interval_card_bound
