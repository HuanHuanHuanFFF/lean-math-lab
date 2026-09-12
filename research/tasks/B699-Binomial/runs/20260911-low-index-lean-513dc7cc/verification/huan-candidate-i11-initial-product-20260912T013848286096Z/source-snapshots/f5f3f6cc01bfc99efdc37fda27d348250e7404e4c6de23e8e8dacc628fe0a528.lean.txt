import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorFiveThree.Actual

/-! UNCOMPILED. Literal certificates reconstruct the actual ratio polynomials.
Every final step theorem below uses the actual factorial identity in Actual. -/

namespace Math.B699.I11DivisorFiveThree

theorem rough_certificate_zero (x : ℚ) (hx : 0 ≤ x) :
    64 * denominator (x + 1) * (x + 2) ^ 2 ≤
      27 * numeratorZero (x + 1) * (x + 3) ^ 2 := by
  apply sub_nonneg.mp
  calc
    0 ≤ 24 * (825 + x * (5326 + x * (12310 + x * (13836 + x * (8177 + x * (2438 + x * 288)))))) := by positivity
    _ = 27 * numeratorZero (x + 1) * (x + 3) ^ 2 -
        64 * denominator (x + 1) * (x + 2) ^ 2 := by
      unfold numeratorZero denominator
      ring

