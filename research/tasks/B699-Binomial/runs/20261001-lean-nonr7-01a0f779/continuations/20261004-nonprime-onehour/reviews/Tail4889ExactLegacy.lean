import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.TailConsumerLegacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailVerify20261004

theorem complete_4889_exact (n j : Nat) (hij : 4889 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4889 ≤ p ∧ p ∣ n.choose 4889 ∧ p ∣ n.choose j :=
  B699TailExtension20261004.complete_4889 hij hjn

theorem all_upto_4889_exact (n i j : Nat) (hi : 4883 ≤ i) (hiu : i ≤ 4889)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailExtension20261004.common_upto_4889 hi hiu hij hjn

end B699TailVerify20261004

#print B699TailVerify20261004.complete_4889_exact
#print axioms B699TailVerify20261004.complete_4889_exact
#print B699TailVerify20261004.all_upto_4889_exact
#print axioms B699TailVerify20261004.all_upto_4889_exact
