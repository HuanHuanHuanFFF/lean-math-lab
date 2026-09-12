import Mathlib.Algebra.Order.Ring.Cast
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.ActualBounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.Rates

/-! UNCOMPILED fixedc7d5 actual integer-gap candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.I13C311QE

theorem actual_q_gap_twice_lt (m : ℕ) (hm : 187 ≤ m) (row : Bool) :
    2 * ((2 : ℚ) ^ (7 * m) * 24 * |(qRow m row : ℚ)|) < (243 : ℚ) ^ (7 * m) := by
  have hB : 0 < qBase := fixed_bases_pos.2.2.1
  have hden : 0 < qDenominator := by unfold qDenominator; positivity
  have hnum : (7200 : ℚ) * qDenominator ^ m < qNumerator ^ m := by
    calc
      _ < qRate ^ m * qDenominator ^ m := mul_lt_mul_of_pos_right
        (q_rate_power m hm) (pow_pos hden m)
      _ = qNumerator ^ m := Math.B699.I11ScaledBounds.ratio_pow_mul qNumerator qDenominator (ne_of_gt hden) m
  have hsmall : ((48 : ℚ) * 2 ^ (7 * m)) *
      (150 * ((243 : ℚ) ^ 5 * qBase) ^ m) < (243 : ℚ) ^ (7 * m) * contentBase ^ m := by
    calc
      _ = (7200 : ℚ) * qDenominator ^ m := by
        simp only [qDenominator, mul_pow, ← pow_mul]
        ring
      _ < qNumerator ^ m := hnum
      _ = (243 : ℚ) ^ (7 * m) * contentBase ^ m := by
        simp only [qNumerator, mul_pow, ← pow_mul]
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt (contentBase ^ m) ((243 : ℚ) ^ (7 * m))
    ((48 : ℚ) * 2 ^ (7 * m)) |(qRow m row : ℚ)|
    (150 * ((243 : ℚ) ^ 5 * qBase) ^ m)
    (pow_pos contentBase_pos m) (by positivity) (actual_q_content_bound m hm row) hsmall
  nlinarith only [h]

theorem actual_e_gap_twice_lt (m : ℕ) (hm : 187 ≤ m) (row : Bool)
    (V Nq : ℕ) (hNV : (121 : ℚ) ^ (7 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate ^ m) :
    2 * (|(rowError m row : ℚ)| * (V : ℚ)) < (243 : ℚ) ^ (7 * m) := by
  have hB : 0 < eBase := fixed_bases_pos.2.2.2
  have hden : 0 < wDenominator := by unfold wDenominator; positivity
  have hsmall : (2 * (V : ℚ)) * wDenominator ^ m <
      (243 : ℚ) ^ (7 * m) * contentBase ^ m := by
    apply (Rat.mul_lt_mul_right (pow_pos (by norm_num : (0 : ℚ) < 121) (7 * m))).mp
    calc
      (2 * (V : ℚ)) * wDenominator ^ m * (121 : ℚ) ^ (7 * m) =
          (2 * (Nq : ℚ)) * wDenominator ^ m := by rw [← hNV]; ring
      _ < wRate ^ m * wDenominator ^ m := mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
      _ = wNumerator ^ m := Math.B699.I11ScaledBounds.ratio_pow_mul wNumerator wDenominator (ne_of_gt hden) m
      _ = ((243 : ℚ) ^ (7 * m) * contentBase ^ m) * (121 : ℚ) ^ (7 * m) := by
        simp only [wNumerator, mul_pow, ← pow_mul]
        ring
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt (contentBase ^ m) ((243 : ℚ) ^ (7 * m))
    (2 * (V : ℚ)) |(rowError m row : ℚ)| (wDenominator ^ m)
    (pow_pos contentBase_pos m) (by positivity) (actual_e_content_bound m hm row) hsmall
  nlinarith only [h]

theorem actual_integer_gap_sum_lt (m : ℕ) (hm : 187 ≤ m) (row : Bool)
    (V Nq : ℕ) (hNV : (121 : ℚ) ^ (7 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate ^ m) :
    (2 : ℤ) ^ (7 * m) * 24 * |qRow m row| + |rowError m row| * (V : ℤ) <
      (243 : ℤ) ^ (7 * m) := by
  have h := Math.B699.I11ScaledBounds.sum_lt_of_twice_lt
    ((2 : ℚ) ^ (7 * m) * 24 * |(qRow m row : ℚ)|)
    (|(rowError m row : ℚ)| * (V : ℚ)) ((243 : ℚ) ^ (7 * m))
    (actual_q_gap_twice_lt m hm row) (actual_e_gap_twice_lt m hm row V Nq hNV hNsmall)
  exact_mod_cast h

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.actual_q_gap_twice_lt
#print axioms Math.B699.I13C311Edge.actual_e_gap_twice_lt
#print axioms Math.B699.I13C311Edge.actual_integer_gap_sum_lt