theorem ratio_zero_rough (m : ℚ) (hm : 1 ≤ m) :
    infiniteRate * ((m + 1) / (m + 2)) ^ 2 ≤ ratioZero m := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hden : 0 < denominator m := denominator_pos m hmpos
  have hmp : m + 2 ≠ 0 := ne_of_gt (by positivity : 0 < m + 2)
  have hcert := rough_certificate_zero (m - 1) (sub_nonneg.mpr hm)
  have hs1 : m - 1 + 1 = m := by ring
  have hs2 : m - 1 + 2 = m + 1 := by ring
  have hs3 : m - 1 + 3 = m + 2 := by ring
  simp only [hs1, hs2, hs3] at hcert
  apply sub_nonneg.mp
  have hid : ratioZero m - infiniteRate * ((m + 1) / (m + 2)) ^ 2 =
      (27 * numeratorZero m * (m + 2) ^ 2 - 64 * denominator m * (m + 1) ^ 2) /
        (27 * denominator m * (m + 2) ^ 2) := by
    unfold ratioZero infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_zero_rough_step (m : ℕ) (hm : 1 ≤ m) :
    divisorZero m * (infiniteRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      divisorZero (m + 1) := by
  rw [divisor_zero_step m hm]
  exact mul_le_mul_of_nonneg_left (ratio_zero_rough (m : ℚ) (by exact_mod_cast hm))
    (divisor_zero_pos m).le

theorem rough_certificate_one (x : ℚ) (hx : 0 ≤ x) :
    64 * denominator (x + 1) * (x + 2) ^ 2 ≤
      27 * numeratorOne (x + 1) * (x + 3) ^ 2 := by
  apply sub_nonneg.mp
  calc
    0 ≤ 24 * (9330 + x * (36835 + x * (59479 + x * (50295 + x * (23495 + x * (5750 + x * 576)))))) := by positivity
    _ = 27 * numeratorOne (x + 1) * (x + 3) ^ 2 -
        64 * denominator (x + 1) * (x + 2) ^ 2 := by
      unfold numeratorOne denominator
      ring

theorem ratio_one_rough (m : ℚ) (hm : 1 ≤ m) :
    infiniteRate * ((m + 1) / (m + 2)) ^ 2 ≤ ratioOne m := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hden : 0 < denominator m := denominator_pos m hmpos
  have hmp : m + 2 ≠ 0 := ne_of_gt (by positivity : 0 < m + 2)
  have hcert := rough_certificate_one (m - 1) (sub_nonneg.mpr hm)
  have hs1 : m - 1 + 1 = m := by ring
  have hs2 : m - 1 + 2 = m + 1 := by ring
  have hs3 : m - 1 + 3 = m + 2 := by ring
  simp only [hs1, hs2, hs3] at hcert
  apply sub_nonneg.mp
  have hid : ratioOne m - infiniteRate * ((m + 1) / (m + 2)) ^ 2 =
      (27 * numeratorOne m * (m + 2) ^ 2 - 64 * denominator m * (m + 1) ^ 2) /
        (27 * denominator m * (m + 2) ^ 2) := by
    unfold ratioOne infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_one_rough_step (m : ℕ) (hm : 1 ≤ m) :
    divisorOne m * (infiniteRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      divisorOne (m + 1) := by
  rw [divisor_one_step m hm]
  exact mul_le_mul_of_nonneg_left (ratio_one_rough (m : ℚ) (by exact_mod_cast hm))
    (divisor_one_pos m).le

theorem middle_certificate_zero (x : ℚ) (hx : 0 ≤ x) :
    2289993275428338969 * denominator (x + 29) ≤
      1000000000000000000 * numeratorZero (x + 29) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 2 * (1535690967499923506020080 + x * (3444096040212671766946486 + x * (451094264364845154769405 + x * (22726360010714951687520 + x * (512203561213280111915 + x * 4340363126869695674))))) := by positivity
    _ = 1000000000000000000 * numeratorZero (x + 29) -
        2289993275428338969 * denominator (x + 29) := by
      unfold numeratorZero denominator
      ring

theorem ratio_zero_middle (m : ℚ) (hm : 29 ≤ m) :
    middleRate ≤ ratioZero m := by
  have hden : 0 < denominator m := denominator_pos m (by linarith)
  have hcert := middle_certificate_zero (m - 29) (sub_nonneg.mpr hm)
  have hs : m - 29 + 29 = m := by ring
  simp only [hs] at hcert
  have hmid : middleRate = (2289993275428338969 : ℚ) / 1000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratioZero]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  nlinarith only [hcert]

theorem divisor_zero_middle_step (m : ℕ) (hm : 29 ≤ m) :
    divisorZero m * middleRate ≤ divisorZero (m + 1) := by
  rw [divisor_zero_step m (by omega)]
  exact mul_le_mul_of_nonneg_left (ratio_zero_middle (m : ℚ) (by exact_mod_cast hm))
    (divisor_zero_pos m).le

theorem middle_certificate_one (x : ℚ) (hx : 0 ≤ x) :
    2289993275428338969 * denominator (x + 1) ≤
      1000000000000000000 * numeratorOne (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 2 * (15602420845797971160 + x * (72868513307722865246 + x * (121061801623265109405 + x * (92008069485993237200 + x * (32552723451522717555 + x * 4340363126869695674))))) := by positivity
    _ = 1000000000000000000 * numeratorOne (x + 1) -
        2289993275428338969 * denominator (x + 1) := by
      unfold numeratorOne denominator
      ring

theorem ratio_one_middle (m : ℚ) (hm : 1 ≤ m) :
    middleRate ≤ ratioOne m := by
  have hden : 0 < denominator m := denominator_pos m (by linarith)
  have hcert := middle_certificate_one (m - 1) (sub_nonneg.mpr hm)
  have hs : m - 1 + 1 = m := by ring
  simp only [hs] at hcert
  have hmid : middleRate = (2289993275428338969 : ℚ) / 1000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratioOne]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  nlinarith only [hcert]

theorem divisor_one_middle_step (m : ℕ) (hm : 1 ≤ m) :
    divisorOne m * middleRate ≤ divisorOne (m + 1) := by
  rw [divisor_one_step m (by omega)]
  exact mul_le_mul_of_nonneg_left (ratio_one_middle (m : ℚ) (by exact_mod_cast hm))
    (divisor_one_pos m).le

end Math.B699.I11DivisorFiveThree
