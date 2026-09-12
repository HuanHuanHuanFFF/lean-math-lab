import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-three-two-scaled-edge-5e2d13bb».Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-three-two-scaled-edge-5e2d13bb».SourceRows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorThreeTwo.Threshold
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.RatBounds

/-! UNCOMPILED CANDIDATE. Actual c23d15 rows, individual Gdelta bound at m>=160, Q scale9^15 and E scale9^8. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoScaled

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeGrowthNormalization

def contentBase : ℚ := (41069 / 31250 : ℚ) ^ 15
noncomputable def qEval (m : ℕ) (row : Bool) : ℚ :=
  actualQ 23 15 (rowDelta row) m (1 / 9)
noncomputable def eEval (m : ℕ) (row : Bool) : ℚ :=
  actualE 23 15 (rowDelta row) m (1 / 9)
noncomputable def content (m : ℕ) (row : Bool) : ℚ :=
  (qContent (15 * m - rowDelta row) (8 * m + rowDelta row - 1)
    (15 * m - rowDelta row) : ℚ)
def qRow (m : ℕ) (row : Bool) : ℤ := actualQRow (15 * m) (8 * m - 1) 1 9 row
def rowError (m : ℕ) (row : Bool) : ℤ :=
  (9 : ℤ) ^ (23 * m) * actualPRow (15 * m) (8 * m - 1) 1 9 row -
    (8 : ℤ) ^ (23 * m) * qRow m row

theorem contentBase_pos : 0 < contentBase := by norm_num [contentBase]

theorem content_lower (m : ℕ) (hm : 160 ≤ m) (row : Bool) :
    contentBase ^ m ≤ content m row := by
  have h := Math.B699.I11DivisorThreeTwo.qContent_lower
    (rowDelta row) m (rowDelta_cases row) hm
  simpa only [contentBase, content, ← pow_mul] using le_of_lt h

theorem q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (qRow m row : ℚ) =
      (9 : ℚ) ^ (15 * m - rowDelta row) * qEval m row := by
  simpa only [content, qRow, qEval] using
    actual_q_content_identity m hm row

theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (9 : ℚ) ^ (8 * m + rowDelta row - 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval, one_pow, mul_one] using
    actual_remainder m hm row

theorem actual_q_content_bound (m : ℕ) (hm : 160 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 ≤ BQ) (hQ : |qEval m row| ≤ BQ ^ m) :
    contentBase ^ m * |(qRow m row : ℚ)| ≤ ((9 : ℚ) ^ 15 * BQ) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((9 : ℚ) ^ (15 * m - rowDelta row))
    (qRow m row) (qEval m row) (BQ ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (pow_nonneg (by norm_num) _) (q_content_identity m (by omega) row) hQ
  calc
    _ ≤ (9 : ℚ) ^ (15 * m - rowDelta row) * BQ ^ m := h
    _ ≤ (9 : ℚ) ^ (15 * m) * BQ ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 9) (Nat.sub_le _ _))
        (pow_nonneg hBQ m)
    _ = ((9 : ℚ) ^ 15 * BQ) ^ m := by rw [mul_pow, ← pow_mul]

theorem actual_e_content_bound (m : ℕ) (hm : 160 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 ≤ BE) (hE : |eEval m row| ≤ BE ^ m) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((9 : ℚ) ^ 8 * BE) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((9 : ℚ) ^ (8 * m + rowDelta row - 1))
    (rowError m row) (eEval m row) (BE ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (by positivity) (e_content_identity m (by omega) row) hE
  have hexp : 8 * m + rowDelta row - 1 ≤ 8 * m := by
    rcases rowDelta_cases row with hr | hr <;> rw [hr] <;> omega
  calc
    _ ≤ (9 : ℚ) ^ (8 * m + rowDelta row - 1) * BE ^ m := h
    _ ≤ (9 : ℚ) ^ (8 * m) * BE ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 9) hexp) (pow_nonneg hBE m)
    _ = ((9 : ℚ) ^ 8 * BE) ^ m := by rw [mul_pow, ← pow_mul]

/-- The accepted actual-row determinant gives a nonzero integer form; a=b=1. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 46 * m ≤ e) (hf : 69 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(3 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (9 : ℤ) ^ (23 * m) ≤
      24 * |qRow m row| +
        |rowError m row| * |(2 : ℤ) ^ (f - 69 * m) * (C : ℤ)| := by
  have hp : (9 : ℕ) ^ (23 * m) = (3 : ℕ) ^ (46 * m) := by
    calc
      _ = ((3 : ℕ) ^ 2) ^ (23 * m) := by norm_num
      _ = (3 : ℕ) ^ (46 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (8 : ℕ) ^ (23 * m) = (2 : ℕ) ^ (69 * m) := by
    calc
      _ = ((2 : ℕ) ^ 3) ^ (23 * m) := by norm_num
      _ = (2 : ℕ) ^ (69 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (9 : ℕ) ^ (23 * m) * (3 ^ (e - 46 * m) * A) = 3 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 3 e (46 * m) A he
  have hQnat : (8 : ℕ) ^ (23 * m) * (2 ^ (f - 69 * m) * C) = 2 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 f (69 * m) C hf
  have hPint : (9 : ℤ) ^ (23 * m) * ((3 : ℤ) ^ (e - 46 * m) * (A : ℤ)) =
      (3 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (8 : ℤ) ^ (23 * m) * ((2 : ℤ) ^ (f - 69 * m) * (C : ℤ)) =
      (2 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(9 : ℤ) ^ (23 * m) * ((3 : ℤ) ^ (e - 46 * m) * (A : ℤ)) -
      (8 : ℤ) ^ (23 * m) * ((2 : ℤ) ^ (f - 69 * m) * (C : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (2 : ℤ) ^ (f - 69 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (2 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (15 * m) (8 * m - 1) (by omega) 1 9
    (r := (9 : ℤ) ^ (23 * m)) (s := (8 : ℤ) ^ (23 * m))
    (a := 1) (b := 1)
    (U := (3 : ℤ) ^ (e - 46 * m) * (A : ℤ))
    (V := (2 : ℤ) ^ (f - 69 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (by decide) hV hgap'
  exact ⟨row, by simpa only [qRow, rowError, mul_one, one_mul] using hlower⟩

end Math.B699.I11ThreeTwoScaled
