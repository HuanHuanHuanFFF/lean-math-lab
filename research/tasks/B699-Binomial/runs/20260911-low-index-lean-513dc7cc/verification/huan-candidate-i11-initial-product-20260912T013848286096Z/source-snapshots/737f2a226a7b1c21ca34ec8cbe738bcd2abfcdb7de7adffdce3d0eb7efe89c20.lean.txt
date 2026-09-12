import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Rows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.HomRemainder.Remainder
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Normalization
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-!
UNCOMPILED minimal prefix for the fixed i11 (2,5) seed.
The numerator is 3, so the actual remainder keeps 3^(2*u+1).
No G lower bound, growth bound, identity or determinant is an external premise.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11TwoFivePrefix

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.PadeGrowthNormalization

def rowDelta (row : Bool) : ℕ := if row then 0 else 1

theorem rowDelta_cases (row : Bool) : rowDelta row = 0 ∨ rowDelta row = 1 := by
  cases row <;> simp [rowDelta]

theorem row_degrees (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (4 * m - rowDelta row) + (m + rowDelta row - 1) + 1 = 5 * m := by
  rcases rowDelta_cases row with h | h <;> rw [h] <;> omega

theorem actual_rows (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    actualPRow (4 * m) (m - 1) 3 128 row =
      pNormalizedValue (4 * m - rowDelta row) (m + rowDelta row - 1) 3 128 ∧
    actualQRow (4 * m) (m - 1) 3 128 row =
      qNormalizedValue (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) 3 128 := by
  have hv : m - 1 + 1 = m := by omega
  cases row <;> simp [rowDelta, actualPRow, actualQRow, hv]

/-- The Q row is cleared by its own actual coefficient gcd. -/
theorem actual_q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) : ℚ) *
      (actualQRow (4 * m) (m - 1) 3 128 row : ℚ) =
    (128 : ℚ) ^ (4 * m - rowDelta row) *
      actualQ 5 4 (rowDelta row) m (3 / 128) := by
  have hq := (actual_rows m hm row).2
  rw [hq, qContent_mul_qNormalizedValue_cast_q]
  have h := q_homogeneousValue_cast_q (4 * m - rowDelta row)
    (m + rowDelta row - 1) (4 * m - rowDelta row) 3 128 (by decide)
  simpa only [actualQ, show (5 : ℕ) - 4 = 1 by decide, one_mul,
    Int.cast_ofNat] using h

/-- The exact D=3 remainder; no 3-power is suppressed in this equality. -/
theorem actual_remainder (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) : ℚ) *
      (((128 : ℤ) ^ (5 * m) * actualPRow (4 * m) (m - 1) 3 128 row -
        (125 : ℤ) ^ (5 * m) * actualQRow (4 * m) (m - 1) 3 128 row : ℤ) : ℚ) =
    (128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) *
      actualE 5 4 (rowDelta row) m (3 / 128) := by
  obtain ⟨hp, hq⟩ := actual_rows m hm row
  rw [hp, hq]
  have h := normalized_integer_error_cast_q (4 * m - rowDelta row)
    (m + rowDelta row - 1) 3 128 (by decide)
  simpa only [row_degrees m hm row, show (128 : ℤ) - 3 = 125 by decide,
    Int.cast_ofNat, actualE, show (5 : ℕ) - 4 = 1 by decide, one_mul] using h

/-- Both rows fit the *correct* uniform scale (128*3^8)^m.
For delta=0 the leftover factor is 3/128; for delta=1 it is 1/3. -/
theorem error_scale_le (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) ≤
    ((128 : ℚ) * 3 ^ 8) ^ m := by
  have hbase : ((128 : ℚ) * 3 ^ 8) ^ m = (128 : ℚ) ^ m * 3 ^ (8 * m) := by
    rw [mul_pow, ← pow_mul]
  rw [hbase]
  rcases rowDelta_cases row with h | h
  · rw [h]
    simp only [Nat.add_zero, Nat.sub_zero]
    have he : 2 * (4 * m) + 1 = 8 * m + 1 := by omega
    rw [he, pow_succ]
    calc
      (128 : ℚ) ^ (m - 1) * (3 ^ (8 * m) * 3) =
          ((128 : ℚ) ^ (m - 1) * 3) * 3 ^ (8 * m) := by ring
      _ ≤ ((128 : ℚ) ^ (m - 1) * 128) * 3 ^ (8 * m) :=
        mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left (by norm_num : (3 : ℚ) ≤ 128)
            (pow_nonneg (by norm_num : (0 : ℚ) ≤ 128) (m - 1)))
          (pow_nonneg (by norm_num : (0 : ℚ) ≤ 3) (8 * m))
      _ = (128 : ℚ) ^ m * 3 ^ (8 * m) := by
        rw [← pow_succ, Nat.sub_add_cancel hm]
  · rw [h]
    have hv : m + 1 - 1 = m := by omega
    rw [hv]
    exact mul_le_mul_of_nonneg_left
      (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 3)
        (by omega : 2 * (4 * m - 1) + 1 ≤ 8 * m))
      (pow_nonneg (by norm_num : (0 : ℚ) ≤ 128) m)

end Math.B699.I11TwoFivePrefix
