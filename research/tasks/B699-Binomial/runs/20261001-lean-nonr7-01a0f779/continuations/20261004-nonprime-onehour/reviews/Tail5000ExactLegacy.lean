import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000ConsumerLegacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailVerify20261004

theorem complete_5000_exact (n j : Nat) (hij : 5000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 5000 ≤ p ∧ p ∣ n.choose 5000 ∧ p ∣ n.choose j :=
  B699TailExtension20261004.complete_5000 hij hjn

theorem all_upto_5000_exact (n i j : Nat) (hi : 4883 ≤ i) (hiu : i ≤ 5000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailExtension20261004.common_upto_5000 hi hiu hij hjn

end B699TailVerify20261004

#print B699TailVerify20261004.complete_5000_exact
#print axioms B699TailVerify20261004.complete_5000_exact
#print B699TailVerify20261004.all_upto_5000_exact
#print axioms B699TailVerify20261004.all_upto_5000_exact
