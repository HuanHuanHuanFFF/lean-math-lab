import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.Gap15000Legacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinishVerify20261004

theorem gap_15000_initial_exact (y : Nat) (hlo : 20482069 ≤ y) (hhi : y < 61439401) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699TailFinish20261004.gap_15000_initial hlo hhi

theorem gap_15000_extended_initial_exact (y : Nat)
    (hlo : 19995885 ≤ y) (hhi : y < 61439401) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699TailFinish20261004.gap_15000_extended_initial hlo hhi

end B699TailFinishVerify20261004
#print B699TailFinishVerify20261004.gap_15000_initial_exact
#print axioms B699TailFinishVerify20261004.gap_15000_initial_exact
#print B699TailFinishVerify20261004.gap_15000_extended_initial_exact
#print axioms B699TailFinishVerify20261004.gap_15000_extended_initial_exact
