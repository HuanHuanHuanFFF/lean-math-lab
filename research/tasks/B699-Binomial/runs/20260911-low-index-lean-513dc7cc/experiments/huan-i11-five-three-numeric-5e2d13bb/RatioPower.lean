import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-three-numeric-5e2d13bb».Basis
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED CANDIDATE. Positivity clears the actual denominator.
A sixth-power integer certificate implies the original 213th-power claim;
no 213th power is passed to decide or norm_num. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveThreeNumeric

def a3Rational : ℚ := (a3Numerator : ℚ) / (a3Denominator : ℚ)

theorem a3_denominator_cast_pos : (0 : ℚ) < (a3Denominator : ℚ) := by
  exact_mod_cast a3_denominator_pos

theorem a3Rational_ge_one : (1 : ℚ) ≤ a3Rational := by
  unfold a3Rational
  apply (le_div_iff₀ a3_denominator_cast_pos).mpr
  have h : (a3Denominator : ℚ) ≤ (a3Numerator : ℚ) := by
    exact_mod_cast a3_numerator_ge_denominator
  simpa only [one_mul] using h

theorem a3Rational_sixth_ge_two : (2 : ℚ) ≤ a3Rational ^ 6 := by
  unfold a3Rational
  rw [div_pow]
  apply (le_div_iff₀ (pow_pos a3_denominator_cast_pos 6)).mpr
  exact_mod_cast a3_sixth_integer

theorem a3Rational_pow213_gt_48 : (48 : ℚ) < a3Rational ^ 213 := by
  have h64 : (64 : ℚ) ≤ a3Rational ^ 36 := by
    calc
      (64 : ℚ) = (2 : ℚ) ^ 6 := by norm_num
      _ ≤ (a3Rational ^ 6) ^ 6 :=
        pow_le_pow_left₀ (by norm_num : (0 : ℚ) ≤ 2) a3Rational_sixth_ge_two 6
      _ = a3Rational ^ 36 := by rw [← pow_mul]
  exact lt_of_lt_of_le (by norm_num : (48 : ℚ) < 64)
    (le_trans h64 (pow_le_pow_right₀ a3Rational_ge_one (by decide : 36 ≤ 213)))

/-- Exact equivalence with the requested positive-integer comparison. The
large powers remain symbolic in this statement and its cast proof. -/
theorem a3Rational_pow213_iff_integer :
    ((48 : ℚ) < a3Rational ^ 213) ↔ 48 * a3Denominator ^ 213 < a3Numerator ^ 213 := by
  unfold a3Rational
  rw [div_pow]
  constructor
  · intro h
    have hmul := (lt_div_iff₀ (pow_pos a3_denominator_cast_pos 213)).mp h
    exact_mod_cast hmul
  · intro h
    apply (lt_div_iff₀ (pow_pos a3_denominator_cast_pos 213)).mpr
    exact_mod_cast h

theorem a3_integer_target : 48 * a3Denominator ^ 213 < a3Numerator ^ 213 :=
  a3Rational_pow213_iff_integer.mp a3Rational_pow213_gt_48

end Math.B699.I11FiveThreeNumeric
#print axioms Math.B699.I11FiveThreeNumeric.a3_denominator_cast_pos
#print axioms Math.B699.I11FiveThreeNumeric.a3Rational_ge_one
#print axioms Math.B699.I11FiveThreeNumeric.a3Rational_sixth_ge_two
#print axioms Math.B699.I11FiveThreeNumeric.a3Rational_pow213_gt_48
#print axioms Math.B699.I11FiveThreeNumeric.a3Rational_pow213_iff_integer
#print axioms Math.B699.I11FiveThreeNumeric.a3_integer_target
