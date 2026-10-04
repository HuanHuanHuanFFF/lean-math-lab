import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinishVerify20261004

theorem theta_initial_exact (y : Nat) (hlo : 10000000 ≤ y) (hhi : y < 122568684) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699TailFinish20261004.FullInitial.theta_initial hlo hhi

end B699TailFinishVerify20261004
#print B699TailFinishVerify20261004.theta_initial_exact
#print axioms B699TailFinishVerify20261004.theta_initial_exact
