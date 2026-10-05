import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerFiniteBridge
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699LocalPowerOriginal20261005

theorem gap_of_finite_psi_and_budget
    (hfinite : B699LocalPowerRound220261005.FinitePsiSupply)
    (hbudget : B699LocalPowerRound220261005.DifferenceBudget) :
    B699TailGap.Gap 4095 10000000 :=
  B699LocalPowerRound220261005.gap_from_supplies hfinite hbudget
    (fun y hlo hhi => B699TailFinish20261004.FullInitial.theta_initial hlo hhi)

theorem original_tail_of_finite_psi_and_budget
    (hfinite : B699LocalPowerRound220261005.FinitePsiSupply)
    (hbudget : B699LocalPowerRound220261005.DifferenceBudget) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699FiniteFull20261002.original_tail_of_gap (gap_of_finite_psi_and_budget hfinite hbudget)

theorem gap_of_finite_middle_and_budget
    (hmid : B699LocalPowerBridge20261005.FiniteMiddleGap)
    (hbudget : B699LocalPowerRound220261005.DifferenceBudget) :
    B699TailGap.Gap 4095 10000000 :=
  B699LocalPowerBridge20261005.gap_of_middle_and_budget hmid hbudget
    (fun y hlo hhi => B699TailFinish20261004.FullInitial.theta_initial hlo hhi)

theorem original_tail_of_finite_middle_and_budget
    (hmid : B699LocalPowerBridge20261005.FiniteMiddleGap)
    (hbudget : B699LocalPowerRound220261005.DifferenceBudget) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699FiniteFull20261002.original_tail_of_gap (gap_of_finite_middle_and_budget hmid hbudget)

end B699LocalPowerOriginal20261005
#print axioms B699LocalPowerOriginal20261005.gap_of_finite_psi_and_budget
#print axioms B699LocalPowerOriginal20261005.original_tail_of_finite_psi_and_budget
#print axioms B699LocalPowerOriginal20261005.gap_of_finite_middle_and_budget
#print axioms B699LocalPowerOriginal20261005.original_tail_of_finite_middle_and_budget
