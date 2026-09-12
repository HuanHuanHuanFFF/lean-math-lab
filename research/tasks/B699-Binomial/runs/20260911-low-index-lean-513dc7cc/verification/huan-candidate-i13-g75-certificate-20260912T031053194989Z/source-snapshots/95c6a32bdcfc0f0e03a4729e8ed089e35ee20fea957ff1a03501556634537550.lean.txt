import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13G75.Actual

/-! UNCOMPILED. The five-degree positive polynomial is the cleared
simplified difference. The actual raw factorial products contribute 2*x. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13G75Uniform

def certificatePolynomial (x : ℚ) : ℚ :=
  1399680 + x * (11061720 + x * (28359900 + x *
    (29947860 + x * (14985000 + x * 4860000))))

theorem certificate_identity (x : ℚ) :
    3125 * numeratorZero x * (24 * x + 23) -
      11664 * denominator x * (24 * x - 1) =
        2 * x * certificatePolynomial x := by
  unfold numeratorZero denominator certificatePolynomial
  ring

theorem certificate_nonneg (x : ℚ) (hx : 0 ≤ x) :
    0 ≤ certificatePolynomial x := by
  unfold certificatePolynomial
  positivity

theorem linear_denominator_pos (m : ℕ) (hm : 1 ≤ m) :
    0 < 24 * (m : ℚ) - 1 := by
  have hmq : (1 : ℚ) ≤ (m : ℚ) := by exact_mod_cast hm
  linarith

theorem ratio_zero_lower (x : ℚ) (hx : 1 ≤ x) :
    infiniteRate * (24 * x - 1) / (24 * x + 23) ≤ ratioZero x := by
  have hx0 : 0 < x := lt_of_lt_of_le (by norm_num) hx
  have hd : 0 < denominator x := denominator_pos x hx0
  have hs : 0 < 24 * x + 23 := by positivity
  have hid : ratioZero x - infiniteRate * (24 * x - 1) / (24 * x + 23) =
      (3125 * numeratorZero x * (24 * x + 23) -
        11664 * denominator x * (24 * x - 1)) /
          (3125 * denominator x * (24 * x + 23)) := by
    unfold ratioZero infiniteRate
    field_simp [ne_of_gt hd, ne_of_gt hs]
    <;> ring
  apply sub_nonneg.mp
  rw [hid, certificate_identity]
  exact div_nonneg
    (mul_nonneg (mul_nonneg (by norm_num) hx0.le) (certificate_nonneg x hx0.le))
    (by positivity)

theorem divisor_zero_step_lower (m : ℕ) (hm : 1 ≤ m) :
    divisorZero m *
      (infiniteRate * (24 * (m : ℚ) - 1) / (24 * (m : ℚ) + 23)) ≤
        divisorZero (m + 1) := by
  rw [divisor_zero_step m hm]
  exact mul_le_mul_of_nonneg_left
    (ratio_zero_lower (m : ℚ) (by exact_mod_cast hm)) (divisor_zero_pos m).le

end Math.B699.I13G75Uniform
