import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFiveEdge.ScaledGap

/-!
Complete candidate proof text; not compiled by this worker.
Same actual rows, qContent/G, and 128/125 extraction as the accepted 2–5 edge.
The integer budget is exposed explicitly; the Q/E sum below specializes it to 33.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.PadeActualRows

theorem actual_integer_gap_budget (m e f A C : ℕ) (D : ℤ)
    (hm : 1 ≤ m) (he : 35 * m ≤ e) (hf : 15 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ D) :
    ∃ row : Bool, (128 : ℤ) ^ (5 * m) ≤
      D * |qRow m row| +
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
      (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ))| ≤ D := by
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
    (V := (5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) (D := D)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (by decide) hV hgap'
  exact ⟨row, by simpa only [qRow, rowError, one_mul, mul_one] using hlower⟩

theorem actual_q_gap33_twice_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 < BQ) (hQ : |qEval m row| ≤ BQ ^ m)
    (hA : (66 : ℚ) < qRate BQ ^ m) :
    2 * (33 * |(qRow m row : ℚ)|) < (128 : ℚ) ^ (5 * m) := by
  have hden : 0 < qDenominator BQ := by unfold qDenominator; positivity
  have hnum : (66 : ℚ) * qDenominator BQ ^ m < qNumerator ^ m := by
    calc
      _ < qRate BQ ^ m * qDenominator BQ ^ m :=
        mul_lt_mul_of_pos_right hA (pow_pos hden m)
      _ = qNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul qNumerator (qDenominator BQ)
          (ne_of_gt hden) m
  have hsmall : (66 : ℚ) * ((128 : ℚ) ^ 4 * BQ) ^ m <
      (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
    calc
      _ < qNumerator ^ m := hnum
      _ = (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
        simp only [qNumerator, mul_pow, ← pow_mul]
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((128 : ℚ) ^ (5 * m)) 66 |(qRow m row : ℚ)|
    (((128 : ℚ) ^ 4 * BQ) ^ m) (pow_pos contentBase_pos m) (by norm_num)
    (actual_q_content_bound m hm row BQ hBQ.le hQ) hsmall
  nlinarith only [h]

theorem actual_integer_gap33_sum_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : |qEval m row| ≤ BQ ^ m) (hE : |eEval m row| ≤ BE ^ m)
    (hA : (66 : ℚ) < qRate BQ ^ m)
    (V Nq : ℕ) (hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    33 * |qRow m row| + |rowError m row| * (V : ℤ) < (128 : ℤ) ^ (5 * m) := by
  have h := Math.B699.I11ScaledBounds.sum_lt_of_twice_lt
    (33 * |(qRow m row : ℚ)|) (|(rowError m row : ℚ)| * (V : ℚ))
    ((128 : ℚ) ^ (5 * m))
    (actual_q_gap33_twice_lt m hm row BQ hBQ hQ hA)
    (actual_e_gap_twice_lt m hm row BE hBE hE V Nq hNV hNsmall)
  exact_mod_cast h

end Math.B699.TwoFiveGap33
