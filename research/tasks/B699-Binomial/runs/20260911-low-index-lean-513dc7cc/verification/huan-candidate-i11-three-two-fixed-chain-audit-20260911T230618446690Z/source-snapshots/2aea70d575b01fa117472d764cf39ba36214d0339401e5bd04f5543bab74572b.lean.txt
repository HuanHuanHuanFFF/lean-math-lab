import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Rows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.HomRemainder.Remainder
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Normalization
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED CANDIDATE. Actual source rows c23d15 z1/9; each delta has its own content. x=1 remains explicit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11ThreeTwoScaled

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.PadeGrowthNormalization

def rowDelta (row : Bool) : ℕ := if row then 0 else 1

theorem rowDelta_cases (row : Bool) : rowDelta row = 0 ∨ rowDelta row = 1 := by
  cases row <;> simp [rowDelta]

theorem row_degrees (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (15 * m - rowDelta row) + (8 * m + rowDelta row - 1) + 1 = 23 * m := by
  rcases rowDelta_cases row with h | h <;> rw [h] <;> omega

theorem actual_rows (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    actualPRow (15 * m) (8 * m - 1) 1 9 row =
      pNormalizedValue (15 * m - rowDelta row) (8 * m + rowDelta row - 1) 1 9 ∧
    actualQRow (15 * m) (8 * m - 1) 1 9 row =
      qNormalizedValue (15 * m - rowDelta row) (8 * m + rowDelta row - 1)
        (15 * m - rowDelta row) 1 9 := by
  have hv : 8 * m - 1 + 1 = 8 * m := by omega
  cases row <;> simp [rowDelta, actualPRow, actualQRow, hv]

/-- The Q row is cleared by its own actual coefficient gcd. -/
theorem actual_q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (15 * m - rowDelta row) (8 * m + rowDelta row - 1)
        (15 * m - rowDelta row) : ℚ) *
      (actualQRow (15 * m) (8 * m - 1) 1 9 row : ℚ) =
    (9 : ℚ) ^ (15 * m - rowDelta row) *
      actualQ 23 15 (rowDelta row) m (1 / 9) := by
  have hq := (actual_rows m hm row).2
  rw [hq, qContent_mul_qNormalizedValue_cast_q]
  have h := q_homogeneousValue_cast_q (15 * m - rowDelta row)
    (8 * m + rowDelta row - 1) (15 * m - rowDelta row) 1 9 (by decide)
  simpa only [actualQ, show (23 : ℕ) - 15 = 8 by decide, one_mul,
    Int.cast_one, Int.cast_ofNat] using h

/-- The exact D=1 remainder, with y=9 and y-x=8. -/
theorem actual_remainder (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (15 * m - rowDelta row) (8 * m + rowDelta row - 1)
        (15 * m - rowDelta row) : ℚ) *
      (((9 : ℤ) ^ (23 * m) * actualPRow (15 * m) (8 * m - 1) 1 9 row -
        (8 : ℤ) ^ (23 * m) * actualQRow (15 * m) (8 * m - 1) 1 9 row : ℤ) : ℚ) =
    (9 : ℚ) ^ (8 * m + rowDelta row - 1) *
      (1 : ℚ) ^ (2 * (15 * m - rowDelta row) + 1) *
      actualE 23 15 (rowDelta row) m (1 / 9) := by
  obtain ⟨hp, hq⟩ := actual_rows m hm row
  rw [hp, hq]
  have h := normalized_integer_error_cast_q (15 * m - rowDelta row)
    (8 * m + rowDelta row - 1) 1 9 (by decide)
  simpa only [row_degrees m hm row, show (9 : ℤ) - 1 = 8 by decide,
    Int.cast_one, Int.cast_ofNat, actualE, show (23 : ℕ) - 15 = 8 by decide, one_mul] using h

end Math.B699.I11ThreeTwoScaled
