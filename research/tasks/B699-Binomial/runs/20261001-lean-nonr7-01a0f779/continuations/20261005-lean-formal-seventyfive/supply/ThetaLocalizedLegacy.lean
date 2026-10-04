import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaTail
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy

/-! Localize the already established conditional theta argument to the real
domain it actually uses.  No uniform analytical estimate is proved here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699ThetaLocalized20261005

theorem gap_above_theta_threshold
    (hupper : ∀ x : ℝ, 122568683 < x →
      Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    B699TailGap.Gap 4095 122568684 := by
  intro y hy
  have hyR : (122568684 : ℝ) ≤ (y : ℝ) := by exact_mod_cast hy
  have hy0 : (0 : ℝ) < (y : ℝ) := by linarith
  have hyT : (122568683 : ℝ) < (y : ℝ) := by linarith
  have hz : (122568683 : ℝ) < (y : ℝ) + (y : ℝ) / 4095 := by
    have hdiv : (0 : ℝ) ≤ (y : ℝ) / 4095 := div_nonneg hy0.le (by norm_num)
    linarith
  have hu : Chebyshev.theta (y : ℝ) ≤ (1 + 1 / 36260 : ℝ) * (y : ℝ) := by
    have := hupper y hyT
    linarith
  have hl := B699ThetaSupply.theta_lower_of_log_error hz (hlower _ hz)
  obtain ⟨p, hp, hyp, hshort⟩ := B699ThetaSupply.prime_of_theta_relative_bounds
    (D := (4095 : ℝ)) (u := (1 / 36260 : ℝ)) (l := (1 / 6000 : ℝ))
    (by norm_num) hy0 hu hl B699ThetaSupply.coefficient_4095_asymmetric
  have hypN : y < p := by exact_mod_cast hyp
  refine ⟨p, hp, hypN, ?_⟩
  have hcast : ((4095 * (p - y) : ℕ) : ℝ) ≤ (y : ℝ) := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_sub hypN.le] using hshort
  exact_mod_cast hcast

theorem gap_from_two_local_uniform_theta
    (hupper : ∀ x : ℝ, 122568683 < x →
      Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    B699TailGap.Gap 4095 10000000 := by
  intro y hy
  by_cases htail : 122568684 ≤ y
  · exact gap_above_theta_threshold hupper hlower y htail
  · exact B699TailFinish20261004.FullInitial.theta_initial hy (lt_of_not_ge htail)

theorem original_tail_from_two_local_uniform_theta
    (hupper : ∀ x : ℝ, 122568683 < x →
      Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699FiniteFull20261002.original_tail_of_gap
    (gap_from_two_local_uniform_theta hupper hlower)

end B699ThetaLocalized20261005
#print axioms B699ThetaLocalized20261005.gap_above_theta_threshold
#print axioms B699ThetaLocalized20261005.gap_from_two_local_uniform_theta
#print axioms B699ThetaLocalized20261005.original_tail_from_two_local_uniform_theta
