import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaTail
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy

/-! Candidate for the next verification unit, excluded from this round's
second CI specification.  Both uniform analytical inputs remain parameters. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinish20261004.ThetaBridge

theorem gap_from_two_uniform_theta
    (hupper : ∀ x : ℝ, 0 < x →
      Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    B699TailGap.Gap 4095 10000000 :=
  B699ThetaSupply.gap_4095_of_theta_estimates_and_initial_segment hupper hlower
    (fun y hylo hyhi => B699TailFinish20261004.FullInitial.theta_initial hylo hyhi)

theorem original_tail_from_two_uniform_theta
    (hupper : ∀ x : ℝ, 0 < x →
      Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699FiniteFull20261002.original_tail_of_gap
    (gap_from_two_uniform_theta hupper hlower)

end B699TailFinish20261004.ThetaBridge
#print axioms B699TailFinish20261004.ThetaBridge.gap_from_two_uniform_theta
#print axioms B699TailFinish20261004.ThetaBridge.original_tail_from_two_uniform_theta
