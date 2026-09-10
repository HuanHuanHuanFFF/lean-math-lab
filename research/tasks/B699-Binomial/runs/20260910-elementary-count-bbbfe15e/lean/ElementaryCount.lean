import Mathlib.NumberTheory.Chebyshev
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic.Convert
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Elementary prime counting: candidate, NOT YET COMPILED

The target is EC on the exact real domain `128 ≤ x`.  The proof is a
formalization candidate of Section 2 of the fixed prime-optimization report.
No Lean executable was available in the producing session.  In particular,
these declarations and the audit below have NOT been accepted by Lean.
See ../acceptance.md and ../handoff.md before reuse.

The base case uses `2^145 ≤ primorial 128`, checked inside Lean by `decide`
when this file is compiled, in place of a sum of binary-logarithm weights.
The existing mathlib Chebyshev bound and Abel identity are the only prime
distribution results used.  All logarithms below are natural logarithms.
-/

set_option autoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 1600000

open Real MeasureTheory Set

namespace B699ElementaryCount

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

/-- A small, exhaustive natural-number base case. No native evaluation. -/
theorem primes_le_128 : Nat.primesLE 128 =
    ({2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47,
      53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107,
      109, 113, 127} : Finset ℕ) := by
  decide

theorem primeCounting_128 : Nat.primeCounting 128 = 31 := by
  rw [← Nat.primesLE_card_eq_primeCounting, primes_le_128]
  decide

/-- Replaces the weighted-log sum by a single exact integer inequality. -/
theorem primorial_128_lower : 2 ^ 145 ≤ Nat.primorial 128 := by
  decide

theorem theta_128_lower : (145 : ℝ) * log 2 ≤ Chebyshev.theta 128 := by
  have hp : (2 : ℝ) ^ 145 ≤ (Nat.primorial 128 : ℝ) := by
    exact_mod_cast primorial_128_lower
  have hlog := Real.log_le_log (by positivity : (0 : ℝ) < 2 ^ 145) hp
  rw [Real.log_pow] at hlog
  simpa [Chebyshev.theta_eq_log_primorial] using hlog

noncomputable def correction (x : ℝ) : ℝ :=
  (3 / 2) * log 4 * x / (log x * (log x - 3 / 2))

noncomputable def correctionDeriv (x : ℝ) : ℝ :=
  (3 / 2) * log 4 *
    (log x * (log x - 3 / 2) - (2 * log x - 3 / 2)) /
      (log x ^ 2 * (log x - 3 / 2) ^ 2)

noncomputable def thetaIntegrand (x : ℝ) : ℝ :=
  Chebyshev.theta x / (x * log x ^ 2)

theorem base_remainder_le :
    (Nat.primeCounting 128 : ℝ) - Chebyshev.theta 128 / log 128 ≤ 72 / 7 := by
  have hl : 0 < log (128 : ℝ) := Real.log_pos (by norm_num)
  have h := div_le_div_of_nonneg_right theta_128_lower hl.le
  have heq : (145 : ℝ) * log 2 / log 128 = 145 / 7 := by
    rw [log_128]
    have h2 : log (2 : ℝ) ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
    field_simp [h2]
  rw [heq] at h
  rw [primeCounting_128]
  norm_num at *
  linarith

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
  convert hd using 1
  unfold correctionDeriv
  field_simp [h0, hl, ha]
  <;> ring

theorem correctionDeriv_lower {x : ℝ} (hx : 128 ≤ x) :
    log 4 / log x ^ 2 ≤ correctionDeriv x := by
  have hlp : 0 < log x := by linarith [log_lower hx]
  have hap := denominator_pos hx
  have hl : log x ≠ 0 := ne_of_gt hlp
  have ha : log x - 3 / 2 ≠ 0 := ne_of_gt hap
  have hc : 0 < log (4 : ℝ) := Real.log_pos (by norm_num)
  have hz : 0 ≤ log x - 9 / 2 := by linarith [log_lower hx]
  have heq : correctionDeriv x - log 4 / log x ^ 2 =
      log 4 * log x * (log x - 9 / 2) /
        (2 * log x ^ 2 * (log x - 3 / 2) ^ 2) := by
    unfold correctionDeriv
    field_simp [hl, ha]
    <;> ring
  have hn : 0 ≤ correctionDeriv x - log 4 / log x ^ 2 := by
    rw [heq]
    positivity
  linarith

theorem thetaIntegrand_le {x : ℝ} (hx : 128 ≤ x) :
    thetaIntegrand x ≤ correctionDeriv x := by
  have hxp : 0 < x := by linarith
  have hlp : 0 < log x := by linarith [log_lower hx]
  have hθ := Chebyshev.theta_le_log4_mul_x hxp.le
  have hdiv := div_le_div_of_nonneg_right hθ
    (by positivity : (0 : ℝ) ≤ x * log x ^ 2)
  have heq : log 4 * x / (x * log x ^ 2) = log 4 / log x ^ 2 := by
    field_simp [ne_of_gt hxp, ne_of_gt hlp]
  unfold thetaIntegrand
  rw [heq] at hdiv
  exact hdiv.trans (correctionDeriv_lower hx)

