module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-retry-onehour».finite.PilotConsumer

/-! Original natural statement, all legal j, fixed half-open pilot n interval. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteSemantic

theorem pilot_original_exact :
    ∀ n i j : Nat, 19662301 ≤ n → n < 19811023 →
      4883 ≤ i → i < j → j ≤ n / 2 →
        ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hnlo hnhi hi hij hjn
  exact B699Finite20261002.pilot_common hnlo hnhi hi hij hjn

end B699FiniteSemantic
#print B699FiniteSemantic.pilot_original_exact
#print axioms B699Finite20261002.pilot_common
#print axioms B699FiniteSemantic.pilot_original_exact
