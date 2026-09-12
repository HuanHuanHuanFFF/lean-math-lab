import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SevenTwoEdge.ActualRows
import Mathlib.Algebra.Order.Ring.Cast

/-! UNCOMPILED CANDIDATE. Both strict gap terms from actual rows. Positive Rat cancellation; Q keeps 3^(9m), E scale 49^4. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoScaled
open Math.B699.I11ScaledBounds

def qNumerator : ℚ := (49 : ℚ) ^ 9 * contentBase
def qDenominator (BQ : ℚ) : ℚ := (3 : ℚ) ^ 9 * (49 : ℚ) ^ 5 * BQ
def qRate (BQ : ℚ) : ℚ := qNumerator / qDenominator BQ
def wNumerator : ℚ := ((49 : ℚ) * 16) ^ 9 * contentBase
def wDenominator (BE : ℚ) : ℚ := (49 : ℚ) ^ 4 * BE
def wRate (BE : ℚ) : ℚ := wNumerator / wDenominator BE

theorem qRate_eq_seed (BQ : ℚ) :
    qRate BQ = (49 : ℚ) ^ 4 * contentBase / ((3 : ℚ) ^ 9 * BQ) := by
  by_cases hBQ : BQ = 0
  · simp [qRate, qNumerator, qDenominator, hBQ]
  · unfold qRate qNumerator qDenominator
    field_simp [hBQ]
    <;> norm_num
    <;> ring

theorem actual_q_gap_twice_lt (m : ℕ) (hm : 224 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 < BQ) (hQ : |qEval m row| ≤ BQ ^ m)
    (hA : (48 : ℚ) < qRate BQ ^ m) :
    2 * ((3 : ℚ) ^ (9 * m) * 24 * |(qRow m row : ℚ)|) < (49 : ℚ) ^ (9 * m) := by
  have hden : 0 < qDenominator BQ := by unfold qDenominator; positivity
  have hnum : (48 : ℚ) * qDenominator BQ ^ m < qNumerator ^ m := by
    calc
      _ < qRate BQ ^ m * qDenominator BQ ^ m :=
        mul_lt_mul_of_pos_right hA (pow_pos hden m)
      _ = qNumerator ^ m := ratio_pow_mul qNumerator (qDenominator BQ) (ne_of_gt hden) m
  have hsmall : ((48 : ℚ) * 3 ^ (9 * m)) * ((49 : ℚ) ^ 5 * BQ) ^ m <
      (49 : ℚ) ^ (9 * m) * contentBase ^ m := by
    calc
      _ = (48 : ℚ) * qDenominator BQ ^ m := by
        simp only [qDenominator, mul_pow, ← pow_mul]
        ring
      _ < qNumerator ^ m := hnum
      _ = (49 : ℚ) ^ (9 * m) * contentBase ^ m := by
        simp only [qNumerator, mul_pow, ← pow_mul]
  have h := weighted_bound_lt (contentBase ^ m) ((49 : ℚ) ^ (9 * m))
    ((48 : ℚ) * 3 ^ (9 * m)) |(qRow m row : ℚ)| (((49 : ℚ) ^ 5 * BQ) ^ m)
    (pow_pos contentBase_pos m) (by positivity)
    (actual_q_content_bound m hm row BQ (le_of_lt hBQ) hQ) hsmall
  nlinarith [h]

theorem actual_e_gap_twice_lt (m : ℕ) (hm : 224 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 < BE) (hE : |eEval m row| ≤ BE ^ m)
    (V Nq : ℕ) (hNV : (16 : ℚ) ^ (9 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    2 * (|(rowError m row : ℚ)| * (V : ℚ)) < (49 : ℚ) ^ (9 * m) := by
  have hden : 0 < wDenominator BE := by unfold wDenominator; positivity
  have hsmall : (2 * (V : ℚ)) * wDenominator BE ^ m <
      (49 : ℚ) ^ (9 * m) * contentBase ^ m := by
    apply (Rat.mul_lt_mul_right (pow_pos (by norm_num : (0 : ℚ) < 16) (9 * m))).mp
    calc
      (2 * (V : ℚ)) * wDenominator BE ^ m * (16 : ℚ) ^ (9 * m) =
          (2 * (Nq : ℚ)) * wDenominator BE ^ m := by rw [← hNV]; ring
      _ < wRate BE ^ m * wDenominator BE ^ m :=
        mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
      _ = wNumerator ^ m := ratio_pow_mul wNumerator (wDenominator BE) (ne_of_gt hden) m
      _ = ((49 : ℚ) ^ (9 * m) * contentBase ^ m) * (16 : ℚ) ^ (9 * m) := by
        simp only [wNumerator, mul_pow, ← pow_mul]
        ring
  have h := weighted_bound_lt (contentBase ^ m) ((49 : ℚ) ^ (9 * m))
    (2 * (V : ℚ)) |(rowError m row : ℚ)| (wDenominator BE ^ m)
    (pow_pos contentBase_pos m) (by positivity)
    (actual_e_content_bound m hm row BE (le_of_lt hBE) hE) hsmall
  nlinarith [h]

theorem actual_integer_gap_sum_lt (m : ℕ) (hm : 224 ≤ m) (row : Bool)
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : |qEval m row| ≤ BQ ^ m) (hE : |eEval m row| ≤ BE ^ m)
    (hA : (48 : ℚ) < qRate BQ ^ m)
    (V Nq : ℕ) (hNV : (16 : ℚ) ^ (9 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    (3 : ℤ) ^ (9 * m) * 24 * |qRow m row| + |rowError m row| * (V : ℤ) <
      (49 : ℤ) ^ (9 * m) := by
  have h := sum_lt_of_twice_lt
    ((3 : ℚ) ^ (9 * m) * 24 * |(qRow m row : ℚ)|)
    (|(rowError m row : ℚ)| * (V : ℚ)) ((49 : ℚ) ^ (9 * m))
    (actual_q_gap_twice_lt m hm row BQ hBQ hQ hA)
    (actual_e_gap_twice_lt m hm row BE hBE hE V Nq hNV hNsmall)
  exact_mod_cast h

end Math.B699.I11SevenTwoScaled
