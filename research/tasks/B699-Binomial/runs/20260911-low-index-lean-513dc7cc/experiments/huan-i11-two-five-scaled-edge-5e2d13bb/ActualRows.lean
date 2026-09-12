import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-two-five-scaled-edge-5e2d13bb».Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFive.Prefix
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorTwoFive.Threshold
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.RatBounds

/-!
UNCOMPILED. Actual source rows, each row's own gcd, and the D=3 remainder.
Prefix and four-track G have complete proof text but separate acceptance states.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.I11TwoFivePrefix Math.B699.PadeGrowthNormalization

def contentBase : ℚ := (602791 / 500000 : ℚ) ^ 4
noncomputable def qEval (m : ℕ) (row : Bool) : ℚ :=
  actualQ 5 4 (rowDelta row) m (3 / 128)
noncomputable def eEval (m : ℕ) (row : Bool) : ℚ :=
  actualE 5 4 (rowDelta row) m (3 / 128)
noncomputable def content (m : ℕ) (row : Bool) : ℚ :=
  (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
    (4 * m - rowDelta row) : ℚ)
def qRow (m : ℕ) (row : Bool) : ℤ := actualQRow (4 * m) (m - 1) 3 128 row
def rowError (m : ℕ) (row : Bool) : ℤ :=
  (128 : ℤ) ^ (5 * m) * actualPRow (4 * m) (m - 1) 3 128 row -
    (125 : ℤ) ^ (5 * m) * qRow m row

theorem contentBase_pos : 0 < contentBase := by norm_num [contentBase]

theorem content_lower (m : ℕ) (hm : 141 ≤ m) (row : Bool) :
    contentBase ^ m ≤ content m row := by
  have h := Math.B699.I11DivisorTwoFive.qContent_two_five_lower
    (rowDelta row) m (rowDelta_cases row) hm
  simpa only [contentBase, content, ← pow_mul] using le_of_lt h

theorem q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (qRow m row : ℚ) =
      (128 : ℚ) ^ (4 * m - rowDelta row) * qEval m row := by
  simpa only [content, qRow, qEval] using
    Math.B699.I11TwoFivePrefix.actual_q_content_identity m hm row

theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (128 : ℚ) ^ (m + rowDelta row - 1) *
        (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval] using
    Math.B699.I11TwoFivePrefix.actual_remainder m hm row

theorem actual_q_content_bound (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 ≤ BQ) (hQ : |qEval m row| ≤ BQ ^ m) :
    contentBase ^ m * |(qRow m row : ℚ)| ≤ ((128 : ℚ) ^ 4 * BQ) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((128 : ℚ) ^ (4 * m - rowDelta row))
    (qRow m row) (qEval m row) (BQ ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (pow_nonneg (by norm_num) _) (q_content_identity m (by omega) row) hQ
  calc
    _ ≤ (128 : ℚ) ^ (4 * m - rowDelta row) * BQ ^ m := h
    _ ≤ (128 : ℚ) ^ (4 * m) * BQ ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 128) (Nat.sub_le _ _))
        (pow_nonneg hBQ m)
    _ = ((128 : ℚ) ^ 4 * BQ) ^ m := by rw [mul_pow, ← pow_mul]

theorem actual_e_content_bound (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 ≤ BE) (hE : |eEval m row| ≤ BE ^ m) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m)
    ((128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1))
    (rowError m row) (eEval m row) (BE ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (by positivity) (e_content_identity m (by omega) row) hE
  calc
    _ ≤ ((128 : ℚ) ^ (m + rowDelta row - 1) *
          (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1)) * BE ^ m := h
    _ ≤ ((128 : ℚ) * 3 ^ 8) ^ m * BE ^ m :=
      mul_le_mul_of_nonneg_right
        (Math.B699.I11TwoFivePrefix.error_scale_le m (by omega) row) (pow_nonneg hBE m)
    _ = ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by rw [← mul_pow]

/-- The actual nonzero-row theorem supplies the integer lower bound. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 35 * m ≤ e) (hf : 15 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (128 : ℤ) ^ (5 * m) ≤
      24 * |qRow m row| +
        |rowError m row| * |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| := by
  have hp : (128 : ℕ) ^ (5 * m) = (2 : ℕ) ^ (35 * m) := by
    calc
      _ = ((2 : ℕ) ^ 7) ^ (5 * m) := by norm_num
      _ = (2 : ℕ) ^ (35 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
    calc
      _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
      _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (128 : ℕ) ^ (5 * m) * (2 ^ (e - 35 * m) * A) = 2 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 e (35 * m) A he
  have hQnat : (125 : ℕ) ^ (5 * m) * (5 ^ (f - 15 * m) * C) = 5 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C hf
  have hPint : (128 : ℤ) ^ (5 * m) * ((2 : ℤ) ^ (e - 35 * m) * (A : ℤ)) =
      (2 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) =
      (5 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(128 : ℤ) ^ (5 * m) * ((2 : ℤ) ^ (e - 35 * m) * (A : ℤ)) -
      (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (5 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (4 * m) (m - 1) (by omega) 3 128
    (r := (128 : ℤ) ^ (5 * m)) (s := (125 : ℤ) ^ (5 * m))
    (a := 1) (b := 1)
    (U := (2 : ℤ) ^ (e - 35 * m) * (A : ℤ))
    (V := (5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (by decide) hV hgap'
  exact ⟨row, by simpa only [qRow, rowError, one_mul, mul_one] using hlower⟩

end Math.B699.I11TwoFiveScaled
