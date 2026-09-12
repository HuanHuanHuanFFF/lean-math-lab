import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-three-scaled-bounds-5e2d13bb».RatBounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-actual-pade-edge-5e2d13bb».ActualRemainder
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Normalization

/-! UNCOMPILED CANDIDATE. Every value below is an actual source polynomial,
actual normalized integer row, or actual finite qContent. Standard Q/E growth
is the only size input; the content lower theorem is called directly. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ScaledBounds
open Math.B699.I11ActualPadeEdge Math.B699.PadeActualRows
open Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.PadeGrowthNormalization

def contentBase : ℚ := (1273397 / 1000000 : ℚ) ^ 3
noncomputable def qEval (m : ℕ) (row : Bool) : ℚ :=
  actualQ 5 3 (rowDelta row) m (1 / 4375)
noncomputable def eEval (m : ℕ) (row : Bool) : ℚ :=
  actualE 5 3 (rowDelta row) m (1 / 4375)
noncomputable def content (m : ℕ) (row : Bool) : ℚ :=
  (qContent (3 * m - rowDelta row) (2 * m + rowDelta row - 1)
    (3 * m - rowDelta row) : ℚ)
def qRow (m : ℕ) (row : Bool) : ℤ := actualQRow (3 * m) (2 * m - 1) 1 4375 row
def rowError (m : ℕ) (row : Bool) : ℤ :=
  (4375 : ℤ) ^ (5 * m) * actualPRow (3 * m) (2 * m - 1) 1 4375 row -
    (4374 : ℤ) ^ (5 * m) * qRow m row

theorem contentBase_pos : 0 < contentBase := by norm_num [contentBase]

theorem content_lower (m : ℕ) (hm : 129 ≤ m) (row : Bool) :
    contentBase ^ m ≤ content m row := by
  simpa only [contentBase, content, ← pow_mul] using
    (le_of_lt (five_three_actual_content_lower m hm row))

theorem q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (qRow m row : ℚ) =
      (4375 : ℚ) ^ (3 * m - rowDelta row) * qEval m row := by
  have hq := (five_three_actual_rows m hm row).2
  change (qContent (3 * m - rowDelta row) (2 * m + rowDelta row - 1)
      (3 * m - rowDelta row) : ℚ) *
      (actualQRow (3 * m) (2 * m - 1) 1 4375 row : ℚ) = _
  rw [hq, qContent_mul_qNormalizedValue_cast_q]
  have h := q_homogeneousValue_cast_q (3 * m - rowDelta row)
    (2 * m + rowDelta row - 1) (3 * m - rowDelta row) 1 4375 (by decide)
  simpa only [qEval, actualQ, Int.cast_one, Int.cast_ofNat] using h

theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (4375 : ℚ) ^ (2 * m + rowDelta row - 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval, actualE] using
    five_three_actual_remainder m hm row

theorem actual_q_content_bound (m : ℕ) (hm : 129 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 ≤ BQ) (hQ : |qEval m row| ≤ BQ ^ m) :
    contentBase ^ m * |(qRow m row : ℚ)| ≤ ((4375 : ℚ) ^ 3 * BQ) ^ m := by
  have h := normalized_abs_bound (content m row) (contentBase ^ m)
    ((4375 : ℚ) ^ (3 * m - rowDelta row)) (qRow m row) (qEval m row) (BQ ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (pow_nonneg (by norm_num) _) (q_content_identity m (by omega) row) hQ
  calc
    _ ≤ (4375 : ℚ) ^ (3 * m - rowDelta row) * BQ ^ m := h
    _ ≤ (4375 : ℚ) ^ (3 * m) * BQ ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 4375) (Nat.sub_le _ _))
        (pow_nonneg hBQ m)
    _ = ((4375 : ℚ) ^ 3 * BQ) ^ m := by rw [mul_pow, ← pow_mul]

theorem actual_e_content_bound (m : ℕ) (hm : 129 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 ≤ BE) (hE : |eEval m row| ≤ BE ^ m) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((4375 : ℚ) ^ 2 * BE) ^ m := by
  have hv : 2 * m + rowDelta row - 1 ≤ 2 * m := by
    rcases rowDelta_cases row with h | h <;> rw [h] <;> omega
  have h := normalized_abs_bound (content m row) (contentBase ^ m)
    ((4375 : ℚ) ^ (2 * m + rowDelta row - 1)) (rowError m row) (eEval m row) (BE ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (pow_nonneg (by norm_num) _) (e_content_identity m (by omega) row) hE
  calc
    _ ≤ (4375 : ℚ) ^ (2 * m + rowDelta row - 1) * BE ^ m := h
    _ ≤ (4375 : ℚ) ^ (2 * m) * BE ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 4375) hv) (pow_nonneg hBE m)
    _ = ((4375 : ℚ) ^ 2 * BE) ^ m := by rw [mul_pow, ← pow_mul]

end Math.B699.I11ScaledBounds
#print axioms Math.B699.I11ScaledBounds.contentBase_pos
#print axioms Math.B699.I11ScaledBounds.content_lower
#print axioms Math.B699.I11ScaledBounds.q_content_identity
#print axioms Math.B699.I11ScaledBounds.e_content_identity
#print axioms Math.B699.I11ScaledBounds.actual_q_content_bound
#print axioms Math.B699.I11ScaledBounds.actual_e_content_bound
