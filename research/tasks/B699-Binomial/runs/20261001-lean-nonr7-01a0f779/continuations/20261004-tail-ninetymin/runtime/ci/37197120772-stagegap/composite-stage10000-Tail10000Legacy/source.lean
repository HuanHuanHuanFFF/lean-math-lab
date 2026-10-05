import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioEndpointLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioBlock044
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.Tail6000Legacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailNinety20261004
theorem tail_chain_10000 : RatioPrimeChain 20482069 40956329 := by
  have h0 := tail_chain_6000
  have h1 := RatioPrimeChain.trans h0 B699TailNinety20261004.RatioBlock012.chain
  have h2 := RatioPrimeChain.trans h1 B699TailNinety20261004.RatioBlock013.chain
  have h3 := RatioPrimeChain.trans h2 B699TailNinety20261004.RatioBlock014.chain
  have h4 := RatioPrimeChain.trans h3 B699TailNinety20261004.RatioBlock015.chain
  have h5 := RatioPrimeChain.trans h4 B699TailNinety20261004.RatioBlock016.chain
  have h6 := RatioPrimeChain.trans h5 B699TailNinety20261004.RatioBlock017.chain
  have h7 := RatioPrimeChain.trans h6 B699TailNinety20261004.RatioBlock018.chain
  have h8 := RatioPrimeChain.trans h7 B699TailNinety20261004.RatioBlock019.chain
  have h9 := RatioPrimeChain.trans h8 B699TailNinety20261004.RatioBlock020.chain
  have h10 := RatioPrimeChain.trans h9 B699TailNinety20261004.RatioBlock021.chain
  have h11 := RatioPrimeChain.trans h10 B699TailNinety20261004.RatioBlock022.chain
  have h12 := RatioPrimeChain.trans h11 B699TailNinety20261004.RatioBlock023.chain
  have h13 := RatioPrimeChain.trans h12 B699TailNinety20261004.RatioBlock024.chain
  have h14 := RatioPrimeChain.trans h13 B699TailNinety20261004.RatioBlock025.chain
  have h15 := RatioPrimeChain.trans h14 B699TailNinety20261004.RatioBlock026.chain
  have h16 := RatioPrimeChain.trans h15 B699TailNinety20261004.RatioBlock027.chain
  have h17 := RatioPrimeChain.trans h16 B699TailNinety20261004.RatioBlock028.chain
  have h18 := RatioPrimeChain.trans h17 B699TailNinety20261004.RatioBlock029.chain
  have h19 := RatioPrimeChain.trans h18 B699TailNinety20261004.RatioBlock030.chain
  have h20 := RatioPrimeChain.trans h19 B699TailNinety20261004.RatioBlock031.chain
  have h21 := RatioPrimeChain.trans h20 B699TailNinety20261004.RatioBlock032.chain
  have h22 := RatioPrimeChain.trans h21 B699TailNinety20261004.RatioBlock033.chain
  have h23 := RatioPrimeChain.trans h22 B699TailNinety20261004.RatioBlock034.chain
  have h24 := RatioPrimeChain.trans h23 B699TailNinety20261004.RatioBlock035.chain
  have h25 := RatioPrimeChain.trans h24 B699TailNinety20261004.RatioBlock036.chain
  have h26 := RatioPrimeChain.trans h25 B699TailNinety20261004.RatioBlock037.chain
  have h27 := RatioPrimeChain.trans h26 B699TailNinety20261004.RatioBlock038.chain
  have h28 := RatioPrimeChain.trans h27 B699TailNinety20261004.RatioBlock039.chain
  have h29 := RatioPrimeChain.trans h28 B699TailNinety20261004.RatioBlock040.chain
  have h30 := RatioPrimeChain.trans h29 B699TailNinety20261004.RatioBlock041.chain
  have h31 := RatioPrimeChain.trans h30 B699TailNinety20261004.RatioBlock042.chain
  have h32 := RatioPrimeChain.trans h31 B699TailNinety20261004.RatioBlock043.chain
  have h33 := RatioPrimeChain.trans h32 B699TailNinety20261004.RatioBlock044.chain
  exact h33
theorem common_upto_10000 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 10000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  common_of_ratio_tail_endpoint tail_chain_10000 (by decide) hi hiK hij hjn
theorem complete_10000 {n j : Nat} (hij : 10000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 10000 ≤ p ∧ p ∣ n.choose 10000 ∧ p ∣ n.choose j :=
  common_upto_10000 (by decide) (by decide) hij hjn
end B699TailNinety20261004
#print axioms B699TailNinety20261004.tail_chain_10000
#print axioms B699TailNinety20261004.common_upto_10000
#print axioms B699TailNinety20261004.complete_10000
