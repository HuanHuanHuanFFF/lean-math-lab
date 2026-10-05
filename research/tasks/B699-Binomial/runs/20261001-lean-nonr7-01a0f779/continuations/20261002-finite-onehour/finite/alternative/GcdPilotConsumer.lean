module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.GcdPilot32
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapAdapter
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699Finite20261002
theorem gcd_pilot_common {n i j : Nat} (hnlo : 19662301 ≤ n) (hnhi : n < 19811023)
    (hi : 4883 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  obtain ⟨p, hp, hpn, hnear⟩ := GcdPilot32.chain.near_top hnlo hnhi
  exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
end B699Finite20261002
#print axioms B699Finite20261002.gcd_pilot_common
