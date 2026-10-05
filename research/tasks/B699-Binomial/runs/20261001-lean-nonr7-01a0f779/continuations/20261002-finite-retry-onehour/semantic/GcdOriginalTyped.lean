module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.GcdPilotConsumer

/-! Independent original statement for the same fixed pilot interval.
The concrete GCD/primorial prime supply is not an external hypothesis. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteRetrySemantic

theorem gcd_pilot_original_exact :
    ∀ n i j : Nat, 19662301 ≤ n → n < 19811023 →
      4883 ≤ i → i < j → j ≤ n / 2 →
        ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hnlo hnhi hi hij hjn
  exact B699Finite20261002.gcd_pilot_common hnlo hnhi hi hij hjn

end B699FiniteRetrySemantic
#print B699FiniteRetrySemantic.gcd_pilot_original_exact
#print axioms B699Finite20261002.gcd_pilot_common
#print axioms B699FiniteRetrySemantic.gcd_pilot_original_exact
