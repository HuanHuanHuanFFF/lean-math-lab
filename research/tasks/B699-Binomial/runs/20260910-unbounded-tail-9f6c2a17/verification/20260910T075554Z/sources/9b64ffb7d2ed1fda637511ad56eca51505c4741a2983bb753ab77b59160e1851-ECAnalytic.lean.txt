import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic.Convert
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
Analytic part of the EC candidate from the frozen, merged run
20260910-elementary-count-bbbfe15e. This file does not claim EC or B699.
The correction and its derivative retain the complete real domain x >= 128.
Local acceptance is recorded separately in this run's verification directory.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 1600000
open Real
namespace B699TailEC

theorem log_four : log (4 : ℝ) = 2 * log 2 := by
  have h := Real.log_pow (2 : ℝ) 2
  norm_num at h
  exact h

theorem log_128 : log (128 : ℝ) = 7 * log 2 := by
  have h := Real.log_pow (2 : ℝ) 7
  norm_num at h
  exact h

theorem log_two_lower : (56 : ℝ) / 81 < log 2 := by
  linarith [Real.log_two_gt_d9]

theorem log_two_upper : log (2 : ℝ) < 25 / 36 := by
  linarith [Real.log_two_lt_d9]

theorem log_lower {x : ℝ} (hx : 128 ≤ x) : (9 : ℝ) / 2 < log x := by
  have h := Real.log_le_log (by norm_num : (0 : ℝ) < 128) hx
  rw [log_128] at h
  linarith [log_two_lower]

/-- The denominator of EC is positive on its complete claimed domain. -/
theorem denominator_pos {x : ℝ} (hx : 128 ≤ x) : 0 < log x - 3 / 2 := by
  linarith [log_lower hx]

noncomputable def correction (x : ℝ) : ℝ :=
  (3 / 2) * log 4 * x / (log x * (log x - 3 / 2))

noncomputable def correctionDeriv (x : ℝ) : ℝ :=
  (3 / 2) * log 4 *
    (log x * (log x - 3 / 2) - (2 * log x - 3 / 2)) /
      (log x ^ 2 * (log x - 3 / 2) ^ 2)

theorem correction_128_ge : (72 : ℝ) / 7 ≤ correction 128 := by
  have h2 : 0 < log (2 : ℝ) := Real.log_pos (by norm_num)
  have ha : 0 < 7 * log (2 : ℝ) - 3 / 2 := by
    linarith [log_two_lower]
  have heq : correction 128 = 384 / (7 * (7 * log 2 - 3 / 2)) := by
    unfold correction
    rw [log_four, log_128]
    field_simp [ne_of_gt h2, ne_of_gt ha]
    <;> ring
  rw [heq]
  apply (le_div_iff₀ (by positivity : (0 : ℝ) < 7 * (7 * log 2 - 3 / 2))).2
  nlinarith [log_two_upper]

theorem hasDerivAt_correction {x : ℝ} (hx : 128 ≤ x) :
    HasDerivAt correction (correctionDeriv x) x := by
  have h0 : x ≠ 0 := by linarith
  have hl : log x ≠ 0 := ne_of_gt (by linarith [log_lower hx])
  have ha : log x - 3 / 2 ≠ 0 := ne_of_gt (denominator_pos hx)
  have hd := ((hasDerivAt_id x).const_mul ((3 / 2 : ℝ) * log 4)).div
    ((Real.hasDerivAt_log h0).mul ((Real.hasDerivAt_log h0).sub_const (3 / 2)))
    (mul_ne_zero hl ha)
  convert hd using 1 <;> try rfl
  unfold correctionDeriv
  generalize (3 / 2 : ℝ) = a at *
  simp only [Pi.mul_apply, id_eq]
  field_simp [h0, hl, ha] <;> ring

theorem correctionDeriv_lower {x : ℝ} (hx : 128 ≤ x) :
    log 4 / log x ^ 2 ≤ correctionDeriv x := by
  have hlp : 0 < log x := by linarith [log_lower hx]
  have hap := denominator_pos hx
  have hl : log x ≠ 0 := ne_of_gt hlp
  have ha : log x - 3 / 2 ≠ 0 := ne_of_gt hap
  have hc : 0 < log (4 : ℝ) := Real.log_pos (by norm_num)
  have hz : 0 ≤ log x - 9 / 2 := by linarith [log_lower hx]
  have identity (a z c : ℝ) (hz0 : z ≠ 0) (hza : z - a ≠ 0) :
      a * c * (z * (z - a) - (2 * z - a)) / (z ^ 2 * (z - a) ^ 2) -
        c / z ^ 2 = c * z * ((a - 1) * z - a ^ 2) / (z ^ 2 * (z - a) ^ 2) := by
    field_simp [hz0, hza] <;> ring
  have heq := identity (3 / 2) (log x) (log 4) hl ha
  change correctionDeriv x - log 4 / log x ^ 2 = _ at heq
  have hp : 0 ≤ ((3 / 2 : ℝ) - 1) * log x - (3 / 2 : ℝ) ^ 2 := by
    linarith
  have hn : 0 ≤ correctionDeriv x - log 4 / log x ^ 2 := by
    rw [heq]
    exact div_nonneg (mul_nonneg (mul_nonneg hc.le hlp.le) hp) (by positivity)
  linarith


end B699TailEC

#print axioms B699TailEC.log_two_lower
#print axioms B699TailEC.log_two_upper
#print axioms B699TailEC.denominator_pos
#print axioms B699TailEC.correction_128_ge
#print axioms B699TailEC.hasDerivAt_correction
#print axioms B699TailEC.correctionDeriv_lower
