module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioCore
public import Mathlib.Tactic.NormNum.Prime
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699TailFinish20261004.FullInitial
theorem seed_prime : Nat.Prime 10000019 := by norm_num
theorem seed_gap_initial {y : Nat} (hlo : 10000000 ≤ y) (hhi : y < 10000019) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  exact ⟨10000019, seed_prime, hhi, by omega⟩
end B699TailFinish20261004.FullInitial
#print axioms B699TailFinish20261004.FullInitial.seed_prime
#print axioms B699TailFinish20261004.FullInitial.seed_gap_initial
