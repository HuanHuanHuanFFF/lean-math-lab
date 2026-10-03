module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000Block000
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailExtension20261004.Tail5000Block001
theorem prime1 : Nat.Prime 20112031 := by norm_num
theorem prime2 : Nat.Prime 20116913 := by norm_num
theorem prime3 : Nat.Prime 20121791 := by norm_num
theorem prime4 : Nat.Prime 20126671 := by norm_num
theorem prime5 : Nat.Prime 20131549 := by norm_num
theorem prime6 : Nat.Prime 20136421 := by norm_num
theorem prime7 : Nat.Prime 20141269 := by norm_num
theorem prime8 : Nat.Prime 20146111 := by norm_num
theorem prime9 : Nat.Prime 20150983 := by norm_num
theorem prime10 : Nat.Prime 20155831 := by norm_num
theorem prime11 : Nat.Prime 20160709 := by norm_num
theorem prime12 : Nat.Prime 20165567 := by norm_num
theorem prime13 : Nat.Prime 20170433 := by norm_num
theorem prime14 : Nat.Prime 20175263 := by norm_num
theorem prime15 : Nat.Prime 20180141 := by norm_num
theorem prime16 : Nat.Prime 20185003 := by norm_num
theorem chain : B699Finite20261002.PrimeChain 4883 20107151 20185003 := by
  refine .step (q := 20112031) B699TailExtension20261004.Tail5000Block000.prime16 (by decide) (by decide) ?_
  refine .step (q := 20116913) prime1 (by decide) (by decide) ?_
  refine .step (q := 20121791) prime2 (by decide) (by decide) ?_
  refine .step (q := 20126671) prime3 (by decide) (by decide) ?_
  refine .step (q := 20131549) prime4 (by decide) (by decide) ?_
  refine .step (q := 20136421) prime5 (by decide) (by decide) ?_
  refine .step (q := 20141269) prime6 (by decide) (by decide) ?_
  refine .step (q := 20146111) prime7 (by decide) (by decide) ?_
  refine .step (q := 20150983) prime8 (by decide) (by decide) ?_
  refine .step (q := 20155831) prime9 (by decide) (by decide) ?_
  refine .step (q := 20160709) prime10 (by decide) (by decide) ?_
  refine .step (q := 20165567) prime11 (by decide) (by decide) ?_
  refine .step (q := 20170433) prime12 (by decide) (by decide) ?_
  refine .step (q := 20175263) prime13 (by decide) (by decide) ?_
  refine .step (q := 20180141) prime14 (by decide) (by decide) ?_
  refine .step (q := 20185003) prime15 (by decide) (by decide) ?_
  exact .singleton prime16
end B699TailExtension20261004.Tail5000Block001
#print axioms B699TailExtension20261004.Tail5000Block001.prime1
#print axioms B699TailExtension20261004.Tail5000Block001.prime2
#print axioms B699TailExtension20261004.Tail5000Block001.prime3
#print axioms B699TailExtension20261004.Tail5000Block001.prime4
#print axioms B699TailExtension20261004.Tail5000Block001.prime5
#print axioms B699TailExtension20261004.Tail5000Block001.prime6
#print axioms B699TailExtension20261004.Tail5000Block001.prime7
#print axioms B699TailExtension20261004.Tail5000Block001.prime8
#print axioms B699TailExtension20261004.Tail5000Block001.prime9
#print axioms B699TailExtension20261004.Tail5000Block001.prime10
#print axioms B699TailExtension20261004.Tail5000Block001.prime11
#print axioms B699TailExtension20261004.Tail5000Block001.prime12
#print axioms B699TailExtension20261004.Tail5000Block001.prime13
#print axioms B699TailExtension20261004.Tail5000Block001.prime14
#print axioms B699TailExtension20261004.Tail5000Block001.prime15
#print axioms B699TailExtension20261004.Tail5000Block001.prime16
#print axioms B699TailExtension20261004.Tail5000Block001.chain
