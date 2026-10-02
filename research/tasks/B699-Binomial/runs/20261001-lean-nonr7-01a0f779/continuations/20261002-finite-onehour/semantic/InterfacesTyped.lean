module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.FiniteSupply

/-! Independently written literal statements retaining each supplier. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteSemantic

theorem gap_exact (D Y : Nat) :
    B699TailGap.Gap D Y ↔
      ∀ y : Nat, Y ≤ y → ∃ p : Nat, p.Prime ∧ y < p ∧ D * (p - y) ≤ y := Iff.rfl

theorem finite_supply_exact (gap upper : Nat) :
    B699TailGap.FiniteTopSupply gap upper ↔
      ∀ n : Nat, 2 ≤ n → n ≤ upper →
        ∃ p : Nat, p.Prime ∧ p ≤ n ∧ n < p + gap := Iff.rfl

theorem original_inputs_exact
    (height : ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ¬ (∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) → n < 4096 * i)
    (gap : ∀ y : Nat, 10000000 ≤ y → ∃ p : Nat,
      p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y)
    (finite : ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 → n ≤ 20000000 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailGap.original_tail_of_inputs height gap finite

end B699FiniteSemantic
#print B699FiniteSemantic.original_inputs_exact
#print axioms B699FiniteSemantic.gap_exact
#print axioms B699FiniteSemantic.finite_supply_exact
#print axioms B699FiniteSemantic.original_inputs_exact
