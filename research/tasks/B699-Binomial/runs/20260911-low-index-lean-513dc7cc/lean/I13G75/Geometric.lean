import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13G75.Uniform
import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Algebra.Order.GroupWithZero.Basic

/-! UNCOMPILED optional layer. A finite geometric sum absorbs the single
linear denominator into a fixed positive prefactor. No new height is asserted. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13G75Uniform
open scoped BigOperators
open Math.B699.RationalFactorialDivisor Math.B699.PadeConstruction

def rho : ℚ := 65535 / 65536
def geometricRate : ℚ := infiniteRate * rho
def geometricConstant : ℚ := 23 / (24 * infiniteRate * 65536)

theorem rho_pos : 0 < rho := by norm_num [rho]

theorem rho_le_one : rho ≤ 1 := by norm_num [rho]

theorem geometric_constant_pos : 0 < geometricConstant := by
  norm_num [geometricConstant, infiniteRate]

theorem geometric_rate_pos : 0 < geometricRate :=
  mul_pos infinite_rate_pos rho_pos

theorem finite_geometric_sum_le (m : ℕ) :
    (∑ k ∈ Finset.range m, rho ^ k) ≤ (65536 : ℚ) := by
  have h := geom_sum_mul_neg rho m
  have hr : (1 : ℚ) - rho = 1 / 65536 := by norm_num [rho]
  rw [hr] at h
  have hp : 0 ≤ rho ^ m := pow_nonneg rho_pos.le m
  linarith

theorem mul_rho_power_le (m : ℕ) : (m : ℚ) * rho ^ m ≤ 65536 := by
  calc
    _ = ∑ k ∈ Finset.range m, rho ^ m := by simp [nsmul_eq_mul]
    _ ≤ ∑ k ∈ Finset.range m, rho ^ k := by
      apply Finset.sum_le_sum
      intro k hk
      exact pow_le_pow_of_le_one rho_pos.le rho_le_one
        (Nat.le_of_lt (Finset.mem_range.mp hk))
    _ ≤ 65536 := finite_geometric_sum_le m

theorem rho_power_div_le (m : ℕ) (hm : 1 ≤ m) :
    rho ^ m / 65536 ≤ 1 / (m : ℚ) := by
  have hm0 : (0 : ℚ) < (m : ℚ) := by exact_mod_cast (show 0 < m by omega)
  apply (div_le_div_iff₀ (by norm_num : (0 : ℚ) < 65536) hm0).2
  simpa only [one_mul, mul_comm (rho ^ m) (m : ℚ)] using mul_rho_power_le m

theorem divisor_zero_geometric (m : ℕ) (hm : 1 ≤ m) :
    geometricConstant * geometricRate ^ m ≤ divisorZero m := by
  have hm0 : (0 : ℚ) < (m : ℚ) := by exact_mod_cast (show 0 < m by omega)
  have hRpos : 0 < infiniteRate := infinite_rate_pos
  have hr : infiniteRate ≠ 0 := ne_of_gt hRpos
  have hi : m - 1 + 1 = m := Nat.sub_add_cancel hm
  have hp : infiniteRate ^ m = infiniteRate ^ (m - 1) * infiniteRate := by
    simpa only [hi] using (pow_succ infiniteRate (m - 1))
  have hn : 0 ≤ 23 * infiniteRate ^ (m - 1) := by positivity
  calc
    _ = (23 / (24 * infiniteRate)) * infiniteRate ^ m * (rho ^ m / 65536) := by
      unfold geometricConstant geometricRate
      rw [mul_pow]
      field_simp [hr]
      <;> ring
    _ ≤ (23 / (24 * infiniteRate)) * infiniteRate ^ m * (1 / (m : ℚ)) :=
      mul_le_mul_of_nonneg_left (rho_power_div_le m hm) (by positivity)
    _ = 23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ)) := by
      rw [hp]
      field_simp [hr, ne_of_gt hm0]
      <;> ring
    _ ≤ 23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1) := by
      apply (div_le_div_iff₀ (by positivity : 0 < 24 * (m : ℚ))
        (linear_denominator_pos m hm)).2
      exact mul_le_mul_of_nonneg_left (by linarith : 24 * (m : ℚ) - 1 ≤ 24 * (m : ℚ)) hn
    _ ≤ divisorZero m := divisor_zero_lower m hm

theorem divisor_one_geometric (m : ℕ) (hm : 1 ≤ m) :
    geometricConstant * geometricRate ^ m ≤ divisorOne m :=
  (divisor_zero_geometric m hm).trans (divisor_zero_le_one m hm)

theorem q_content_zero_geometric (m : ℕ) (hm : 1 ≤ m) :
    geometricConstant * geometricRate ^ m ≤
      (qContent (5 * m) (2 * m - 1) (5 * m) : ℚ) :=
  (divisor_zero_geometric m hm).trans (rationalDivisor_le_qContent (5 * m) (2 * m - 1))

theorem q_content_one_geometric (m : ℕ) (hm : 1 ≤ m) :
    geometricConstant * geometricRate ^ m ≤
      (qContent (5 * m - 1) (2 * m) (5 * m - 1) : ℚ) :=
  (divisor_one_geometric m hm).trans (rationalDivisor_le_qContent (5 * m - 1) (2 * m))

end Math.B699.I13G75Uniform
