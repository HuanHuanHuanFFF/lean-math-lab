import Mathlib.Data.Nat.Basic
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED CANDIDATE. Fixed actual three-two rate independently recalculated
from ScaledGap/GrowthInputs. Only the 32nd power is decided; the 162th power
remains symbolic. maxRecDepth8192 is a bounded local resource setting. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoFinalConsumers

def rateNumerator : ℕ := 260741021762686709558443326807297290925847691799460950272067512220746702090113368004486096757194589047867047936
def rateDenominator : ℕ := 169902321422021445630803623539282409499132587269699763049402987792287945956193340180107043124735355377197265625
def rateRational : ℚ := (rateNumerator : ℚ) / (rateDenominator : ℚ)

theorem rate_denominator_pos : 0 < rateDenominator := by decide
theorem rate_numerator_ge_denominator : rateDenominator ≤ rateNumerator := by decide

set_option maxRecDepth 8192 in
theorem rate_thirtytwo_integer :
    64 * rateDenominator ^ 32 ≤ rateNumerator ^ 32 := by decide

theorem rate_denominator_cast_pos : (0 : ℚ) < (rateDenominator : ℚ) := by
  exact_mod_cast rate_denominator_pos

theorem rateRational_ge_one : (1 : ℚ) ≤ rateRational := by
  unfold rateRational
  apply (le_div_iff₀ rate_denominator_cast_pos).mpr
  have h : (rateDenominator : ℚ) ≤ (rateNumerator : ℚ) := by
    exact_mod_cast rate_numerator_ge_denominator
  simpa only [one_mul] using h

theorem rateRational_thirtytwo_ge_sixtyfour : (64 : ℚ) ≤ rateRational ^ 32 := by
  unfold rateRational
  rw [div_pow]
  apply (le_div_iff₀ (pow_pos rate_denominator_cast_pos 32)).mpr
  exact_mod_cast rate_thirtytwo_integer

theorem rateRational_pow162_gt_48 : (48 : ℚ) < rateRational ^ 162 := by
  exact lt_of_lt_of_le (by norm_num : (48 : ℚ) < 64)
    (rateRational_thirtytwo_ge_sixtyfour.trans
      (pow_le_pow_right₀ rateRational_ge_one (by decide : 32 ≤ 162)))

end Math.B699.I11ThreeTwoFinalConsumers
