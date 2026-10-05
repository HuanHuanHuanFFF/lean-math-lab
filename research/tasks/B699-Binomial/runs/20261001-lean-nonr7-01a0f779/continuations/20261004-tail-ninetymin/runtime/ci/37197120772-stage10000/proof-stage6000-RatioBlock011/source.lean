module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioCore
public import Mathlib.Tactic.NormNum.Prime
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioBlock010
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
@[expose] public section
namespace B699TailNinety20261004.RatioBlock011
theorem prime1 : Nat.Prime 24413329 := by norm_num
theorem prime2 : Nat.Prime 24419281 := by norm_num
theorem prime3 : Nat.Prime 24425239 := by norm_num
theorem prime4 : Nat.Prime 24431201 := by norm_num
theorem prime5 : Nat.Prime 24437167 := by norm_num
theorem prime6 : Nat.Prime 24443131 := by norm_num
theorem prime7 : Nat.Prime 24449083 := by norm_num
theorem prime8 : Nat.Prime 24455047 := by norm_num
theorem prime9 : Nat.Prime 24460981 := by norm_num
theorem prime10 : Nat.Prime 24466943 := by norm_num
theorem prime11 : Nat.Prime 24472907 := by norm_num
theorem prime12 : Nat.Prime 24478849 := by norm_num
theorem prime13 : Nat.Prime 24484819 := by norm_num
theorem prime14 : Nat.Prime 24490793 := by norm_num
theorem prime15 : Nat.Prime 24496739 := by norm_num
theorem prime16 : Nat.Prime 24502717 := by norm_num
theorem prime17 : Nat.Prime 24508691 := by norm_num
theorem prime18 : Nat.Prime 24514669 := by norm_num
theorem prime19 : Nat.Prime 24520651 := by norm_num
theorem prime20 : Nat.Prime 24526627 := by norm_num
theorem prime21 : Nat.Prime 24532609 := by norm_num
theorem prime22 : Nat.Prime 24538597 := by norm_num
theorem prime23 : Nat.Prime 24544577 := by norm_num
theorem prime24 : Nat.Prime 24550553 := by norm_num
theorem prime25 : Nat.Prime 24556507 := by norm_num
theorem prime26 : Nat.Prime 24562463 := by norm_num
theorem prime27 : Nat.Prime 24568457 := by norm_num
theorem prime28 : Nat.Prime 24574447 := by norm_num
theorem chain : RatioPrimeChain 24407371 24574447 := by
  refine .step (q := 24413329) B699TailNinety20261004.RatioBlock010.prime64 (by decide) (by decide) ?_
  refine .step (q := 24419281) prime1 (by decide) (by decide) ?_
  refine .step (q := 24425239) prime2 (by decide) (by decide) ?_
  refine .step (q := 24431201) prime3 (by decide) (by decide) ?_
  refine .step (q := 24437167) prime4 (by decide) (by decide) ?_
  refine .step (q := 24443131) prime5 (by decide) (by decide) ?_
  refine .step (q := 24449083) prime6 (by decide) (by decide) ?_
  refine .step (q := 24455047) prime7 (by decide) (by decide) ?_
  refine .step (q := 24460981) prime8 (by decide) (by decide) ?_
  refine .step (q := 24466943) prime9 (by decide) (by decide) ?_
  refine .step (q := 24472907) prime10 (by decide) (by decide) ?_
  refine .step (q := 24478849) prime11 (by decide) (by decide) ?_
  refine .step (q := 24484819) prime12 (by decide) (by decide) ?_
  refine .step (q := 24490793) prime13 (by decide) (by decide) ?_
  refine .step (q := 24496739) prime14 (by decide) (by decide) ?_
  refine .step (q := 24502717) prime15 (by decide) (by decide) ?_
  refine .step (q := 24508691) prime16 (by decide) (by decide) ?_
  refine .step (q := 24514669) prime17 (by decide) (by decide) ?_
  refine .step (q := 24520651) prime18 (by decide) (by decide) ?_
  refine .step (q := 24526627) prime19 (by decide) (by decide) ?_
  refine .step (q := 24532609) prime20 (by decide) (by decide) ?_
  refine .step (q := 24538597) prime21 (by decide) (by decide) ?_
  refine .step (q := 24544577) prime22 (by decide) (by decide) ?_
  refine .step (q := 24550553) prime23 (by decide) (by decide) ?_
  refine .step (q := 24556507) prime24 (by decide) (by decide) ?_
  refine .step (q := 24562463) prime25 (by decide) (by decide) ?_
  refine .step (q := 24568457) prime26 (by decide) (by decide) ?_
  refine .step (q := 24574447) prime27 (by decide) (by decide) ?_
  exact .singleton prime28
end B699TailNinety20261004.RatioBlock011
#print axioms B699TailNinety20261004.RatioBlock011.prime1
#print axioms B699TailNinety20261004.RatioBlock011.prime2
#print axioms B699TailNinety20261004.RatioBlock011.prime3
#print axioms B699TailNinety20261004.RatioBlock011.prime4
#print axioms B699TailNinety20261004.RatioBlock011.prime5
#print axioms B699TailNinety20261004.RatioBlock011.prime6
#print axioms B699TailNinety20261004.RatioBlock011.prime7
#print axioms B699TailNinety20261004.RatioBlock011.prime8
#print axioms B699TailNinety20261004.RatioBlock011.prime9
#print axioms B699TailNinety20261004.RatioBlock011.prime10
#print axioms B699TailNinety20261004.RatioBlock011.prime11
#print axioms B699TailNinety20261004.RatioBlock011.prime12
#print axioms B699TailNinety20261004.RatioBlock011.prime13
#print axioms B699TailNinety20261004.RatioBlock011.prime14
#print axioms B699TailNinety20261004.RatioBlock011.prime15
#print axioms B699TailNinety20261004.RatioBlock011.prime16
#print axioms B699TailNinety20261004.RatioBlock011.prime17
#print axioms B699TailNinety20261004.RatioBlock011.prime18
#print axioms B699TailNinety20261004.RatioBlock011.prime19
#print axioms B699TailNinety20261004.RatioBlock011.prime20
#print axioms B699TailNinety20261004.RatioBlock011.prime21
#print axioms B699TailNinety20261004.RatioBlock011.prime22
#print axioms B699TailNinety20261004.RatioBlock011.prime23
#print axioms B699TailNinety20261004.RatioBlock011.prime24
#print axioms B699TailNinety20261004.RatioBlock011.prime25
#print axioms B699TailNinety20261004.RatioBlock011.prime26
#print axioms B699TailNinety20261004.RatioBlock011.prime27
#print axioms B699TailNinety20261004.RatioBlock011.prime28
#print axioms B699TailNinety20261004.RatioBlock011.chain
