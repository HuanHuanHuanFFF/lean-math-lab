import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioEndpointLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioBlock011
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailNinety20261004
theorem tail_chain_6000 : RatioPrimeChain 20482069 24574447 := by
  have h0 := B699TailNinety20261004.RatioPilot16.chain
  have h1 := RatioPrimeChain.trans h0 B699TailNinety20261004.RatioBlock000.chain
  have h2 := RatioPrimeChain.trans h1 B699TailNinety20261004.RatioBlock001.chain
  have h3 := RatioPrimeChain.trans h2 B699TailNinety20261004.RatioBlock002.chain
  have h4 := RatioPrimeChain.trans h3 B699TailNinety20261004.RatioBlock003.chain
  have h5 := RatioPrimeChain.trans h4 B699TailNinety20261004.RatioBlock004.chain
  have h6 := RatioPrimeChain.trans h5 B699TailNinety20261004.RatioBlock005.chain
  have h7 := RatioPrimeChain.trans h6 B699TailNinety20261004.RatioBlock006.chain
  have h8 := RatioPrimeChain.trans h7 B699TailNinety20261004.RatioBlock007.chain
  have h9 := RatioPrimeChain.trans h8 B699TailNinety20261004.RatioBlock008.chain
  have h10 := RatioPrimeChain.trans h9 B699TailNinety20261004.RatioBlock009.chain
  have h11 := RatioPrimeChain.trans h10 B699TailNinety20261004.RatioBlock010.chain
  have h12 := RatioPrimeChain.trans h11 B699TailNinety20261004.RatioBlock011.chain
  exact h12
theorem common_upto_6000 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 6000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  common_of_ratio_tail_endpoint tail_chain_6000 (by decide) hi hiK hij hjn
theorem complete_6000 {n j : Nat} (hij : 6000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 6000 ≤ p ∧ p ∣ n.choose 6000 ∧ p ∣ n.choose j :=
  common_upto_6000 (by decide) (by decide) hij hjn
end B699TailNinety20261004
#print axioms B699TailNinety20261004.tail_chain_6000
#print axioms B699TailNinety20261004.common_upto_6000
#print axioms B699TailNinety20261004.complete_6000
