module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-full-onehour».finite.FiniteSupplyOnly
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-full-onehour».finite.ChainTerminal
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.FiniteSupply
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ActualUniformConsumers
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteFull20261002

theorem original_tail_of_gap (hgap : B699TailGap.Gap 4095 10000000) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  apply B699TailGap.original_tail_of_prime_supplies ?_ hgap finite_supply
  intro n i j hi hij hjn hno
  exact B699ActualUniform.counterexample_height_4883 hi hij hjn hno

theorem common_indices_4883_4884 {n i j : Nat} (hi : 4883 ≤ i) (hiu : i ≤ 4884)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hlarge : 4096 * i ≤ n
  · exact B699ActualUniform.common_of_ratio_4096 (by omega) hij hjn hlarge
  · by_cases hterminal : n < 20000093
    · obtain ⟨p, hp, hpn, hnear⟩ := complete_chain.near_top (n := n) (by omega) hterminal
      exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
    · have hp : Nat.Prime 20000093 := chain_last_prime complete_chain
      exact B699TailGap.common_of_top_prime hij hjn hp (by omega) (by omega)

end B699FiniteFull20261002
#print axioms B699FiniteFull20261002.original_tail_of_gap
#print axioms B699FiniteFull20261002.common_indices_4883_4884
