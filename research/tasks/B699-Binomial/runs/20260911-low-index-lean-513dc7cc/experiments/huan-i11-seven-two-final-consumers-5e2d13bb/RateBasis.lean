import Mathlib.Data.Nat.Basic
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED CANDIDATE. Only the 32nd-power integer certificate is decided; 192nd/285th powers remain symbolic. The local depth cap is a resource limit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoFinalConsumers

def rateNumerator : ℕ := 4330188673454998956186527952585840960990059954176
def rateDenominator : ℕ := 4199440704612936599415011687195348453521728515625
def rateRational : ℚ := (rateNumerator : ℚ) / (rateDenominator : ℚ)

theorem rate_denominator_pos : 0 < rateDenominator := by decide
theorem rate_numerator_ge_denominator : rateDenominator ≤ rateNumerator := by decide

set_option maxRecDepth 8192 in
theorem rate_thirtytwo_integer :
    2 * rateDenominator ^ 32 ≤ rateNumerator ^ 32 := by decide

theorem rate_denominator_cast_pos : (0 : ℚ) < (rateDenominator : ℚ) := by
  exact_mod_cast rate_denominator_pos

theorem rateRational_ge_one : (1 : ℚ) ≤ rateRational := by
  unfold rateRational
  apply (le_div_iff₀ rate_denominator_cast_pos).mpr
  have h : (rateDenominator : ℚ) ≤ (rateNumerator : ℚ) := by
    exact_mod_cast rate_numerator_ge_denominator
  simpa only [one_mul] using h

theorem rateRational_thirtytwo_ge_two : (2 : ℚ) ≤ rateRational ^ 32 := by
  unfold rateRational
  rw [div_pow]
  apply (le_div_iff₀ (pow_pos rate_denominator_cast_pos 32)).mpr
  exact_mod_cast rate_thirtytwo_integer

theorem rateRational_pow285_gt_48 : (48 : ℚ) < rateRational ^ 285 := by
  have h64 : (64 : ℚ) ≤ rateRational ^ 192 := by
    calc
      (64 : ℚ) = (2 : ℚ) ^ 6 := by norm_num
      _ ≤ (rateRational ^ 32) ^ 6 :=
        pow_le_pow_left₀ (by norm_num : (0 : ℚ) ≤ 2) rateRational_thirtytwo_ge_two 6
      _ = rateRational ^ 192 := by rw [← pow_mul]
  exact lt_of_lt_of_le (by norm_num : (48 : ℚ) < 64)
    (h64.trans (pow_le_pow_right₀ rateRational_ge_one (by decide : 192 ≤ 285)))

end Math.B699.I11SevenTwoFinalConsumers
