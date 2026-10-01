import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.ChainAdapter
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.Complete

/-! Candidate binding of the actual old chain. This source is not accepted merely
because the historical theorem has a paper/old Lean acceptance record. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailGap

theorem actual_finite_top_supply : FiniteTopSupply 4883 20000000 :=
  finite_top_supply_of_positive_chain B699MiddleExtension.twenty_million_prime_chain

theorem original_tail_of_height_and_gap
    (hheight : CounterexampleHeight 4883 4096) (hgap : Gap 4095 10000000) :
    ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  original_tail_of_prime_supplies hheight hgap actual_finite_top_supply

end B699TailGap

#print axioms B699TailGap.actual_finite_top_supply
#print axioms B699TailGap.original_tail_of_height_and_gap
