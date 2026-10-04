import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.Tail10000Legacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailNinety20261004

theorem common_upto_10001 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 10001)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  common_of_ratio_tail_endpoint tail_chain_10000 (by decide) hi hiK hij hjn

theorem complete_10001 {n j : Nat} (hij : 10001 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 10001 ≤ p ∧ p ∣ n.choose 10001 ∧ p ∣ n.choose j :=
  common_upto_10001 (by decide) (by decide) hij hjn

end B699TailNinety20261004
#print axioms B699TailNinety20261004.common_upto_10001
#print axioms B699TailNinety20261004.complete_10001
