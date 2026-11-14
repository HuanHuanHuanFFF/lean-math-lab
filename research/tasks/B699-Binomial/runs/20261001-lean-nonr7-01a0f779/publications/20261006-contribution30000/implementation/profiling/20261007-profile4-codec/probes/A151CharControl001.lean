import Init

namespace Contribution.B699ProfilingA151CharControl001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option profiler true
set_option profiler.threshold 100
inductive Witness where
  | topPrime (p : Nat)
  | largeDivisor (D : Nat)
  deriving DecidableEq
structure Good where
  lower : Nat
  upper : Nat
  witness : Witness
  deriving DecidableEq
structure Layer where
  lower : Nat
  upper : Nat
  M : Nat
  deriving DecidableEq
def digit37 (c : Char) : Nat :=
  let n := c.toNat
  if n ≤ 44 then n - 35 else if n = 46 then 10 else if n ≤ 64 then n - 37
    else if n = 91 then 28 else if n ≤ 96 then n - 64 else n - 90
def quadruple37 (a b c d : Char) : Nat :=
  37 * (37 * (37 * digit37 a + digit37 b) + digit37 c) + digit37 d
def double37 (a b : Char) : Nat := 37 * digit37 a + digit37 b
def decodeCharGoods (divisors : List Nat) : Nat → List Char → List Good
  | previous,k::a::b::c::d::e::f::g::h::rest =>
    let lo := previous + quadruple37 a b c d
    let witness := if k.toNat = 35 then Witness.topPrime (lo - double37 g h)
      else Witness.largeDivisor (divisors[double37 g h]?.getD 0)
    ⟨lo,lo + double37 e f,witness⟩ :: decodeCharGoods divisors lo rest
  | _,_ => []
def decodeCharLayers (stop : Nat) : Nat → List Char → List Layer
  | lower,a::b::cs =>
    let upper := min (2 * lower) stop
    ⟨lower,upper,double37 a b⟩ :: decodeCharLayers stop upper cs
  | _,_ => []
def sourceGoods : List Good := [⟨90,132,.topPrime 89⟩]
def sourceLayers : List Layer := [⟨1892,3784,46⟩]
theorem codecExact : decodeCharGoods [10043284475396850876113164237332660150614874788659569251777115293107166683579801494461919968002247363569864717630636698195278591166228672827,980565441030043368105691041937020667411134090054061833393523086816826989231751084175096347161492195681691986301169043963041885838639133409,291154584830857301130969299739904714004132058864147777056268672404996357059634213612339300878148439929350488819117196624179944992014465037,744618175904405185300547755628794620412444069229575745700590170005272153199424169449540151033951170452623494079227795275756528591774288613] 0 "###%5$(#$".toList = sourceGoods ∧ decodeCharLayers 1000000000000000000000000000000000000000000000000000000000000000000 1892 "$,".toList = sourceLayers := by
  decide +kernel

end Contribution.B699ProfilingA151CharControl001

#check Contribution.B699ProfilingA151CharControl001.codecExact
#print axioms Contribution.B699ProfilingA151CharControl001.codecExact
