module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000Block005
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailNinety20261004.RatioPilot16
theorem prime1 : Nat.Prime 20487067 := by norm_num
theorem prime2 : Nat.Prime 20492063 := by norm_num
theorem prime3 : Nat.Prime 20497063 := by norm_num
theorem prime4 : Nat.Prime 20502059 := by norm_num
theorem prime5 : Nat.Prime 20507051 := by norm_num
theorem prime6 : Nat.Prime 20512031 := by norm_num
theorem prime7 : Nat.Prime 20517037 := by norm_num
theorem prime8 : Nat.Prime 20522041 := by norm_num
theorem prime9 : Nat.Prime 20527037 := by norm_num
theorem prime10 : Nat.Prime 20532049 := by norm_num
theorem prime11 : Nat.Prime 20537059 := by norm_num
theorem prime12 : Nat.Prime 20542073 := by norm_num
theorem prime13 : Nat.Prime 20547089 := by norm_num
theorem prime14 : Nat.Prime 20552083 := by norm_num
theorem prime15 : Nat.Prime 20557099 := by norm_num
theorem prime16 : Nat.Prime 20562109 := by norm_num
theorem chain : RatioPrimeChain 20482069 20562109 := by
  refine .step (q := 20487067) B699TailExtension20261004.Tail5000Block005.prime13 (by decide) (by decide) ?_
  refine .step (q := 20492063) prime1 (by decide) (by decide) ?_
  refine .step (q := 20497063) prime2 (by decide) (by decide) ?_
  refine .step (q := 20502059) prime3 (by decide) (by decide) ?_
  refine .step (q := 20507051) prime4 (by decide) (by decide) ?_
  refine .step (q := 20512031) prime5 (by decide) (by decide) ?_
  refine .step (q := 20517037) prime6 (by decide) (by decide) ?_
  refine .step (q := 20522041) prime7 (by decide) (by decide) ?_
  refine .step (q := 20527037) prime8 (by decide) (by decide) ?_
  refine .step (q := 20532049) prime9 (by decide) (by decide) ?_
  refine .step (q := 20537059) prime10 (by decide) (by decide) ?_
  refine .step (q := 20542073) prime11 (by decide) (by decide) ?_
  refine .step (q := 20547089) prime12 (by decide) (by decide) ?_
  refine .step (q := 20552083) prime13 (by decide) (by decide) ?_
  refine .step (q := 20557099) prime14 (by decide) (by decide) ?_
  refine .step (q := 20562109) prime15 (by decide) (by decide) ?_
  exact .singleton prime16
end B699TailNinety20261004.RatioPilot16
#print axioms B699TailNinety20261004.RatioPilot16.prime1
#print axioms B699TailNinety20261004.RatioPilot16.prime2
#print axioms B699TailNinety20261004.RatioPilot16.prime3
#print axioms B699TailNinety20261004.RatioPilot16.prime4
#print axioms B699TailNinety20261004.RatioPilot16.prime5
#print axioms B699TailNinety20261004.RatioPilot16.prime6
#print axioms B699TailNinety20261004.RatioPilot16.prime7
#print axioms B699TailNinety20261004.RatioPilot16.prime8
#print axioms B699TailNinety20261004.RatioPilot16.prime9
#print axioms B699TailNinety20261004.RatioPilot16.prime10
#print axioms B699TailNinety20261004.RatioPilot16.prime11
#print axioms B699TailNinety20261004.RatioPilot16.prime12
#print axioms B699TailNinety20261004.RatioPilot16.prime13
#print axioms B699TailNinety20261004.RatioPilot16.prime14
#print axioms B699TailNinety20261004.RatioPilot16.prime15
#print axioms B699TailNinety20261004.RatioPilot16.prime16
#print axioms B699TailNinety20261004.RatioPilot16.chain
