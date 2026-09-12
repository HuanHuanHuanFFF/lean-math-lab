import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoEdge.ActualRows
import Mathlib.Algebra.Order.Ring.Cast

/-! UNCOMPILED CANDIDATE. a=b=1 strict integer-gap terms; actual Q scale9^15 and E scale9^8, with positive Rat cancellation. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoScaled

def qNumerator : ℚ := (9 : ℚ) ^ 23 * contentBase
def qDenominator (BQ : ℚ) : ℚ := (9 : ℚ) ^ 15 * BQ
def qRate (BQ : ℚ) : ℚ := qNumerator / qDenominator BQ
def wNumerator : ℚ := ((9 : ℚ) * 8) ^ 23 * contentBase
def wDenominator (BE : ℚ) : ℚ := (9 : ℚ) ^ 8 * BE
def wRate (BE : ℚ) : ℚ := wNumerator / wDenominator BE

theorem qRate_eq_seed (BQ : ℚ) :
    qRate BQ = (9 : ℚ) ^ 8 * contentBase / BQ := by
  by_cases hBQ : BQ = 0
  · simp [qRate, qNumerator, qDenominator, hBQ]
  · unfold qRate qNumerator qDenominator
    field_simp [hBQ]
    <;> norm_num
    <;> ring

theorem actual_q_gap_twice_lt (m : ℕ) (hm : 160 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 < BQ) (hQ : |qEval m row| ≤ BQ ^ m)
    (hA : (48 : ℚ) < qRate BQ ^ m) :
    2 * (24 * |(qRow m row : ℚ)|) < (9 : ℚ) ^ (23 * m) := by
  have hden : 0 < qDenominator BQ := by unfold qDenominator; positivity
  have hnum : (48 : ℚ) * qDenominator BQ ^ m < qNumerator ^ m := by
    calc
      _ < qRate BQ ^ m * qDenominator BQ ^ m :=
        mul_lt_mul_of_pos_right hA (pow_pos hden m)
      _ = qNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul qNumerator (qDenominator BQ)
          (ne_of_gt hden) m
  have hsmall : (48 : ℚ) * ((9 : ℚ) ^ 15 * BQ) ^ m <
      (9 : ℚ) ^ (23 * m) * contentBase ^ m := by
    calc
      _ < qNumerator ^ m := hnum
      _ = (9 : ℚ) ^ (23 * m) * contentBase ^ m := by
        simp only [qNumerator, mul_pow, ← pow_mul]
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((9 : ℚ) ^ (23 * m)) 48 |(qRow m row : ℚ)|
    (((9 : ℚ) ^ 15 * BQ) ^ m) (pow_pos contentBase_pos m) (by norm_num)
    (actual_q_content_bound m hm row BQ hBQ.le hQ) hsmall
  nlinarith only [h]

theorem actual_e_gap_twice_lt (m : ℕ) (hm : 160 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 < BE) (hE : |eEval m row| ≤ BE ^ m)
    (V Nq : ℕ) (hNV : (8 : ℚ) ^ (23 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    2 * (|(rowError m row : ℚ)| * (V : ℚ)) < (9 : ℚ) ^ (23 * m) := by
  have hden : 0 < wDenominator BE := by unfold wDenominator; positivity
  have hsmall : (2 * (V : ℚ)) * wDenominator BE ^ m <
      (9 : ℚ) ^ (23 * m) * contentBase ^ m := by
    apply (Rat.mul_lt_mul_right
      (pow_pos (by norm_num : (0 : ℚ) < 8) (23 * m))).mp
    calc
      (2 * (V : ℚ)) * wDenominator BE ^ m * (8 : ℚ) ^ (23 * m) =
          (2 * (Nq : ℚ)) * wDenominator BE ^ m := by rw [← hNV]; ring
      _ < wRate BE ^ m * wDenominator BE ^ m :=
        mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
      _ = wNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul wNumerator (wDenominator BE)
          (ne_of_gt hden) m
      _ = ((9 : ℚ) ^ (23 * m) * contentBase ^ m) * (8 : ℚ) ^ (23 * m) := by
        simp only [wNumerator, mul_pow, ← pow_mul]
        ring
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((9 : ℚ) ^ (23 * m)) (2 * (V : ℚ))
    |(rowError m row : ℚ)| (wDenominator BE ^ m)
    (pow_pos contentBase_pos m) (by positivity)
    (actual_e_content_bound m hm row BE hBE.le hE) hsmall
  nlinarith only [h]

theorem actual_integer_gap_sum_lt (m : ℕ) (hm : 160 ≤ m) (row : Bool)
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : |qEval m row| ≤ BQ ^ m) (hE : |eEval m row| ≤ BE ^ m)
    (hA : (48 : ℚ) < qRate BQ ^ m)
    (V Nq : ℕ) (hNV : (8 : ℚ) ^ (23 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    24 * |qRow m row| + |rowError m row| * (V : ℤ) < (9 : ℤ) ^ (23 * m) := by
  have h := Math.B699.I11ScaledBounds.sum_lt_of_twice_lt
    (24 * |(qRow m row : ℚ)|) (|(rowError m row : ℚ)| * (V : ℚ))
    ((9 : ℚ) ^ (23 * m))
    (actual_q_gap_twice_lt m hm row BQ hBQ hQ hA)
    (actual_e_gap_twice_lt m hm row BE hBE hE V Nq hNV hNsmall)
  exact_mod_cast h

end Math.B699.I11ThreeTwoScaled
