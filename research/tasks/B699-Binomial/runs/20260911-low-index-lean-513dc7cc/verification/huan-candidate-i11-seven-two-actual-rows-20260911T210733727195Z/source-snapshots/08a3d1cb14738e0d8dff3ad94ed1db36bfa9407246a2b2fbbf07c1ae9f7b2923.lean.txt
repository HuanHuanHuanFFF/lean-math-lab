import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SevenTwoEdge.Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SevenTwoEdge.SourceRows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorSevenTwo.Threshold
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.RatBounds

/-! UNCOMPILED CANDIDATE. Actual c9d5 source/G/scaling. G threshold 224; Q scale 49^5; E scale 49^4; b=3^(9m). -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoScaled

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeGrowthNormalization

def contentBase : ℚ := (1302991 / 1000000 : ℚ) ^ 5
noncomputable def qEval (m : ℕ) (row : Bool) : ℚ :=
  actualQ 9 5 (rowDelta row) m (1 / 49)
noncomputable def eEval (m : ℕ) (row : Bool) : ℚ :=
  actualE 9 5 (rowDelta row) m (1 / 49)
noncomputable def content (m : ℕ) (row : Bool) : ℚ :=
  (qContent (5 * m - rowDelta row) (4 * m + rowDelta row - 1)
    (5 * m - rowDelta row) : ℚ)
def qRow (m : ℕ) (row : Bool) : ℤ := actualQRow (5 * m) (4 * m - 1) 1 49 row
def rowError (m : ℕ) (row : Bool) : ℤ :=
  (49 : ℤ) ^ (9 * m) * actualPRow (5 * m) (4 * m - 1) 1 49 row -
    (48 : ℤ) ^ (9 * m) * qRow m row

theorem contentBase_pos : 0 < contentBase := by norm_num [contentBase]

theorem content_lower (m : ℕ) (hm : 224 ≤ m) (row : Bool) :
    contentBase ^ m ≤ content m row := by
  have h := Math.B699.I11DivisorSevenTwo.qContent_seven_two_lower
    (rowDelta row) m (rowDelta_cases row) hm
  simpa only [contentBase, content, ← pow_mul] using le_of_lt h

theorem q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (qRow m row : ℚ) =
      (49 : ℚ) ^ (5 * m - rowDelta row) * qEval m row := by
  simpa only [content, qRow, qEval] using
    actual_q_content_identity m hm row

theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (49 : ℚ) ^ (4 * m + rowDelta row - 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval, one_pow, mul_one] using
    actual_remainder m hm row

theorem actual_q_content_bound (m : ℕ) (hm : 224 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 ≤ BQ) (hQ : |qEval m row| ≤ BQ ^ m) :
    contentBase ^ m * |(qRow m row : ℚ)| ≤ ((49 : ℚ) ^ 5 * BQ) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((49 : ℚ) ^ (5 * m - rowDelta row))
    (qRow m row) (qEval m row) (BQ ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (pow_nonneg (by norm_num) _) (q_content_identity m (by omega) row) hQ
  calc
    _ ≤ (49 : ℚ) ^ (5 * m - rowDelta row) * BQ ^ m := h
    _ ≤ (49 : ℚ) ^ (5 * m) * BQ ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 49) (Nat.sub_le _ _))
        (pow_nonneg hBQ m)
    _ = ((49 : ℚ) ^ 5 * BQ) ^ m := by rw [mul_pow, ← pow_mul]

theorem actual_e_content_bound (m : ℕ) (hm : 224 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 ≤ BE) (hE : |eEval m row| ≤ BE ^ m) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((49 : ℚ) ^ 4 * BE) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((49 : ℚ) ^ (4 * m + rowDelta row - 1))
    (rowError m row) (eEval m row) (BE ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (by positivity) (e_content_identity m (by omega) row) hE
  have hexp : 4 * m + rowDelta row - 1 ≤ 4 * m := by
    rcases rowDelta_cases row with hr | hr <;> rw [hr] <;> omega
  calc
    _ ≤ (49 : ℚ) ^ (4 * m + rowDelta row - 1) * BE ^ m := h
    _ ≤ (49 : ℚ) ^ (4 * m) * BE ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 49) hexp) (pow_nonneg hBE m)
    _ = ((49 : ℚ) ^ 4 * BE) ^ m := by rw [mul_pow, ← pow_mul]

/-- Actual determinant nonvanishing supplies a row; b=3^(9m) stays in the gap. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 18 * m ≤ e) (hf : 36 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(7 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (49 : ℤ) ^ (9 * m) ≤
      (3 : ℤ) ^ (9 * m) * 24 * |qRow m row| +
        |rowError m row| * |(2 : ℤ) ^ (f - 36 * m) * (C : ℤ)| := by
  have hp : (49 : ℕ) ^ (9 * m) = (7 : ℕ) ^ (18 * m) := by
    calc
      _ = ((7 : ℕ) ^ 2) ^ (9 * m) := by norm_num
      _ = (7 : ℕ) ^ (18 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (16 : ℕ) ^ (9 * m) = (2 : ℕ) ^ (36 * m) := by
    calc
      _ = ((2 : ℕ) ^ 4) ^ (9 * m) := by norm_num
      _ = (2 : ℕ) ^ (36 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (49 : ℕ) ^ (9 * m) * (7 ^ (e - 18 * m) * A) = 7 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 7 e (18 * m) A he
  have hQnat : (16 : ℕ) ^ (9 * m) * (2 ^ (f - 36 * m) * C) = 2 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 f (36 * m) C hf
  have hPint : (49 : ℤ) ^ (9 * m) * ((7 : ℤ) ^ (e - 18 * m) * (A : ℤ)) =
      (7 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (16 : ℤ) ^ (9 * m) * ((2 : ℤ) ^ (f - 36 * m) * (C : ℤ)) =
      (2 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(49 : ℤ) ^ (9 * m) * ((7 : ℤ) ^ (e - 18 * m) * (A : ℤ)) -
      (16 : ℤ) ^ (9 * m) * ((2 : ℤ) ^ (f - 36 * m) * (C : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (2 : ℤ) ^ (f - 36 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (2 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (5 * m) (4 * m - 1) (by omega) 1 49
    (r := (49 : ℤ) ^ (9 * m)) (s := (16 : ℤ) ^ (9 * m))
    (a := 1) (b := (3 : ℤ) ^ (9 * m))
    (U := (7 : ℤ) ^ (e - 18 * m) * (A : ℤ))
    (V := (2 : ℤ) ^ (f - 36 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (pow_pos (by decide) _) hV hgap'
  have hsb : (16 : ℤ) ^ (9 * m) * (3 : ℤ) ^ (9 * m) = (48 : ℤ) ^ (9 * m) := by
    rw [← mul_pow]
    norm_num
  exact ⟨row, by simpa only [qRow, rowError, mul_one, hsb] using hlower⟩

end Math.B699.I11SevenTwoScaled
