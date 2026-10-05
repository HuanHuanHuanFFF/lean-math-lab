import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.LowerChain
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.UpperChain
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.Gap15000Legacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinish20261004.FullInitial
theorem theta_initial {y : Nat} (hlo : 10000000 ≤ y) (hhi : y < 122568684) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  by_cases hlower : y < 19995885
  · exact lower_gap hlo hlower
  · by_cases hmiddle : y < 61439401
    · exact B699TailFinish20261004.gap_15000_extended_initial (by omega) hmiddle
    · exact upper_gap (by omega) (by omega)
end B699TailFinish20261004.FullInitial
#print axioms B699TailFinish20261004.FullInitial.theta_initial
