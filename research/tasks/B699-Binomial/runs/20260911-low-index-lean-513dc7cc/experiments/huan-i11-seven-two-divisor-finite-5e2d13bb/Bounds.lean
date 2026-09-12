import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb».Certificates

/-! UNCOMPILED. Actual rationalDivisor one-step lower bounds, with all
positive denominators discharged from the explicit fixed factor products. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorSevenTwo

theorem ratio_rough (x : ℚ) (hx : 1 ≤ x) :
    infiniteRate * ((x + 1) / (x + 2)) ^ 2 ≤ ratio x := by
  have hden : 0 < denominator x := denominator_pos x hx
  have hmp : x + 2 ≠ 0 := ne_of_gt (by linarith : 0 < x + 2)
  have hcert := rough_certificate (x - 1) (sub_nonneg.mpr hx)
  have hs : x - 1 + 1 = x := by ring
  simp only [hs] at hcert
  apply sub_nonneg.mp
  have hid : ratio x - infiniteRate * ((x + 1) / (x + 2)) ^ 2 =
      (200000 * numerator x * (x + 2) ^ 2 -
        823543 * denominator x * (x + 1) ^ 2) /
      (200000 * denominator x * (x + 2) ^ 2) := by
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

theorem ratio_middle (x : ℚ) (hx : 44 ≤ x) : middleRate ≤ ratio x := by
  have hden : 0 < denominator x := denominator_pos x (by linarith)
  have hcert := middle_certificate (x - 44) (sub_nonneg.mpr hx)
  have hs : x - 44 + 44 = x := by ring
  simp only [hs] at hcert
  have hmid : middleRate =
      (125753077556736983843483347507 : ℚ) / 31250000000000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratio]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  simpa only [mul_comm (numerator x) (31250000000000000000000000000 : ℚ)] using hcert

theorem divisor_middle_step (m : ℕ) (hm : 44 ≤ m) :
    divisor m * middleRate ≤ divisor (m + 1) := by
  rw [divisor_step m (by omega)]
  exact mul_le_mul_of_nonneg_left
    (ratio_middle (m : ℚ) (by exact_mod_cast hm)) (divisor_pos m).le

end Math.B699.I11DivisorSevenTwo
