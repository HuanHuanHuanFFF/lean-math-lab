import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.UpperChain
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-until2020».supply.Tail15000Legacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailFinish20261004.FullInitial
theorem tail_chain_30000 : B699TailNinety20261004.RatioPrimeChain 20482069 122879557 :=
  B699TailNinety20261004.RatioPrimeChain.trans
    B699TailUntil202020261004.tail_chain_15000 upper_chain
theorem common_upto_30000 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 30000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailNinety20261004.common_of_ratio_tail_endpoint tail_chain_30000
    (by decide) hi hiK hij hjn
theorem complete_30000 {n j : Nat} (hij : 30000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 30000 ≤ p ∧ p ∣ n.choose 30000 ∧ p ∣ n.choose j :=
  common_upto_30000 (by decide) (by decide) hij hjn
end B699TailFinish20261004.FullInitial
#print axioms B699TailFinish20261004.FullInitial.tail_chain_30000
#print axioms B699TailFinish20261004.FullInitial.common_upto_30000
#print axioms B699TailFinish20261004.FullInitial.complete_30000
