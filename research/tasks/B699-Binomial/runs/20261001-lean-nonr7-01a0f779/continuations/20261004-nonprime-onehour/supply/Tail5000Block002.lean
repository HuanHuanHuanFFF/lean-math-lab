module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000Block001
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailExtension20261004.Tail5000Block002
theorem prime1 : Nat.Prime 20189881 := by norm_num
theorem prime2 : Nat.Prime 20194751 := by norm_num
theorem prime3 : Nat.Prime 20199623 := by norm_num
theorem prime4 : Nat.Prime 20204477 := by norm_num
theorem prime5 : Nat.Prime 20209339 := by norm_num
theorem prime6 : Nat.Prime 20214203 := by norm_num
theorem prime7 : Nat.Prime 20219083 := by norm_num
theorem prime8 : Nat.Prime 20223953 := by norm_num
theorem prime9 : Nat.Prime 20228807 := by norm_num
theorem prime10 : Nat.Prime 20233687 := by norm_num
theorem prime11 : Nat.Prime 20238541 := by norm_num
theorem prime12 : Nat.Prime 20243407 := by norm_num
theorem prime13 : Nat.Prime 20248273 := by norm_num
theorem prime14 : Nat.Prime 20253127 := by norm_num
theorem prime15 : Nat.Prime 20257997 := by norm_num
theorem prime16 : Nat.Prime 20262863 := by norm_num
theorem chain : B699Finite20261002.PrimeChain 4883 20185003 20262863 := by
  refine .step (q := 20189881) B699TailExtension20261004.Tail5000Block001.prime16 (by decide) (by decide) ?_
  refine .step (q := 20194751) prime1 (by decide) (by decide) ?_
  refine .step (q := 20199623) prime2 (by decide) (by decide) ?_
  refine .step (q := 20204477) prime3 (by decide) (by decide) ?_
  refine .step (q := 20209339) prime4 (by decide) (by decide) ?_
  refine .step (q := 20214203) prime5 (by decide) (by decide) ?_
  refine .step (q := 20219083) prime6 (by decide) (by decide) ?_
  refine .step (q := 20223953) prime7 (by decide) (by decide) ?_
  refine .step (q := 20228807) prime8 (by decide) (by decide) ?_
  refine .step (q := 20233687) prime9 (by decide) (by decide) ?_
  refine .step (q := 20238541) prime10 (by decide) (by decide) ?_
  refine .step (q := 20243407) prime11 (by decide) (by decide) ?_
  refine .step (q := 20248273) prime12 (by decide) (by decide) ?_
  refine .step (q := 20253127) prime13 (by decide) (by decide) ?_
  refine .step (q := 20257997) prime14 (by decide) (by decide) ?_
  refine .step (q := 20262863) prime15 (by decide) (by decide) ?_
  exact .singleton prime16
end B699TailExtension20261004.Tail5000Block002
#print axioms B699TailExtension20261004.Tail5000Block002.prime1
#print axioms B699TailExtension20261004.Tail5000Block002.prime2
#print axioms B699TailExtension20261004.Tail5000Block002.prime3
#print axioms B699TailExtension20261004.Tail5000Block002.prime4
#print axioms B699TailExtension20261004.Tail5000Block002.prime5
#print axioms B699TailExtension20261004.Tail5000Block002.prime6
#print axioms B699TailExtension20261004.Tail5000Block002.prime7
#print axioms B699TailExtension20261004.Tail5000Block002.prime8
#print axioms B699TailExtension20261004.Tail5000Block002.prime9
#print axioms B699TailExtension20261004.Tail5000Block002.prime10
#print axioms B699TailExtension20261004.Tail5000Block002.prime11
#print axioms B699TailExtension20261004.Tail5000Block002.prime12
#print axioms B699TailExtension20261004.Tail5000Block002.prime13
#print axioms B699TailExtension20261004.Tail5000Block002.prime14
#print axioms B699TailExtension20261004.Tail5000Block002.prime15
#print axioms B699TailExtension20261004.Tail5000Block002.prime16
#print axioms B699TailExtension20261004.Tail5000Block002.chain
