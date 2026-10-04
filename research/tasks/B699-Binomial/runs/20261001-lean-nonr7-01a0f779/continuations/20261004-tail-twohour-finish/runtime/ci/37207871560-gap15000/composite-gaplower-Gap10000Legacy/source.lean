import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioForward
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.Tail10000Legacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailNinety20261004

theorem gap_10000_initial {y : Nat} (hlo : 20482069 ≤ y) (hhi : y < 40956329) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  tail_chain_10000.near_after hlo hhi

end B699TailNinety20261004
#print axioms B699TailNinety20261004.gap_10000_initial
