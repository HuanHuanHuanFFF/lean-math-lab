import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Rows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.HomRemainder.Remainder
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Normalization
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED CANDIDATE. Real c11d7 source/Hom rows at x=1,y=50; delta content is never interchanged. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11FiveSevenScaled

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.PadeGrowthNormalization

def rowDelta (row : Bool) : ℕ := if row then 0 else 1

theorem rowDelta_cases (row : Bool) : rowDelta row = 0 ∨ rowDelta row = 1 := by
  cases row <;> simp [rowDelta]

theorem row_degrees (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (7 * m - rowDelta row) + (4 * m + rowDelta row - 1) + 1 = 11 * m := by
  rcases rowDelta_cases row with h | h <;> rw [h] <;> omega

theorem actual_rows (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    actualPRow (7 * m) (4 * m - 1) 1 50 row =
      pNormalizedValue (7 * m - rowDelta row) (4 * m + rowDelta row - 1) 1 50 ∧
    actualQRow (7 * m) (4 * m - 1) 1 50 row =
      qNormalizedValue (7 * m - rowDelta row) (4 * m + rowDelta row - 1)
        (7 * m - rowDelta row) 1 50 := by
  have hv : 4 * m - 1 + 1 = 4 * m := by omega
  cases row <;> simp [rowDelta, actualPRow, actualQRow, hv]

/-- The Q row is cleared by its own actual coefficient gcd. -/
theorem actual_q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (7 * m - rowDelta row) (4 * m + rowDelta row - 1)
        (7 * m - rowDelta row) : ℚ) *
      (actualQRow (7 * m) (4 * m - 1) 1 50 row : ℚ) =
    (50 : ℚ) ^ (7 * m - rowDelta row) *
      actualQ 11 7 (rowDelta row) m (1 / 50) := by
  have hq := (actual_rows m hm row).2
  rw [hq, qContent_mul_qNormalizedValue_cast_q]
  have h := q_homogeneousValue_cast_q (7 * m - rowDelta row)
    (4 * m + rowDelta row - 1) (7 * m - rowDelta row) 1 50 (by decide)
  simpa only [actualQ, show (11 : ℕ) - 7 = 4 by decide, one_mul,
    Int.cast_one, Int.cast_ofNat] using h

/-- The exact D=1 remainder, with y=50 and y-x=49. -/
theorem actual_remainder (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (7 * m - rowDelta row) (4 * m + rowDelta row - 1)
        (7 * m - rowDelta row) : ℚ) *
      (((50 : ℤ) ^ (11 * m) * actualPRow (7 * m) (4 * m - 1) 1 50 row -
        (49 : ℤ) ^ (11 * m) * actualQRow (7 * m) (4 * m - 1) 1 50 row : ℤ) : ℚ) =
    (50 : ℚ) ^ (4 * m + rowDelta row - 1) *
      (1 : ℚ) ^ (2 * (7 * m - rowDelta row) + 1) *
      actualE 11 7 (rowDelta row) m (1 / 50) := by
  obtain ⟨hp, hq⟩ := actual_rows m hm row
  rw [hp, hq]
  have h := normalized_integer_error_cast_q (7 * m - rowDelta row)
    (4 * m + rowDelta row - 1) 1 50 (by decide)
  simpa only [row_degrees m hm row, show (50 : ℤ) - 1 = 49 by decide,
    Int.cast_one, Int.cast_ofNat, actualE, show (11 : ℕ) - 7 = 4 by decide, one_mul] using h

end Math.B699.I11FiveSevenScaled
