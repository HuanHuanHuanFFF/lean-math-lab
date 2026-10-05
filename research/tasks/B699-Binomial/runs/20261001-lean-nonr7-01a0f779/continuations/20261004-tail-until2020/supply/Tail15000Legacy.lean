import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.Tail10000Legacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-until2020».supply.RatioBlock025
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailUntil202020261004
theorem tail_chain_15000 : B699TailNinety20261004.RatioPrimeChain 20482069 61439401 := by
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
  have h18 := B699TailNinety20261004.RatioPrimeChain.trans h17 B699TailUntil202020261004.RatioBlock017.chain
  have h19 := B699TailNinety20261004.RatioPrimeChain.trans h18 B699TailUntil202020261004.RatioBlock018.chain
  have h20 := B699TailNinety20261004.RatioPrimeChain.trans h19 B699TailUntil202020261004.RatioBlock019.chain
  have h21 := B699TailNinety20261004.RatioPrimeChain.trans h20 B699TailUntil202020261004.RatioBlock020.chain
  have h22 := B699TailNinety20261004.RatioPrimeChain.trans h21 B699TailUntil202020261004.RatioBlock021.chain
  have h23 := B699TailNinety20261004.RatioPrimeChain.trans h22 B699TailUntil202020261004.RatioBlock022.chain
  have h24 := B699TailNinety20261004.RatioPrimeChain.trans h23 B699TailUntil202020261004.RatioBlock023.chain
  have h25 := B699TailNinety20261004.RatioPrimeChain.trans h24 B699TailUntil202020261004.RatioBlock024.chain
  have h26 := B699TailNinety20261004.RatioPrimeChain.trans h25 B699TailUntil202020261004.RatioBlock025.chain
  exact h26
theorem common_upto_15000 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 15000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699TailNinety20261004.common_of_ratio_tail_endpoint tail_chain_15000
    (by decide) hi hiK hij hjn
theorem complete_15000 {n j : Nat} (hij : 15000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 15000 ≤ p ∧ p ∣ n.choose 15000 ∧ p ∣ n.choose j :=
  common_upto_15000 (by decide) (by decide) hij hjn
end B699TailUntil202020261004
#print axioms B699TailUntil202020261004.tail_chain_15000
#print axioms B699TailUntil202020261004.common_upto_15000
#print axioms B699TailUntil202020261004.complete_15000
