import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FixedForward
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.Gap10000Legacy

/-! Zero new primes.  This is only a finite Gap interval; the final prime
endpoint is excluded.  The old fixed chain begins at 2, not at ten million. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinish20261004

theorem gap_fixed_initial {y : Nat} (hlo : 19995885 ≤ y) (hhi : y < 20482069) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  have hchain := B699Finite20261002.PrimeChain.trans
    B699FiniteFull20261002.complete_chain B699TailExtension20261004.tail_chain_5000
  exact fixed_chain_scaled_gap (D := 4095) hchain (by omega) hhi (by omega)

theorem gap_10000_extended_initial {y : Nat}
    (hlo : 19995885 ≤ y) (hhi : y < 40956329) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  by_cases hfixed : y < 20482069
  · exact gap_fixed_initial hlo hfixed
  · exact B699TailNinety20261004.gap_10000_initial (by omega) hhi

end B699TailFinish20261004
#print axioms B699TailFinish20261004.gap_fixed_initial
#print axioms B699TailFinish20261004.gap_10000_extended_initial
