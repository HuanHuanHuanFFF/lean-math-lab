import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-actual-pade-edge-5e2d13bb».ActualGap
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.HomRemainder.Remainder
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorFiveThree.Threshold

/-! UNCOMPILED CANDIDATE. These exact row expressions match ActualGap.
HomRemainder and the finite actual qContent lower bound are candidate imports;
their presence on disk does not assert that the parent has accepted them. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ActualPadeEdge
open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.I11DivisorFiveThree

theorem five_three_actual_remainder (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (3 * m - rowDelta row) (2 * m + rowDelta row - 1)
        (3 * m - rowDelta row) : ℚ) *
      (((4375 : ℤ) ^ (5 * m) * actualPRow (3 * m) (2 * m - 1) 1 4375 row -
        (4374 : ℤ) ^ (5 * m) * actualQRow (3 * m) (2 * m - 1) 1 4375 row : ℤ) : ℚ) =
      (4375 : ℚ) ^ (2 * m + rowDelta row - 1) *
        (ePolynomial (3 * m - rowDelta row) (2 * m + rowDelta row - 1)
          (3 * m - rowDelta row)).eval₂ (Int.castRingHom ℚ) (1 / 4375) := by
  obtain ⟨hp, hq⟩ := five_three_actual_rows m hm row
  rw [hp, hq]
  have h := normalized_integer_error_cast_q (3 * m - rowDelta row)
    (2 * m + rowDelta row - 1) 1 4375 (by decide)
  simpa only [five_three_row_degrees m hm row, show (4375 : ℤ) - 1 = 4374 by decide,
    Int.cast_one, Int.cast_ofNat, one_pow, mul_one] using h

theorem five_three_actual_content_lower (m : ℕ) (hm : 129 ≤ m) (row : Bool) :
    (1273397 / 1000000 : ℚ) ^ (3 * m) <
      (qContent (3 * m - rowDelta row) (2 * m + rowDelta row - 1)
        (3 * m - rowDelta row) : ℚ) := by
  exact qContent_five_three_lower (rowDelta row) m (rowDelta_cases row) hm

end Math.B699.I11ActualPadeEdge
#print axioms Math.B699.I11ActualPadeEdge.five_three_actual_remainder
#print axioms Math.B699.I11ActualPadeEdge.five_three_actual_content_lower
