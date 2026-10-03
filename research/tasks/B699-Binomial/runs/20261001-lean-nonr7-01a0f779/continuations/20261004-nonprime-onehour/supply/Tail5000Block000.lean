module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.TailPrimes
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailExtension20261004.Tail5000Block000
theorem prime1 : Nat.Prime 20034073 := by norm_num
theorem prime2 : Nat.Prime 20038951 := by norm_num
theorem prime3 : Nat.Prime 20043823 := by norm_num
theorem prime4 : Nat.Prime 20048701 := by norm_num
theorem prime5 : Nat.Prime 20053573 := by norm_num
theorem prime6 : Nat.Prime 20058449 := by norm_num
theorem prime7 : Nat.Prime 20063317 := by norm_num
theorem prime8 : Nat.Prime 20068183 := by norm_num
theorem prime9 : Nat.Prime 20073041 := by norm_num
theorem prime10 : Nat.Prime 20077921 := by norm_num
theorem prime11 : Nat.Prime 20082787 := by norm_num
theorem prime12 : Nat.Prime 20087653 := by norm_num
theorem prime13 : Nat.Prime 20092531 := by norm_num
theorem prime14 : Nat.Prime 20097409 := by norm_num
theorem prime15 : Nat.Prime 20102273 := by norm_num
theorem prime16 : Nat.Prime 20107151 := by norm_num
theorem chain : B699Finite20261002.PrimeChain 4883 20029199 20107151 := by
  refine .step (q := 20034073) B699TailExtension20261004.prime6 (by decide) (by decide) ?_
  refine .step (q := 20038951) prime1 (by decide) (by decide) ?_
  refine .step (q := 20043823) prime2 (by decide) (by decide) ?_
  refine .step (q := 20048701) prime3 (by decide) (by decide) ?_
  refine .step (q := 20053573) prime4 (by decide) (by decide) ?_
  refine .step (q := 20058449) prime5 (by decide) (by decide) ?_
  refine .step (q := 20063317) prime6 (by decide) (by decide) ?_
  refine .step (q := 20068183) prime7 (by decide) (by decide) ?_
  refine .step (q := 20073041) prime8 (by decide) (by decide) ?_
  refine .step (q := 20077921) prime9 (by decide) (by decide) ?_
  refine .step (q := 20082787) prime10 (by decide) (by decide) ?_
  refine .step (q := 20087653) prime11 (by decide) (by decide) ?_
  refine .step (q := 20092531) prime12 (by decide) (by decide) ?_
  refine .step (q := 20097409) prime13 (by decide) (by decide) ?_
  refine .step (q := 20102273) prime14 (by decide) (by decide) ?_
  refine .step (q := 20107151) prime15 (by decide) (by decide) ?_
  exact .singleton prime16
end B699TailExtension20261004.Tail5000Block000
#print axioms B699TailExtension20261004.Tail5000Block000.prime1
#print axioms B699TailExtension20261004.Tail5000Block000.prime2
#print axioms B699TailExtension20261004.Tail5000Block000.prime3
#print axioms B699TailExtension20261004.Tail5000Block000.prime4
#print axioms B699TailExtension20261004.Tail5000Block000.prime5
#print axioms B699TailExtension20261004.Tail5000Block000.prime6
#print axioms B699TailExtension20261004.Tail5000Block000.prime7
#print axioms B699TailExtension20261004.Tail5000Block000.prime8
#print axioms B699TailExtension20261004.Tail5000Block000.prime9
#print axioms B699TailExtension20261004.Tail5000Block000.prime10
#print axioms B699TailExtension20261004.Tail5000Block000.prime11
#print axioms B699TailExtension20261004.Tail5000Block000.prime12
#print axioms B699TailExtension20261004.Tail5000Block000.prime13
#print axioms B699TailExtension20261004.Tail5000Block000.prime14
#print axioms B699TailExtension20261004.Tail5000Block000.prime15
#print axioms B699TailExtension20261004.Tail5000Block000.prime16
#print axioms B699TailExtension20261004.Tail5000Block000.chain
