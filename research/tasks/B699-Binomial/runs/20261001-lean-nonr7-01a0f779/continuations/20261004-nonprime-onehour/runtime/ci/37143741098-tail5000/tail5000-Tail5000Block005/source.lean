module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000Block004
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailExtension20261004.Tail5000Block005
theorem prime1 : Nat.Prime 20423653 := by norm_num
theorem prime2 : Nat.Prime 20428523 := by norm_num
theorem prime3 : Nat.Prime 20433403 := by norm_num
theorem prime4 : Nat.Prime 20438251 := by norm_num
theorem prime5 : Nat.Prime 20443123 := by norm_num
theorem prime6 : Nat.Prime 20447969 := by norm_num
theorem prime7 : Nat.Prime 20452843 := by norm_num
theorem prime8 : Nat.Prime 20457709 := by norm_num
theorem prime9 : Nat.Prime 20462581 := by norm_num
theorem prime10 : Nat.Prime 20467463 := by norm_num
theorem prime11 : Nat.Prime 20472341 := by norm_num
theorem prime12 : Nat.Prime 20477203 := by norm_num
theorem prime13 : Nat.Prime 20482069 := by norm_num
theorem chain : B699Finite20261002.PrimeChain 4883 20418799 20482069 := by
  refine .step (q := 20423653) B699TailExtension20261004.Tail5000Block004.prime16 (by decide) (by decide) ?_
  refine .step (q := 20428523) prime1 (by decide) (by decide) ?_
  refine .step (q := 20433403) prime2 (by decide) (by decide) ?_
  refine .step (q := 20438251) prime3 (by decide) (by decide) ?_
  refine .step (q := 20443123) prime4 (by decide) (by decide) ?_
  refine .step (q := 20447969) prime5 (by decide) (by decide) ?_
  refine .step (q := 20452843) prime6 (by decide) (by decide) ?_
  refine .step (q := 20457709) prime7 (by decide) (by decide) ?_
  refine .step (q := 20462581) prime8 (by decide) (by decide) ?_
  refine .step (q := 20467463) prime9 (by decide) (by decide) ?_
  refine .step (q := 20472341) prime10 (by decide) (by decide) ?_
  refine .step (q := 20477203) prime11 (by decide) (by decide) ?_
  refine .step (q := 20482069) prime12 (by decide) (by decide) ?_
  exact .singleton prime13
end B699TailExtension20261004.Tail5000Block005
#print axioms B699TailExtension20261004.Tail5000Block005.prime1
#print axioms B699TailExtension20261004.Tail5000Block005.prime2
#print axioms B699TailExtension20261004.Tail5000Block005.prime3
#print axioms B699TailExtension20261004.Tail5000Block005.prime4
#print axioms B699TailExtension20261004.Tail5000Block005.prime5
#print axioms B699TailExtension20261004.Tail5000Block005.prime6
#print axioms B699TailExtension20261004.Tail5000Block005.prime7
#print axioms B699TailExtension20261004.Tail5000Block005.prime8
#print axioms B699TailExtension20261004.Tail5000Block005.prime9
#print axioms B699TailExtension20261004.Tail5000Block005.prime10
#print axioms B699TailExtension20261004.Tail5000Block005.prime11
#print axioms B699TailExtension20261004.Tail5000Block005.prime12
#print axioms B699TailExtension20261004.Tail5000Block005.prime13
#print axioms B699TailExtension20261004.Tail5000Block005.chain
