module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-retry-onehour».finite.Pilot32
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapAdapter

/-! Actual original consumer for the bounded pilot interval only.
No whole finite-supply or all-index conclusion follows from this pilot. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section
namespace B699Finite20261002

theorem pilot_common {n i j : Nat} (hnlo : 19662301 ≤ n) (hnhi : n < 19811023)
    (hi : 4883 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  obtain ⟨p, hp, hpn, hnear⟩ := Pilot32.chain.near_top hnlo hnhi
  exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn

end B699Finite20261002

#check (B699Finite20261002.pilot_common :
  ∀ {n i j : Nat}, 19662301 ≤ n → n < 19811023 →
    4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j)
#print axioms B699Finite20261002.pilot_common
