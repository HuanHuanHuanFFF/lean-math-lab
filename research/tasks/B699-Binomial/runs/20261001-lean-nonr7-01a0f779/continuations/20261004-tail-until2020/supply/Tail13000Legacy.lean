import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.Tail10000Legacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-until2020».supply.RatioBlock016
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailUntil202020261004
theorem common_upto_13000 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 13000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  have h0 := B699TailNinety20261004.tail_chain_10000
  have h1 := B699TailNinety20261004.RatioPrimeChain.trans h0 B699TailUntil202020261004.RatioBlock000.chain
  have h2 := B699TailNinety20261004.RatioPrimeChain.trans h1 B699TailUntil202020261004.RatioBlock001.chain
  have h3 := B699TailNinety20261004.RatioPrimeChain.trans h2 B699TailUntil202020261004.RatioBlock002.chain
  have h4 := B699TailNinety20261004.RatioPrimeChain.trans h3 B699TailUntil202020261004.RatioBlock003.chain
  have h5 := B699TailNinety20261004.RatioPrimeChain.trans h4 B699TailUntil202020261004.RatioBlock004.chain
  have h6 := B699TailNinety20261004.RatioPrimeChain.trans h5 B699TailUntil202020261004.RatioBlock005.chain
  have h7 := B699TailNinety20261004.RatioPrimeChain.trans h6 B699TailUntil202020261004.RatioBlock006.chain
  have h8 := B699TailNinety20261004.RatioPrimeChain.trans h7 B699TailUntil202020261004.RatioBlock007.chain
  have h9 := B699TailNinety20261004.RatioPrimeChain.trans h8 B699TailUntil202020261004.RatioBlock008.chain
  have h10 := B699TailNinety20261004.RatioPrimeChain.trans h9 B699TailUntil202020261004.RatioBlock009.chain
  have h11 := B699TailNinety20261004.RatioPrimeChain.trans h10 B699TailUntil202020261004.RatioBlock010.chain
  have h12 := B699TailNinety20261004.RatioPrimeChain.trans h11 B699TailUntil202020261004.RatioBlock011.chain
  have h13 := B699TailNinety20261004.RatioPrimeChain.trans h12 B699TailUntil202020261004.RatioBlock012.chain
  have h14 := B699TailNinety20261004.RatioPrimeChain.trans h13 B699TailUntil202020261004.RatioBlock013.chain
  have h15 := B699TailNinety20261004.RatioPrimeChain.trans h14 B699TailUntil202020261004.RatioBlock014.chain
  have h16 := B699TailNinety20261004.RatioPrimeChain.trans h15 B699TailUntil202020261004.RatioBlock015.chain
  have h17 := B699TailNinety20261004.RatioPrimeChain.trans h16 B699TailUntil202020261004.RatioBlock016.chain
  exact B699TailNinety20261004.common_of_ratio_tail_endpoint h17
    (by decide) hi hiK hij hjn
theorem complete_13000 {n j : Nat} (hij : 13000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 13000 ≤ p ∧ p ∣ n.choose 13000 ∧ p ∣ n.choose j :=
  common_upto_13000 (by decide) (by decide) hij hjn
end B699TailUntil202020261004
#print axioms B699TailUntil202020261004.common_upto_13000
#print axioms B699TailUntil202020261004.complete_13000
