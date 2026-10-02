module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-retry-onehour».finite.generated.CompleteChain
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.FiniteSupply
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteRetry20261002

theorem finite_supply : B699TailGap.FiniteTopSupply 4883 20000000 := by
  intro n hnlo hnhi
  exact complete_chain.near_top (n := n) hnlo (by omega)

theorem finite_common {n i j : Nat} (hi : 4883 ≤ i) (hij : i < j)
    (hjn : j ≤ n / 2) (hn : n ≤ 20000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailGap.common_of_finite_top_supply hi hij hjn hn finite_supply

end B699FiniteRetry20261002
#print axioms B699FiniteRetry20261002.finite_supply
#print axioms B699FiniteRetry20261002.finite_common
