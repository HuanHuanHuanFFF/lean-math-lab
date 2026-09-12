import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-two-five-divisor-finite-5e2d13bb».Certificates

/-! UNCOMPILED. Bounds for the actual four factorial-ratio tracks. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive

theorem ratio_rough (t : Track) (x : ℚ) (hx : (kMin t : ℚ) ≤ x) :
    infiniteRate * ((x + 1) / (x + 2)) ^ 2 ≤ ratio t x := by
  have hden : 0 < denominator t x := denominator_pos t x hx
  have hx0 : 0 ≤ x := le_trans (Nat.cast_nonneg _) hx
  have hmp : x + 2 ≠ 0 := ne_of_gt (by linarith : 0 < x + 2)
  have hcert := rough_certificate t (x - (kMin t : ℚ)) (sub_nonneg.mpr hx)
  have hs : x - (kMin t : ℚ) + (kMin t : ℚ) = x := by ring
  simp only [hs] at hcert
  apply sub_nonneg.mp
  have hid : ratio t x - infiniteRate * ((x + 1) / (x + 2)) ^ 2 =
      (67108864 * numerator t x * (x + 2) ^ 2 -
        387420489 * denominator t x * (x + 1) ^ 2) /
      (67108864 * denominator t x * (x + 2) ^ 2) := by
    unfold ratio infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_rough_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    divisor t k * (infiniteRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤
      divisor t (k + 1) := by
  rw [divisor_step t k hk]
  exact mul_le_mul_of_nonneg_left
    (ratio_rough t (k : ℚ) (by exact_mod_cast hk)) (divisor_pos t k).le

theorem ratio_middle (t : Track) (x : ℚ) (hx : (cutoff t : ℚ) ≤ x) :
    middleRate ≤ ratio t x := by
  have hstart : (kMin t : ℚ) ≤ (cutoff t : ℚ) := by
    exact_mod_cast cutoff_ge_kMin t
  have hden : 0 < denominator t x := denominator_pos t x (hstart.trans hx)
  have hcert := middle_certificate t (x - (cutoff t : ℚ)) (sub_nonneg.mpr hx)
  have hs : x - (cutoff t : ℚ) + (cutoff t : ℚ) = x := by ring
  simp only [hs] at hcert
  have hmid : middleRate = (5413091590980161748469798877616017917092297780481 : ℚ) / 1000000000000000000000000000000000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratio]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  simpa only [mul_comm (numerator t x) (1000000000000000000000000000000000000000000000000 : ℚ)] using hcert

theorem divisor_middle_step (t : Track) (k : ℕ) (hk : cutoff t ≤ k) :
    divisor t k * middleRate ≤ divisor t (k + 1) := by
  rw [divisor_step t k ((cutoff_ge_kMin t).trans hk)]
  exact mul_le_mul_of_nonneg_left
    (ratio_middle t (k : ℚ) (by exact_mod_cast hk)) (divisor_pos t k).le

end Math.B699.I11DivisorTwoFive
