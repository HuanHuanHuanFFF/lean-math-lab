module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-full-onehour».finite.FiniteSupplyOnly

/-! Independent literal full-finite target. No height or infinite Gap import. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteFullSemantic

theorem full_chain_exact : B699Finite20261002.PrimeChain 4883 2 20000093 :=
  B699FiniteFull20261002.complete_chain

theorem full_finite_prime_supply_exact :
    ∀ n : Nat, 2 ≤ n → n ≤ 20000000 →
      ∃ p : Nat, p.Prime ∧ p ≤ n ∧ n < p + 4883 :=
  B699FiniteFull20261002.finite_supply

theorem full_finite_original_exact :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 → n ≤ 20000000 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hi hij hjn hn
  exact B699FiniteFull20261002.finite_common hi hij hjn hn

end B699FiniteFullSemantic
#print B699FiniteFullSemantic.full_chain_exact
#print B699FiniteFullSemantic.full_finite_prime_supply_exact
#print B699FiniteFullSemantic.full_finite_original_exact
#print axioms B699FiniteFull20261002.complete_chain
#print axioms B699FiniteFull20261002.finite_supply
#print axioms B699FiniteFull20261002.finite_common
#print axioms B699FiniteFullSemantic.full_chain_exact
#print axioms B699FiniteFullSemantic.full_finite_prime_supply_exact
#print axioms B699FiniteFullSemantic.full_finite_original_exact
