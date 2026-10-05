import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.UpperChain

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinishVerify20261004

theorem full_upper_gap_exact (y : Nat) (hlo : 61439401 ≤ y) (hhi : y < 122879557) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699TailFinish20261004.FullInitial.upper_gap hlo hhi

end B699TailFinishVerify20261004
#print B699TailFinishVerify20261004.full_upper_gap_exact
#print axioms B699TailFinishVerify20261004.full_upper_gap_exact
