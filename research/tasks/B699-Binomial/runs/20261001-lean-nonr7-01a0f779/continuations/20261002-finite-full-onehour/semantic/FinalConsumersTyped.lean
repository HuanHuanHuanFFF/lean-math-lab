module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-full-onehour».finite.FiniteConsumer

/-! Two independent original targets: one retains only the exact unbounded Gap
input; the complete 4883..4884 target has no mathematical supplier hypothesis. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteFullSemantic

theorem all_tail_only_gap_exact
    (gap : ∀ y : Nat, 10000000 ≤ y → ∃ p : Nat,
      p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699FiniteFull20261002.original_tail_of_gap gap

theorem complete_indices_4883_4884_exact :
    ∀ n i j : Nat, 4883 ≤ i → i ≤ 4884 → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hi hiUpper hij hjn
  exact B699FiniteFull20261002.common_indices_4883_4884 hi hiUpper hij hjn

end B699FiniteFullSemantic
#print B699FiniteFullSemantic.all_tail_only_gap_exact
#print B699FiniteFullSemantic.complete_indices_4883_4884_exact
#print axioms B699FiniteFull20261002.original_tail_of_gap
#print axioms B699FiniteFull20261002.common_indices_4883_4884
#print axioms B699FiniteFullSemantic.all_tail_only_gap_exact
#print axioms B699FiniteFullSemantic.complete_indices_4883_4884_exact
