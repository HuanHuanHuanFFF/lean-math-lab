import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.FiniteSupply
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailGap

theorem finite_top_supply_of_positive_chain
    (hchain : B699MiddleIndex.PrimeChain 184 2 20000093) :
    FiniteTopSupply 4883 20000000 := by
  intro n hnlo hnhi
  obtain ⟨p, hp, hpn, hnear⟩ := hchain.near_top hnlo (by omega)
  exact ⟨p, hp, hpn, by omega⟩

theorem original_tail_of_positive_chain
    (hheight : CounterexampleHeight 4883 4096)
    (hgap : Gap 4095 10000000)
    (hchain : B699MiddleIndex.PrimeChain 184 2 20000093) :
    ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  original_tail_of_prime_supplies hheight hgap
    (finite_top_supply_of_positive_chain hchain)

end B699TailGap

#print axioms B699TailGap.finite_top_supply_of_positive_chain
#print axioms B699TailGap.original_tail_of_positive_chain
