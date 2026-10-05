import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerCore
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699LocalPowerAdopted20261005

theorem gap_from_local_power_and_psi
    (hlocal : B699UniformGapPaper20261005.LocalPowerIncrement)
    (hpsi : B699UniformGapPaper20261005.PsiSupply) :
    B699TailGap.Gap 4095 10000000 :=
  B699UniformGapPaper20261005.gap_10M_of_supplies_and_initial hlocal hpsi
    (fun y hylo hyhi => B699TailFinish20261004.FullInitial.theta_initial hylo hyhi)

theorem original_tail_from_local_power_and_psi
    (hlocal : B699UniformGapPaper20261005.LocalPowerIncrement)
    (hpsi : B699UniformGapPaper20261005.PsiSupply) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699FiniteFull20261002.original_tail_of_gap (gap_from_local_power_and_psi hlocal hpsi)

end B699LocalPowerAdopted20261005
#print axioms B699LocalPowerAdopted20261005.gap_from_local_power_and_psi
#print axioms B699LocalPowerAdopted20261005.original_tail_from_local_power_and_psi
