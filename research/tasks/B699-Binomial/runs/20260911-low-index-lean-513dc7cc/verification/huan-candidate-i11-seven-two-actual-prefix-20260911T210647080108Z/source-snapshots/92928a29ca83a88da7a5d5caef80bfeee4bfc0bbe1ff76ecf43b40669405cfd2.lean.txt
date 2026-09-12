import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Rows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.HomRemainder.Remainder
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Normalization
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED CANDIDATE. Actual source rows for c9d5 and z=1/49. Each delta has its own qContent; no identity is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11SevenTwoScaled

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.PadeGrowthNormalization

def rowDelta (row : Bool) : ℕ := if row then 0 else 1

theorem rowDelta_cases (row : Bool) : rowDelta row = 0 ∨ rowDelta row = 1 := by
  cases row <;> simp [rowDelta]

theorem row_degrees (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (5 * m - rowDelta row) + (4 * m + rowDelta row - 1) + 1 = 9 * m := by
  rcases rowDelta_cases row with h | h <;> rw [h] <;> omega

theorem actual_rows (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    actualPRow (5 * m) (4 * m - 1) 1 49 row =
      pNormalizedValue (5 * m - rowDelta row) (4 * m + rowDelta row - 1) 1 49 ∧
    actualQRow (5 * m) (4 * m - 1) 1 49 row =
      qNormalizedValue (5 * m - rowDelta row) (4 * m + rowDelta row - 1)
        (5 * m - rowDelta row) 1 49 := by
  have hv : 4 * m - 1 + 1 = 4 * m := by omega
  cases row <;> simp [rowDelta, actualPRow, actualQRow, hv]

/-- The Q row is cleared by its own actual coefficient gcd. -/
theorem actual_q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (5 * m - rowDelta row) (4 * m + rowDelta row - 1)
        (5 * m - rowDelta row) : ℚ) *
      (actualQRow (5 * m) (4 * m - 1) 1 49 row : ℚ) =
    (49 : ℚ) ^ (5 * m - rowDelta row) *
      actualQ 9 5 (rowDelta row) m (1 / 49) := by
  have hq := (actual_rows m hm row).2
  rw [hq, qContent_mul_qNormalizedValue_cast_q]
  have h := q_homogeneousValue_cast_q (5 * m - rowDelta row)
    (4 * m + rowDelta row - 1) (5 * m - rowDelta row) 1 49 (by decide)
  simpa only [actualQ, show (9 : ℕ) - 5 = 4 by decide, one_mul,
    Int.cast_one, Int.cast_ofNat] using h

/-- The exact D=1 remainder, with y=49 and y-x=48. -/
theorem actual_remainder (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (5 * m - rowDelta row) (4 * m + rowDelta row - 1)
        (5 * m - rowDelta row) : ℚ) *
      (((49 : ℤ) ^ (9 * m) * actualPRow (5 * m) (4 * m - 1) 1 49 row -
        (48 : ℤ) ^ (9 * m) * actualQRow (5 * m) (4 * m - 1) 1 49 row : ℤ) : ℚ) =
    (49 : ℚ) ^ (4 * m + rowDelta row - 1) *
      (1 : ℚ) ^ (2 * (5 * m - rowDelta row) + 1) *
      actualE 9 5 (rowDelta row) m (1 / 49) := by
  obtain ⟨hp, hq⟩ := actual_rows m hm row
  rw [hp, hq]
  have h := normalized_integer_error_cast_q (5 * m - rowDelta row)
    (4 * m + rowDelta row - 1) 1 49 (by decide)
  simpa only [row_degrees m hm row, show (49 : ℤ) - 1 = 48 by decide,
    Int.cast_one, Int.cast_ofNat, actualE, show (9 : ℕ) - 5 = 4 by decide, one_mul] using h

end Math.B699.I11SevenTwoScaled
