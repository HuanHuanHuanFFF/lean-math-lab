import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Rows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.HomRemainder.Remainder
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Normalization
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED CANDIDATE. Actual source rows for c7d5 and z=1/243. Each delta has its own qContent; no identity is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.PadeGrowthNormalization

def rowDelta (row : Bool) : ℕ := if row then 0 else 1

@[simp] theorem rowDelta_true : rowDelta true = 0 := rfl
@[simp] theorem rowDelta_false : rowDelta false = 1 := rfl

noncomputable def qEval (m : ℕ) (row : Bool) : ℚ := actualQ 7 5 (rowDelta row) m (1 / 243)
noncomputable def eEval (m : ℕ) (row : Bool) : ℚ := actualE 7 5 (rowDelta row) m (1 / 243)
def qRow (m : ℕ) (row : Bool) : ℤ := actualQRow (5 * m) (2 * m - 1) 1 243 row
def rowError (m : ℕ) (row : Bool) : ℤ :=
  (243 : ℤ) ^ (7 * m) * actualPRow (5 * m) (2 * m - 1) 1 243 row -
    (242 : ℤ) ^ (7 * m) * qRow m row


theorem rowDelta_cases (row : Bool) : rowDelta row = 0 ∨ rowDelta row = 1 := by
  cases row <;> simp [rowDelta]

theorem row_degrees (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (5 * m - rowDelta row) + (2 * m + rowDelta row - 1) + 1 = 7 * m := by
  rcases rowDelta_cases row with h | h <;> rw [h] <;> omega

theorem actual_rows (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    actualPRow (5 * m) (2 * m - 1) 1 243 row =
      pNormalizedValue (5 * m - rowDelta row) (2 * m + rowDelta row - 1) 1 243 ∧
    actualQRow (5 * m) (2 * m - 1) 1 243 row =
      qNormalizedValue (5 * m - rowDelta row) (2 * m + rowDelta row - 1)
        (5 * m - rowDelta row) 1 243 := by
  have hv : 2 * m - 1 + 1 = 2 * m := by omega
  cases row <;> simp [rowDelta, actualPRow, actualQRow, hv]

/-- The Q row is cleared by its own actual coefficient gcd. -/
theorem actual_q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (5 * m - rowDelta row) (2 * m + rowDelta row - 1)
        (5 * m - rowDelta row) : ℚ) *
      (actualQRow (5 * m) (2 * m - 1) 1 243 row : ℚ) =
    (243 : ℚ) ^ (5 * m - rowDelta row) *
      actualQ 7 5 (rowDelta row) m (1 / 243) := by
  have hq := (actual_rows m hm row).2
  rw [hq, qContent_mul_qNormalizedValue_cast_q]
  have h := q_homogeneousValue_cast_q (5 * m - rowDelta row)
    (2 * m + rowDelta row - 1) (5 * m - rowDelta row) 1 243 (by decide)
  simpa only [actualQ, show (7 : ℕ) - 5 = 2 by decide, one_mul,
    Int.cast_one, Int.cast_ofNat] using h

/-- The exact D=1 remainder, with y=243 and y-x=242. -/
theorem actual_remainder (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (5 * m - rowDelta row) (2 * m + rowDelta row - 1)
        (5 * m - rowDelta row) : ℚ) *
      (((243 : ℤ) ^ (7 * m) * actualPRow (5 * m) (2 * m - 1) 1 243 row -
        (242 : ℤ) ^ (7 * m) * actualQRow (5 * m) (2 * m - 1) 1 243 row : ℤ) : ℚ) =
    (243 : ℚ) ^ (2 * m + rowDelta row - 1) *
      (1 : ℚ) ^ (2 * (5 * m - rowDelta row) + 1) *
      actualE 7 5 (rowDelta row) m (1 / 243) := by
  obtain ⟨hp, hq⟩ := actual_rows m hm row
  rw [hp, hq]
  have h := normalized_integer_error_cast_q (5 * m - rowDelta row)
    (2 * m + rowDelta row - 1) 1 243 (by decide)
  simpa only [row_degrees m hm row, show (243 : ℤ) - 1 = 242 by decide,
    Int.cast_one, Int.cast_ofNat, actualE, show (7 : ℕ) - 5 = 2 by decide, one_mul] using h

end Math.B699.I13C311Edge

#print axioms Math.B699.I13C311Edge.rowDelta_cases
#print axioms Math.B699.I13C311Edge.row_degrees
#print axioms Math.B699.I13C311Edge.actual_rows
#print axioms Math.B699.I13C311Edge.actual_q_content_identity
#print axioms Math.B699.I13C311Edge.actual_remainder
