import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorFiveSeven.Certificates

/-! UNCOMPILED. Actual rationalDivisor one-step lower bounds, with all
positive denominators discharged from the explicit fixed factor products. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorFiveSeven

theorem ratio_rough (x : ℚ) (hx : 1 ≤ x) :
    infiniteRate * ((x + 1) / (x + 2)) ^ 2 ≤ ratio x := by
  have hden : 0 < denominator x := denominator_pos x hx
  have hmp : x + 2 ≠ 0 := ne_of_gt (by linarith : 0 < x + 2)
  have hcert := rough_certificate (x - 1) (sub_nonneg.mpr hx)
  have hs : x - 1 + 1 = x := by ring
  simp only [hs] at hcert
  apply sub_nonneg.mp
  have hid : ratio x - infiniteRate * ((x + 1) / (x + 2)) ^ 2 =
      (52706752 * numerator x * (x + 2) ^ 2 -
        387420489 * denominator x * (x + 1) ^ 2) /
      (52706752 * denominator x * (x + 2) ^ 2) := by
    unfold ratio infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_rough_step (m : ℕ) (hm : 1 ≤ m) :
    divisor m * (infiniteRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      divisor (m + 1) := by
  rw [divisor_step m hm]
  exact mul_le_mul_of_nonneg_left
    (ratio_rough (m : ℚ) (by exact_mod_cast hm)) (divisor_pos m).le

theorem ratio_middle (x : ℚ) (hx : 29 ≤ x) : middleRate ≤ ratio x := by
  have hden : 0 < denominator x := denominator_pos x (by linarith)
  have hcert := middle_certificate (x - 29) (sub_nonneg.mpr hx)
  have hs : x - 29 + 29 = x := by ring
  simp only [hs] at hcert
  have hmid : middleRate =
      (55491723087196612863957753449053588269317 : ℚ) / 7812500000000000000000000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratio]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  simpa only [mul_comm (numerator x) (7812500000000000000000000000000000000000 : ℚ)] using hcert

theorem divisor_middle_step (m : ℕ) (hm : 29 ≤ m) :
    divisor m * middleRate ≤ divisor (m + 1) := by
  rw [divisor_step m (by omega)]
  exact mul_le_mul_of_nonneg_left
    (ratio_middle (m : ℚ) (by exact_mod_cast hm)) (divisor_pos m).le

end Math.B699.I11DivisorFiveSeven
