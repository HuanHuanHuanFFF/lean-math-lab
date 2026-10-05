import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.Tail30000Legacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinishVerify20261004

theorem complete_30000_exact (n j : Nat) (hij : 30000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 30000 ≤ p ∧ p ∣ n.choose 30000 ∧ p ∣ n.choose j :=
  B699TailFinish20261004.FullInitial.complete_30000 hij hjn

theorem all_upto_30000_exact (n i j : Nat) (hi : 4883 ≤ i) (hiu : i ≤ 30000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailFinish20261004.FullInitial.common_upto_30000 hi hiu hij hjn

end B699TailFinishVerify20261004
#print B699TailFinishVerify20261004.complete_30000_exact
#print axioms B699TailFinishVerify20261004.complete_30000_exact
#print B699TailFinishVerify20261004.all_upto_30000_exact
#print axioms B699TailFinishVerify20261004.all_upto_30000_exact
