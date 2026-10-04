import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.Tail10000Legacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailNinetyVerify20261004

theorem complete_10000_exact (n j : Nat) (hij : 10000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 10000 ≤ p ∧ p ∣ n.choose 10000 ∧ p ∣ n.choose j :=
  B699TailNinety20261004.complete_10000 hij hjn

theorem all_upto_10000_exact (n i j : Nat) (hi : 4883 ≤ i) (hiu : i ≤ 10000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailNinety20261004.common_upto_10000 hi hiu hij hjn

end B699TailNinetyVerify20261004

#print B699TailNinetyVerify20261004.complete_10000_exact
#print axioms B699TailNinetyVerify20261004.complete_10000_exact
#print B699TailNinetyVerify20261004.all_upto_10000_exact
#print axioms B699TailNinetyVerify20261004.all_upto_10000_exact