theorem thetaIntegrand_intervalIntegrable {a b : ℝ} (ha : 2 ≤ a) (hab : a ≤ b) :
    IntervalIntegrable thetaIntegrand volume a b := by
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le hab).2
  exact (Chebyshev.integrableOn_theta_div_id_mul_log_sq b).mono_set
    (fun _ ht => ⟨ha.trans ht.1, ht.2⟩)

theorem correctionDeriv_intervalIntegrable {x : ℝ} (hx : 128 ≤ x) :
    IntervalIntegrable correctionDeriv volume 128 x := by
  apply ContinuousOn.intervalIntegrable
  intro t ht
  have ht' : 128 ≤ t := by
    rw [Set.uIcc_of_le hx] at ht
    exact ht.1
  have h0 : t ≠ 0 := by linarith
  have hl : log t ≠ 0 := ne_of_gt (by linarith [log_lower ht'])
  have ha : log t - 3 / 2 ≠ 0 := ne_of_gt (denominator_pos ht')
  apply ContinuousAt.continuousWithinAt
  unfold correctionDeriv
  fun_prop

theorem integral_thetaIntegrand_le {x : ℝ} (hx : 128 ≤ x) :
    (∫ t in (128 : ℝ)..x, thetaIntegrand t) ≤ correction x - correction 128 := by
  have hθ := thetaIntegrand_intervalIntegrable (by norm_num : (2 : ℝ) ≤ 128) hx
  have hG := correctionDeriv_intervalIntegrable hx
  have hmono := intervalIntegral.integral_mono_on hx hθ hG
    (fun t ht => thetaIntegrand_le ht.1)
  have hFTC : (∫ t in (128 : ℝ)..x, correctionDeriv t) =
      correction x - correction 128 := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt _ hG
    intro t ht
    rw [Set.uIcc_of_le hx] at ht
    exact hasDerivAt_correction ht.1
  exact hmono.trans_eq hFTC

/-- EC, on the exact real domain and using mathlib's inclusive natural prime count.
Candidate only: this producing session had no runnable Lean toolchain. -/
theorem elementary_primeCounting_bound {x : ℝ} (hx : 128 ≤ x) :
    (Nat.primeCounting ⌊x⌋₊ : ℝ) ≤ log 4 * x / (log x - 3 / 2) := by
  have hxp : 0 < x := by linarith
  have hlp : 0 < log x := by linarith [log_lower hx]
  have hap := denominator_pos hx
  have hA := Chebyshev.primeCounting_eq_theta_div_log_add_integral
    (show (2 : ℝ) ≤ x by linarith)
  have hB := Chebyshev.primeCounting_eq_theta_div_log_add_integral
    (show (2 : ℝ) ≤ 128 by norm_num)
  have hjoin := intervalIntegral.integral_add_adjacent_intervals
    (thetaIntegrand_intervalIntegrable (by norm_num : (2 : ℝ) ≤ 2)
      (by norm_num : (2 : ℝ) ≤ 128))
    (thetaIntegrand_intervalIntegrable (by norm_num : (2 : ℝ) ≤ 128) hx)
  change (Nat.primeCounting ⌊x⌋₊ : ℝ) = Chebyshev.theta x / log x +
    ∫ t in (2 : ℝ)..x, thetaIntegrand t at hA
  have hB' : (Nat.primeCounting 128 : ℝ) = Chebyshev.theta 128 / log 128 +
      ∫ t in (2 : ℝ)..128, thetaIntegrand t := by
    simpa [thetaIntegrand] using hB
  have hθ := div_le_div_of_nonneg_right
    (Chebyshev.theta_le_log4_mul_x hxp.le) hlp.le
  have hi := integral_thetaIntegrand_le hx
  have hb := base_remainder_le.trans correction_128_ge
  have heq : log 4 * x / log x + correction x =
      log 4 * x / (log x - 3 / 2) := by
    unfold correction
    field_simp [ne_of_gt hlp, ne_of_gt hap]
    <;> ring
  rw [← heq]
  linarith

end B699ElementaryCount

-- An independently written consumer type locks the requested quantifiers,
-- inclusive prime count, natural floor, real cast, and denominator.
example : ∀ x : ℝ, 128 ≤ x →
    (Nat.primeCounting (Nat.floor x) : ℝ) ≤
      Real.log 4 * x / (Real.log x - (3 : ℝ) / 2) := by
  intro x hx
  exact B699ElementaryCount.elementary_primeCounting_bound hx

-- These are executable checks, not statements that they have already run.
set_option pp.universes true in
#check @B699ElementaryCount.elementary_primeCounting_bound
#print axioms B699ElementaryCount.elementary_primeCounting_bound
#print axioms B699ElementaryCount.primeCounting_128
#print axioms B699ElementaryCount.primorial_128_lower
#print axioms B699ElementaryCount.denominator_pos
