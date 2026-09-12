import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFiveFinal.ActualNumeric

/-!
Complete candidate proof text; not compiled by this worker.
The accepted 32nd-power certificate supplies a strict 66 budget at the unchanged
selector index. No new large integer decision or analytic premise is introduced.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFiveFinalConsumers

theorem rateRational_pow224_ge_128 : (128 : ℚ) ≤ rateRational ^ 224 := by
  calc
    (128 : ℚ) = (2 : ℚ) ^ 7 := by norm_num
    _ ≤ (rateRational ^ 32) ^ 7 :=
      pow_le_pow_left₀ (by norm_num : (0 : ℚ) ≤ 2)
        rateRational_thirtytwo_ge_two 7
    _ = rateRational ^ 224 := by rw [← pow_mul]

theorem actual_rate_pow329_gt_66 : (66 : ℚ) < qRate qBase ^ 329 := by
  rw [actual_rate_eq_rational]
  exact lt_of_lt_of_le (by norm_num : (66 : ℚ) < 128)
    (rateRational_pow224_ge_128.trans
      (pow_le_pow_right₀ rateRational_ge_one (by decide : 224 ≤ 329)))

theorem actual_rate_gt_66 (m : ℕ) (hm : 329 ≤ m) :
    (66 : ℚ) < qRate qBase ^ m := by
  exact lt_of_lt_of_le actual_rate_pow329_gt_66
    (pow_le_pow_right₀ fixed_qRate_ge_one hm)

end Math.B699.TwoFiveGap33
