module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000Block005
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailNinety20261004.FixedPilot16
theorem prime1 : Nat.Prime 20486933 := by norm_num
theorem prime2 : Nat.Prime 20491811 := by norm_num
theorem prime3 : Nat.Prime 20496689 := by norm_num
theorem prime4 : Nat.Prime 20501563 := by norm_num
theorem prime5 : Nat.Prime 20506441 := by norm_num
theorem prime6 : Nat.Prime 20511319 := by norm_num
theorem prime7 : Nat.Prime 20516183 := by norm_num
theorem prime8 : Nat.Prime 20521063 := by norm_num
theorem prime9 : Nat.Prime 20525941 := by norm_num
theorem prime10 : Nat.Prime 20530793 := by norm_num
theorem prime11 : Nat.Prime 20535661 := by norm_num
theorem prime12 : Nat.Prime 20540543 := by norm_num
theorem prime13 : Nat.Prime 20545423 := by norm_num
theorem prime14 : Nat.Prime 20550301 := by norm_num
theorem prime15 : Nat.Prime 20555167 := by norm_num
theorem prime16 : Nat.Prime 20560039 := by norm_num
theorem chain : B699Finite20261002.PrimeChain 4883 20482069 20560039 := by
  refine .step (q := 20486933) B699TailExtension20261004.Tail5000Block005.prime13 (by decide) (by decide) ?_
  refine .step (q := 20491811) prime1 (by decide) (by decide) ?_
  refine .step (q := 20496689) prime2 (by decide) (by decide) ?_
  refine .step (q := 20501563) prime3 (by decide) (by decide) ?_
  refine .step (q := 20506441) prime4 (by decide) (by decide) ?_
  refine .step (q := 20511319) prime5 (by decide) (by decide) ?_
  refine .step (q := 20516183) prime6 (by decide) (by decide) ?_
  refine .step (q := 20521063) prime7 (by decide) (by decide) ?_
  refine .step (q := 20525941) prime8 (by decide) (by decide) ?_
  refine .step (q := 20530793) prime9 (by decide) (by decide) ?_
  refine .step (q := 20535661) prime10 (by decide) (by decide) ?_
  refine .step (q := 20540543) prime11 (by decide) (by decide) ?_
  refine .step (q := 20545423) prime12 (by decide) (by decide) ?_
  refine .step (q := 20550301) prime13 (by decide) (by decide) ?_
  refine .step (q := 20555167) prime14 (by decide) (by decide) ?_
  refine .step (q := 20560039) prime15 (by decide) (by decide) ?_
  exact .singleton prime16
end B699TailNinety20261004.FixedPilot16
#print axioms B699TailNinety20261004.FixedPilot16.prime1
#print axioms B699TailNinety20261004.FixedPilot16.prime2
#print axioms B699TailNinety20261004.FixedPilot16.prime3
#print axioms B699TailNinety20261004.FixedPilot16.prime4
#print axioms B699TailNinety20261004.FixedPilot16.prime5
#print axioms B699TailNinety20261004.FixedPilot16.prime6
#print axioms B699TailNinety20261004.FixedPilot16.prime7
#print axioms B699TailNinety20261004.FixedPilot16.prime8
#print axioms B699TailNinety20261004.FixedPilot16.prime9
#print axioms B699TailNinety20261004.FixedPilot16.prime10
#print axioms B699TailNinety20261004.FixedPilot16.prime11
#print axioms B699TailNinety20261004.FixedPilot16.prime12
#print axioms B699TailNinety20261004.FixedPilot16.prime13
#print axioms B699TailNinety20261004.FixedPilot16.prime14
#print axioms B699TailNinety20261004.FixedPilot16.prime15
#print axioms B699TailNinety20261004.FixedPilot16.prime16
#print axioms B699TailNinety20261004.FixedPilot16.chain
