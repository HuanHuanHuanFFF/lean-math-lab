module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000Block003
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailExtension20261004.Tail5000Block004
theorem prime1 : Nat.Prime 20345681 := by norm_num
theorem prime2 : Nat.Prime 20350559 := by norm_num
theorem prime3 : Nat.Prime 20355431 := by norm_num
theorem prime4 : Nat.Prime 20360309 := by norm_num
theorem prime5 : Nat.Prime 20365157 := by norm_num
theorem prime6 : Nat.Prime 20370023 := by norm_num
theorem prime7 : Nat.Prime 20374903 := by norm_num
theorem prime8 : Nat.Prime 20379781 := by norm_num
theorem prime9 : Nat.Prime 20384659 := by norm_num
theorem prime10 : Nat.Prime 20389541 := by norm_num
theorem prime11 : Nat.Prime 20394401 := by norm_num
theorem prime12 : Nat.Prime 20399279 := by norm_num
theorem prime13 : Nat.Prime 20404159 := by norm_num
theorem prime14 : Nat.Prime 20409041 := by norm_num
theorem prime15 : Nat.Prime 20413919 := by norm_num
theorem prime16 : Nat.Prime 20418799 := by norm_num
theorem chain : B699Finite20261002.PrimeChain 4883 20340799 20418799 := by
  refine .step (q := 20345681) B699TailExtension20261004.Tail5000Block003.prime16 (by decide) (by decide) ?_
  refine .step (q := 20350559) prime1 (by decide) (by decide) ?_
  refine .step (q := 20355431) prime2 (by decide) (by decide) ?_
  refine .step (q := 20360309) prime3 (by decide) (by decide) ?_
  refine .step (q := 20365157) prime4 (by decide) (by decide) ?_
  refine .step (q := 20370023) prime5 (by decide) (by decide) ?_
  refine .step (q := 20374903) prime6 (by decide) (by decide) ?_
  refine .step (q := 20379781) prime7 (by decide) (by decide) ?_
  refine .step (q := 20384659) prime8 (by decide) (by decide) ?_
  refine .step (q := 20389541) prime9 (by decide) (by decide) ?_
  refine .step (q := 20394401) prime10 (by decide) (by decide) ?_
  refine .step (q := 20399279) prime11 (by decide) (by decide) ?_
  refine .step (q := 20404159) prime12 (by decide) (by decide) ?_
  refine .step (q := 20409041) prime13 (by decide) (by decide) ?_
  refine .step (q := 20413919) prime14 (by decide) (by decide) ?_
  refine .step (q := 20418799) prime15 (by decide) (by decide) ?_
  exact .singleton prime16
end B699TailExtension20261004.Tail5000Block004
#print axioms B699TailExtension20261004.Tail5000Block004.prime1
#print axioms B699TailExtension20261004.Tail5000Block004.prime2
#print axioms B699TailExtension20261004.Tail5000Block004.prime3
#print axioms B699TailExtension20261004.Tail5000Block004.prime4
#print axioms B699TailExtension20261004.Tail5000Block004.prime5
#print axioms B699TailExtension20261004.Tail5000Block004.prime6
#print axioms B699TailExtension20261004.Tail5000Block004.prime7
#print axioms B699TailExtension20261004.Tail5000Block004.prime8
#print axioms B699TailExtension20261004.Tail5000Block004.prime9
#print axioms B699TailExtension20261004.Tail5000Block004.prime10
#print axioms B699TailExtension20261004.Tail5000Block004.prime11
#print axioms B699TailExtension20261004.Tail5000Block004.prime12
#print axioms B699TailExtension20261004.Tail5000Block004.prime13
#print axioms B699TailExtension20261004.Tail5000Block004.prime14
#print axioms B699TailExtension20261004.Tail5000Block004.prime15
#print axioms B699TailExtension20261004.Tail5000Block004.prime16
#print axioms B699TailExtension20261004.Tail5000Block004.chain
