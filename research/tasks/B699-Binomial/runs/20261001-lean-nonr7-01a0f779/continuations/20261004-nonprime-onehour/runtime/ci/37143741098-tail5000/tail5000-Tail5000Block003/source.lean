module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000Block002
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailExtension20261004.Tail5000Block003
theorem prime1 : Nat.Prime 20267719 := by norm_num
theorem prime2 : Nat.Prime 20272597 := by norm_num
theorem prime3 : Nat.Prime 20277479 := by norm_num
theorem prime4 : Nat.Prime 20282351 := by norm_num
theorem prime5 : Nat.Prime 20287207 := by norm_num
theorem prime6 : Nat.Prime 20292079 := by norm_num
theorem prime7 : Nat.Prime 20296951 := by norm_num
theorem prime8 : Nat.Prime 20301829 := by norm_num
theorem prime9 : Nat.Prime 20306701 := by norm_num
theorem prime10 : Nat.Prime 20311559 := by norm_num
theorem prime11 : Nat.Prime 20316433 := by norm_num
theorem prime12 : Nat.Prime 20321303 := by norm_num
theorem prime13 : Nat.Prime 20326183 := by norm_num
theorem prime14 : Nat.Prime 20331061 := by norm_num
theorem prime15 : Nat.Prime 20335937 := by norm_num
theorem prime16 : Nat.Prime 20340799 := by norm_num
theorem chain : B699Finite20261002.PrimeChain 4883 20262863 20340799 := by
  refine .step (q := 20267719) B699TailExtension20261004.Tail5000Block002.prime16 (by decide) (by decide) ?_
  refine .step (q := 20272597) prime1 (by decide) (by decide) ?_
  refine .step (q := 20277479) prime2 (by decide) (by decide) ?_
  refine .step (q := 20282351) prime3 (by decide) (by decide) ?_
  refine .step (q := 20287207) prime4 (by decide) (by decide) ?_
  refine .step (q := 20292079) prime5 (by decide) (by decide) ?_
  refine .step (q := 20296951) prime6 (by decide) (by decide) ?_
  refine .step (q := 20301829) prime7 (by decide) (by decide) ?_
  refine .step (q := 20306701) prime8 (by decide) (by decide) ?_
  refine .step (q := 20311559) prime9 (by decide) (by decide) ?_
  refine .step (q := 20316433) prime10 (by decide) (by decide) ?_
  refine .step (q := 20321303) prime11 (by decide) (by decide) ?_
  refine .step (q := 20326183) prime12 (by decide) (by decide) ?_
  refine .step (q := 20331061) prime13 (by decide) (by decide) ?_
  refine .step (q := 20335937) prime14 (by decide) (by decide) ?_
  refine .step (q := 20340799) prime15 (by decide) (by decide) ?_
  exact .singleton prime16
end B699TailExtension20261004.Tail5000Block003
#print axioms B699TailExtension20261004.Tail5000Block003.prime1
#print axioms B699TailExtension20261004.Tail5000Block003.prime2
#print axioms B699TailExtension20261004.Tail5000Block003.prime3
#print axioms B699TailExtension20261004.Tail5000Block003.prime4
#print axioms B699TailExtension20261004.Tail5000Block003.prime5
#print axioms B699TailExtension20261004.Tail5000Block003.prime6
#print axioms B699TailExtension20261004.Tail5000Block003.prime7
#print axioms B699TailExtension20261004.Tail5000Block003.prime8
#print axioms B699TailExtension20261004.Tail5000Block003.prime9
#print axioms B699TailExtension20261004.Tail5000Block003.prime10
#print axioms B699TailExtension20261004.Tail5000Block003.prime11
#print axioms B699TailExtension20261004.Tail5000Block003.prime12
#print axioms B699TailExtension20261004.Tail5000Block003.prime13
#print axioms B699TailExtension20261004.Tail5000Block003.prime14
#print axioms B699TailExtension20261004.Tail5000Block003.prime15
#print axioms B699TailExtension20261004.Tail5000Block003.prime16
#print axioms B699TailExtension20261004.Tail5000Block003.chain
