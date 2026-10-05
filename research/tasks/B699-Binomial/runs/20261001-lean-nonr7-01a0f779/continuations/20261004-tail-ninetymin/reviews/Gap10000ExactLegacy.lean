import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.Gap10000Legacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailNinetyVerify20261004

theorem gap_10000_initial_exact (y : Nat) (hlo : 20482069 ≤ y) (hhi : y < 40956329) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699TailNinety20261004.gap_10000_initial hlo hhi

end B699TailNinetyVerify20261004

#print B699TailNinetyVerify20261004.gap_10000_initial_exact
#print axioms B699TailNinetyVerify20261004.gap_10000_initial_exact
