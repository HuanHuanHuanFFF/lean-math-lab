import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.ECBase
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.SlimChebyshev
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
# Elementary prime-counting estimate (EC)

Current-round candidate for the complete real domain 128 ≤ x, formalizing
section 2 of the fixed prime-optimization report. The derivative subproofs
reuse the accepted ECAnalytic implementation; the theta/Abel dependency is
reproved in SlimChebyshev from fixed Mathlib source to bound memory use.
The finite base is checked by kernel `decide`, with no native evaluation.
Current acceptance and all remaining B699 gaps are recorded in REPORT.md.
-/

set_option autoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 1600000

open Real MeasureTheory Set

namespace B699TailCount

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
      109, 113, 127} : Finset ℕ) := B699TailECBase.primes_le_128

theorem primeCounting_128 : Nat.primeCounting 128 = 31 := B699TailECBase.primeCounting_128

/-- Replaces the weighted-log sum by a single exact integer inequality. -/
theorem primorial_128_lower : 2 ^ 145 ≤ primorial 128 := B699TailECBase.primorial_128_lower

theorem theta_128_lower : (145 : ℝ) * log 2 ≤ B699SlimChebyshev.theta 128 := by
  have hp : (2 : ℝ) ^ 145 ≤ (primorial 128 : ℝ) := by
    exact_mod_cast primorial_128_lower
  have hlog := Real.log_le_log (by positivity : (0 : ℝ) < 2 ^ 145) hp
  rw [Real.log_pow] at hlog
  simpa [B699SlimChebyshev.theta_eq_log_primorial] using hlog

noncomputable def correction (x : ℝ) : ℝ :=
  (3 / 2) * log 4 * x / (log x * (log x - 3 / 2))

noncomputable def correctionDeriv (x : ℝ) : ℝ :=
  (3 / 2) * log 4 *
    (log x * (log x - 3 / 2) - (2 * log x - 3 / 2)) /
      (log x ^ 2 * (log x - 3 / 2) ^ 2)

noncomputable def thetaIntegrand (x : ℝ) : ℝ :=
  B699SlimChebyshev.theta x / (x * log x ^ 2)

theorem base_remainder_le :
    (Nat.primeCounting 128 : ℝ) - B699SlimChebyshev.theta 128 / log 128 ≤ 72 / 7 := by
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


theorem thetaIntegrand_le {x : ℝ} (hx : 128 ≤ x) :
    thetaIntegrand x ≤ correctionDeriv x := by
  have hxp : 0 < x := by linarith
  have hlp : 0 < log x := by linarith [log_lower hx]
  have hθ := B699SlimChebyshev.theta_le_log4_mul_x hxp.le
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
  exact (B699SlimChebyshev.integrableOn_theta_div_id_mul_log_sq b).mono_set
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
  have hd : log t ^ 2 * (log t - 3 / 2) ^ 2 ≠ 0 :=
    mul_ne_zero (pow_ne_zero 2 hl) (pow_ne_zero 2 ha)
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
Acceptance is recorded in this current run. -/
theorem elementary_primeCounting_bound {x : ℝ} (hx : 128 ≤ x) :
    (Nat.primeCounting ⌊x⌋₊ : ℝ) ≤ log 4 * x / (log x - 3 / 2) := by
  have hxp : 0 < x := by linarith
  have hlp : 0 < log x := by linarith [log_lower hx]
  have hap := denominator_pos hx
  have hA := B699SlimChebyshev.primeCounting_eq_theta_div_log_add_integral
    (show (2 : ℝ) ≤ x by linarith)
  have hB := B699SlimChebyshev.primeCounting_eq_theta_div_log_add_integral
    (show (2 : ℝ) ≤ 128 by norm_num)
  have hjoin := intervalIntegral.integral_add_adjacent_intervals
    (thetaIntegrand_intervalIntegrable (by norm_num : (2 : ℝ) ≤ 2)
      (by norm_num : (2 : ℝ) ≤ 128))
    (thetaIntegrand_intervalIntegrable (by norm_num : (2 : ℝ) ≤ 128) hx)
  change (Nat.primeCounting ⌊x⌋₊ : ℝ) = B699SlimChebyshev.theta x / log x +
    ∫ t in (2 : ℝ)..x, thetaIntegrand t at hA
  have hB' : (Nat.primeCounting 128 : ℝ) = B699SlimChebyshev.theta 128 / log 128 +
      ∫ t in (2 : ℝ)..128, thetaIntegrand t := by
    simpa [thetaIntegrand] using hB
  have hθ := div_le_div_of_nonneg_right
    (B699SlimChebyshev.theta_le_log4_mul_x hxp.le) hlp.le
  have hi := integral_thetaIntegrand_le hx
  have hb := base_remainder_le.trans correction_128_ge
  have heq : log 4 * x / log x + correction x =
      log 4 * x / (log x - 3 / 2) := by
    unfold correction
    generalize (3 / 2 : ℝ) = a at *
    field_simp [ne_of_gt hlp, ne_of_gt hap]
    <;> ring
  rw [← heq]
  linarith

end B699TailCount

-- An independently written consumer type locks the requested quantifiers,
-- inclusive prime count, natural floor, real cast, and denominator.
example : ∀ x : ℝ, 128 ≤ x →
    (Nat.primeCounting (Nat.floor x) : ℝ) ≤
      Real.log 4 * x / (Real.log x - (3 : ℝ) / 2) := by
  intro x hx
  exact B699TailCount.elementary_primeCounting_bound hx

-- These are executable checks, not statements that they have already run.
set_option pp.universes true in
#check @B699TailCount.elementary_primeCounting_bound
#print axioms B699TailCount.elementary_primeCounting_bound
#print axioms B699TailCount.primeCounting_128
#print axioms B699TailCount.primorial_128_lower
#print axioms B699TailCount.denominator_pos




