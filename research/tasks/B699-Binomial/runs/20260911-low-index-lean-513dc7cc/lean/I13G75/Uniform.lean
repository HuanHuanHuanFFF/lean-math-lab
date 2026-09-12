import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13G75.Certificate
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ElementaryRate

/-! UNCOMPILED. The actual factorial step supplies every induction premise.
The public actual-D and actual-qContent bounds require only m>=1. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13G75Uniform
open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def scaledZero (m : ℕ) : ℚ := (24 * (m : ℚ) - 1) * divisorZero m

theorem scaled_zero_one : scaledZero 1 = 23 := by
  norm_num [scaledZero, divisor_zero_one]

theorem scaled_zero_step (m : ℕ) (hm : 1 ≤ m) :
    scaledZero m * infiniteRate ≤ scaledZero (m + 1) := by
  have hs : 0 < 24 * (m : ℚ) + 23 := by positivity
  calc
    _ = (24 * (m : ℚ) + 23) *
        (divisorZero m *
          (infiniteRate * (24 * (m : ℚ) - 1) / (24 * (m : ℚ) + 23))) := by
      unfold scaledZero
      field_simp [ne_of_gt hs]
      <;> ring
    _ ≤ (24 * (m : ℚ) + 23) * divisorZero (m + 1) :=
      mul_le_mul_of_nonneg_left (divisor_zero_step_lower m hm) hs.le
    _ = scaledZero (m + 1) := by
      simp only [scaledZero, Nat.cast_add, Nat.cast_one]
      ring

theorem scaled_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    23 * infiniteRate ^ (m - 1) ≤ scaledZero m := by
  have h := lower_geometric_from_step (F := scaledZero) (R := infiniteRate) (K := 1)
    infinite_rate_pos.le (fun k hk => scaled_zero_step k hk) (m - 1)
  have hi : 1 + (m - 1) = m := by omega
  simpa only [scaled_zero_one, hi] using h

theorem divisor_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1) ≤ divisorZero m := by
  apply (div_le_iff₀ (linear_denominator_pos m hm)).2
  simpa only [scaledZero, mul_comm (24 * (m : ℚ) - 1) (divisorZero m)] using
    scaled_zero_lower m hm

theorem divisor_one_lower (m : ℕ) (hm : 1 ≤ m) :
    ((5 : ℚ) * (m : ℚ) / 2) *
      (23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1)) ≤ divisorOne m := by
  rw [divisor_one_eq m hm]
  exact mul_le_mul_of_nonneg_left (divisor_zero_lower m hm) (by positivity)

theorem rational_divisor_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    (23 : ℚ) * ((11664 : ℚ) / 3125) ^ (m - 1) / (24 * (m : ℚ) - 1) ≤
      rationalDivisor (5 * m) (2 * m - 1) := by
  simpa only [infiniteRate, divisorZero] using divisor_zero_lower m hm

theorem rational_divisor_one_eq (m : ℕ) (hm : 1 ≤ m) :
    rationalDivisor (5 * m - 1) (2 * m) =
      ((5 : ℚ) * (m : ℚ) / 2) * rationalDivisor (5 * m) (2 * m - 1) := by
  simpa only [divisorZero, divisorOne] using divisor_one_eq m hm

theorem q_content_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1) ≤
      (qContent (5 * m) (2 * m - 1) (5 * m) : ℚ) :=
  (divisor_zero_lower m hm).trans (rationalDivisor_le_qContent (5 * m) (2 * m - 1))

theorem q_content_one_lower (m : ℕ) (hm : 1 ≤ m) :
    ((5 : ℚ) * (m : ℚ) / 2) *
      (23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1)) ≤
        (qContent (5 * m - 1) (2 * m) (5 * m - 1) : ℚ) :=
  (divisor_one_lower m hm).trans (rationalDivisor_le_qContent (5 * m - 1) (2 * m))

end Math.B699.I13G75Uniform
