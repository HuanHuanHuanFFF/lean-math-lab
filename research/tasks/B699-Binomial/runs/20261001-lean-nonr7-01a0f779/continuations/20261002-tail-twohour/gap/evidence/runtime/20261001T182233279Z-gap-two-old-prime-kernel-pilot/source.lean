module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.FiniteSupply
public import Mathlib.Tactic.NormNum.Prime

/-! Bounded cost probe from the unchanged old 20M chain, End512Primorial.tail31.
Only the two final given nodes are tested. No new prime search or full chain
coverage is asserted by this pilot. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 1000000

@[expose] public section
namespace B699TailSparse

theorem prime_before_terminal : Nat.Prime 19999909 := by norm_num
theorem prime_terminal : Nat.Prime 20000093 := by norm_num

theorem common_last_old_chain_interval {n i j : Nat}
    (hnlo : 19999909 ≤ n) (hnhi : n ≤ 20000000)
    (hi : 4883 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  exact B699TailGap.common_of_top_prime hij hjn prime_before_terminal (by omega) hnlo

end B699TailSparse

#print axioms B699TailSparse.prime_before_terminal
#print axioms B699TailSparse.prime_terminal
#print axioms B699TailSparse.common_last_old_chain_interval
