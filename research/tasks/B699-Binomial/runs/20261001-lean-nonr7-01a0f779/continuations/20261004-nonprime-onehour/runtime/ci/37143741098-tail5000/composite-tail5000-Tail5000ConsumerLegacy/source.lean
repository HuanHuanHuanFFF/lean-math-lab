import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.TailConsumerLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000Block005
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailExtension20261004
theorem tail_chain_5000 : B699Finite20261002.PrimeChain 4883 20000093 20482069 := by
  have h0 := tail_chain
  have h1 := B699Finite20261002.PrimeChain.trans h0 B699TailExtension20261004.Tail5000Block000.chain
  have h2 := B699Finite20261002.PrimeChain.trans h1 B699TailExtension20261004.Tail5000Block001.chain
  have h3 := B699Finite20261002.PrimeChain.trans h2 B699TailExtension20261004.Tail5000Block002.chain
  have h4 := B699Finite20261002.PrimeChain.trans h3 B699TailExtension20261004.Tail5000Block003.chain
  have h5 := B699Finite20261002.PrimeChain.trans h4 B699TailExtension20261004.Tail5000Block004.chain
  have h6 := B699Finite20261002.PrimeChain.trans h5 B699TailExtension20261004.Tail5000Block005.chain
  exact h6
theorem common_upto_5000 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 5000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  common_of_tail_chain tail_chain_5000 (by decide) hi hiK hij hjn
theorem complete_5000 {n j : Nat} (hij : 5000 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 5000 ≤ p ∧ p ∣ n.choose 5000 ∧ p ∣ n.choose j :=
  common_upto_5000 (by decide) (by decide) hij hjn
end B699TailExtension20261004
#print axioms B699TailExtension20261004.tail_chain_5000
#print axioms B699TailExtension20261004.common_upto_5000
#print axioms B699TailExtension20261004.complete_5000
