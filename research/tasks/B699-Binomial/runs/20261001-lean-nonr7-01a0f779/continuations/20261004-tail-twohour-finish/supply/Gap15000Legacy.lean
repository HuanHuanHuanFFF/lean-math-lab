import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-until2020».supply.Tail15000Legacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.GapLowerLegacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinish20261004

theorem gap_15000_initial {y : Nat} (hlo : 20482069 ≤ y) (hhi : y < 61439401) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699TailNinety20261004.RatioPrimeChain.near_after
    B699TailUntil202020261004.tail_chain_15000 hlo hhi

theorem gap_15000_extended_initial {y : Nat}
    (hlo : 19995885 ≤ y) (hhi : y < 61439401) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  by_cases hfixed : y < 20482069
  · exact gap_fixed_initial hlo hfixed
  · exact gap_15000_initial (by omega) hhi

end B699TailFinish20261004
#print axioms B699TailFinish20261004.gap_15000_initial
#print axioms B699TailFinish20261004.gap_15000_extended_initial
