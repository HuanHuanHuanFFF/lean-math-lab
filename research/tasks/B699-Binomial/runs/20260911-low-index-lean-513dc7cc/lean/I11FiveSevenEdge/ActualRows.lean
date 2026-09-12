import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenEdge.Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenEdge.SourceRows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorFiveSeven.Threshold
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.RatBounds

/-! UNCOMPILED CANDIDATE. Actual Gdelta and Hom at y50, Q/E scales50^7/50^4. Integer lower bound remains25^(11m). -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveSevenScaled

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeGrowthNormalization

def contentBase : ℚ := (1303943 / 1000000 : ℚ) ^ 7
noncomputable def qEval (m : ℕ) (row : Bool) : ℚ :=
  actualQ 11 7 (rowDelta row) m (1 / 50)
noncomputable def eEval (m : ℕ) (row : Bool) : ℚ :=
  actualE 11 7 (rowDelta row) m (1 / 50)
noncomputable def content (m : ℕ) (row : Bool) : ℚ :=
  (qContent (7 * m - rowDelta row) (4 * m + rowDelta row - 1)
    (7 * m - rowDelta row) : ℚ)
def qRow (m : ℕ) (row : Bool) : ℤ := actualQRow (7 * m) (4 * m - 1) 1 50 row
def rowError (m : ℕ) (row : Bool) : ℤ :=
  (50 : ℤ) ^ (11 * m) * actualPRow (7 * m) (4 * m - 1) 1 50 row -
    (49 : ℤ) ^ (11 * m) * qRow m row

theorem contentBase_pos : 0 < contentBase := by norm_num [contentBase]

theorem content_lower (m : ℕ) (hm : 149 ≤ m) (row : Bool) :
    contentBase ^ m ≤ content m row := by
  have h := Math.B699.I11DivisorFiveSeven.qContent_lower
    (rowDelta row) m (rowDelta_cases row) hm
  simpa only [contentBase, content, ← pow_mul] using le_of_lt h

theorem q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (qRow m row : ℚ) =
      (50 : ℚ) ^ (7 * m - rowDelta row) * qEval m row := by
  simpa only [content, qRow, qEval] using
    actual_q_content_identity m hm row

theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (50 : ℚ) ^ (4 * m + rowDelta row - 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval, one_pow, mul_one] using
    actual_remainder m hm row

theorem actual_q_content_bound (m : ℕ) (hm : 149 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 ≤ BQ) (hQ : |qEval m row| ≤ BQ ^ m) :
    contentBase ^ m * |(qRow m row : ℚ)| ≤ ((50 : ℚ) ^ 7 * BQ) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((50 : ℚ) ^ (7 * m - rowDelta row))
    (qRow m row) (qEval m row) (BQ ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (pow_nonneg (by norm_num) _) (q_content_identity m (by omega) row) hQ
  calc
    _ ≤ (50 : ℚ) ^ (7 * m - rowDelta row) * BQ ^ m := h
    _ ≤ (50 : ℚ) ^ (7 * m) * BQ ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 50) (Nat.sub_le _ _))
        (pow_nonneg hBQ m)
    _ = ((50 : ℚ) ^ 7 * BQ) ^ m := by rw [mul_pow, ← pow_mul]

theorem actual_e_content_bound (m : ℕ) (hm : 149 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 ≤ BE) (hE : |eEval m row| ≤ BE ^ m) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((50 : ℚ) ^ 4 * BE) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((50 : ℚ) ^ (4 * m + rowDelta row - 1))
    (rowError m row) (eEval m row) (BE ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (by positivity) (e_content_identity m (by omega) row) hE
  have hexp : 4 * m + rowDelta row - 1 ≤ 4 * m := by
    rcases rowDelta_cases row with hr | hr <;> rw [hr] <;> omega
  calc
    _ ≤ (50 : ℚ) ^ (4 * m + rowDelta row - 1) * BE ^ m := h
    _ ≤ (50 : ℚ) ^ (4 * m) * BE ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 50) hexp) (pow_nonneg hBE m)
    _ = ((50 : ℚ) ^ 4 * BE) ^ m := by rw [mul_pow, ← pow_mul]

/-- Real integer lower bound uses P=25, while its a=2 factor gives y=50 in the error. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 22 * m ≤ e) (hf : 22 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (7 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (25 : ℤ) ^ (11 * m) ≤
      24 * |qRow m row| +
        |rowError m row| * |(7 : ℤ) ^ (f - 22 * m) * (C : ℤ)| := by
  have hp : (25 : ℕ) ^ (11 * m) = (5 : ℕ) ^ (22 * m) := by
    calc
      _ = ((5 : ℕ) ^ 2) ^ (11 * m) := by norm_num
      _ = (5 : ℕ) ^ (22 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (49 : ℕ) ^ (11 * m) = (7 : ℕ) ^ (22 * m) := by
    calc
      _ = ((7 : ℕ) ^ 2) ^ (11 * m) := by norm_num
      _ = (7 : ℕ) ^ (22 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (25 : ℕ) ^ (11 * m) * (5 ^ (e - 22 * m) * A) = 5 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 e (22 * m) A he
  have hQnat : (49 : ℕ) ^ (11 * m) * (7 ^ (f - 22 * m) * C) = 7 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 7 f (22 * m) C hf
  have hPint : (25 : ℤ) ^ (11 * m) * ((5 : ℤ) ^ (e - 22 * m) * (A : ℤ)) =
      (5 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (49 : ℤ) ^ (11 * m) * ((7 : ℤ) ^ (f - 22 * m) * (C : ℤ)) =
      (7 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(25 : ℤ) ^ (11 * m) * ((5 : ℤ) ^ (e - 22 * m) * (A : ℤ)) -
      (49 : ℤ) ^ (11 * m) * ((7 : ℤ) ^ (f - 22 * m) * (C : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (7 : ℤ) ^ (f - 22 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (7 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (7 * m) (4 * m - 1) (by omega) 1 50
    (r := (25 : ℤ) ^ (11 * m)) (s := (49 : ℤ) ^ (11 * m))
    (a := (2 : ℤ) ^ (11 * m)) (b := 1)
    (U := (5 : ℤ) ^ (e - 22 * m) * (A : ℤ))
    (V := (7 : ℤ) ^ (f - 22 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (pow_ne_zero _ (by decide)) (by decide) hV hgap'
  have hra : (25 : ℤ) ^ (11 * m) * (2 : ℤ) ^ (11 * m) = (50 : ℤ) ^ (11 * m) := by
    rw [← mul_pow]
    norm_num
  exact ⟨row, by simpa only [qRow, rowError, hra, mul_one, one_mul] using hlower⟩

end Math.B699.I11FiveSevenScaled
