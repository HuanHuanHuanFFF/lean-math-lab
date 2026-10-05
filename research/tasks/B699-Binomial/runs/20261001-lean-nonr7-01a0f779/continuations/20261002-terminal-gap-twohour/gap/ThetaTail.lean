module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaInterval
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions
public import Mathlib.Analysis.Complex.ExponentialBounds
public import Lean.Elab.Tactic.NormCast

/-!
An explicit unbounded consumer of two analytical estimates from Dusart 2010:
Proposition 5.1 (upper theta error) and Theorem 5.2, row k=2, eta=0.05,
x_k=122568683 (lower theta error). Both estimates remain explicit parameters.
This file proves their numerical and prime-extraction consequences, NOT the
two analytical estimates, and NOT an unconditional Gap(4095, 10^7).
The integer cutoff is one above x_k, so either printed endpoint convention is safe.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section

namespace B699ThetaSupply

theorem log_gt_eighteen {x : ℝ} (hx : 122568683 < x) :
    (18 : ℝ) < Real.log x := by
  have hpower : (2 : ℝ) ^ 26 ≤ x := by norm_num at *; linarith
  have hlog := Real.log_le_log (by norm_num : (0 : ℝ) < 2 ^ 26) hpower
  rw [Real.log_pow] at hlog
  norm_num only at hlog
  linarith [Real.log_two_gt_d9]

theorem theta_lower_of_log_error {x : ℝ} (hx : 122568683 < x)
    (herr : x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    (1 - 1 / 6000 : ℝ) * x ≤ Chebyshev.theta x := by
  have hx0 : 0 ≤ x := by linarith
  have hlog := log_gt_eighteen hx
  have hden : (6000 : ℝ) < 20 * (Real.log x) ^ 2 := by
    nlinarith [sq_nonneg (Real.log x - 18)]
  have hquot : x / (20 * (Real.log x) ^ 2) ≤ x / 6000 :=
    div_le_div_of_nonneg_left hx0 (by norm_num) hden.le
  linarith [le_trans herr hquot]

/-- The analytical input is explicit and unbounded in `x`.
No claim is made here that either input has been supplied in Lean. -/
theorem gap_4095_above_theta_threshold
    (hupper : ∀ x : ℝ, 0 < x →
      Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    B699TailGap.Gap 4095 122568684 := by
  intro y hy
  have hyR : (122568684 : ℝ) ≤ (y : ℝ) := by exact_mod_cast hy
  have hy0 : (0 : ℝ) < (y : ℝ) := by linarith
  have hz : (122568683 : ℝ) < (y : ℝ) + (y : ℝ) / 4095 := by
    have hdiv : (0 : ℝ) ≤ (y : ℝ) / 4095 := div_nonneg hy0.le (by norm_num)
    linarith
  have hu : Chebyshev.theta (y : ℝ) ≤ (1 + 1 / 36260 : ℝ) * (y : ℝ) := by
    have := hupper y hy0
    linarith
  have hl := theta_lower_of_log_error hz (hlower _ hz)
  obtain ⟨p, hp, hyp, hshort⟩ := prime_of_theta_relative_bounds
    (D := (4095 : ℝ)) (u := (1 / 36260 : ℝ)) (l := (1 / 6000 : ℝ))
    (by norm_num) hy0 hu hl coefficient_4095_asymmetric
  have hypN : y < p := by exact_mod_cast hyp
  refine ⟨p, hp, hypN, ?_⟩
  have hcast : ((4095 * (p - y) : ℕ) : ℝ) ≤ (y : ℝ) := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_sub hypN.le] using hshort
  exact_mod_cast hcast

/-- The remaining initial segment is an actual prime-gap obligation in y,
not the already established finite original-binomial theorem in n. -/
theorem gap_4095_of_theta_estimates_and_initial_segment
    (hupper : ∀ x : ℝ, 0 < x →
      Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2))
    (hinitial : ∀ y : ℕ, 10000000 ≤ y → y < 122568684 →
      ∃ p : ℕ, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y) :
    B699TailGap.Gap 4095 10000000 := by
  intro y hy
  by_cases htail : 122568684 ≤ y
  · exact gap_4095_above_theta_threshold hupper hlower y htail
  · exact hinitial y hy (lt_of_not_ge htail)

end B699ThetaSupply

#print axioms B699ThetaSupply.log_gt_eighteen
#print axioms B699ThetaSupply.theta_lower_of_log_error
#print axioms B699ThetaSupply.gap_4095_above_theta_threshold
#print axioms B699ThetaSupply.gap_4095_of_theta_estimates_and_initial_segment
