import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Finite

/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct

#check (@Math.B699.C2Direct.total : ∀ (x y z : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.total
#print Math.B699.C2Direct.total

#check (@Math.B699.C2Direct.layer : ∀ (x y z q : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.layer
#print Math.B699.C2Direct.layer

#check (@Math.B699.C2Direct.cutoff : ∀ (x y z p : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.cutoff
#print Math.B699.C2Direct.cutoff

#check (@Math.B699.C2Direct.exponent : ∀ (x y z p : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.exponent
#print Math.B699.C2Direct.exponent

#check (@Math.B699.C2Direct.primeSet : ∀ (x y z : ℕ),
  Finset ℕ)
#print axioms Math.B699.C2Direct.primeSet
#print Math.B699.C2Direct.primeSet

#check (@Math.B699.C2Direct.c2 : ∀ (x y z : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.c2
#print Math.B699.C2Direct.c2

#check (@Math.B699.C2Direct.layer_one : ∀ (x y z : ℕ),
  layer x y z 1 = 0)
#print axioms Math.B699.C2Direct.layer_one

#check (@Math.B699.C2Direct.layer_support : ∀ (x y z q : ℕ) (h : layer x y z q = 1),
  2 * q + 1 ≤ total x y z)
#print axioms Math.B699.C2Direct.layer_support

#check (@Math.B699.C2Direct.layer_zero_of_large : ∀ (x y z q : ℕ) (hq : total x y z < q),
  layer x y z q = 0)
#print axioms Math.B699.C2Direct.layer_zero_of_large

#check (@Math.B699.C2Direct.layer_zero_above_cutoff : ∀ (x y z p h : ℕ) (hp : p.Prime)
    (hh : cutoff x y z p ≤ h),
  layer x y z (p ^ h) = 0)
#print axioms Math.B699.C2Direct.layer_zero_above_cutoff

#check (@Math.B699.C2Direct.layer_zero_outside : ∀ (x y z p h : ℕ) (hp : p.Prime)
    (hh : h ∉ Finset.Ico 1 (cutoff x y z p)),
  layer x y z (p ^ h) = 0)
#print axioms Math.B699.C2Direct.layer_zero_outside

#check (@Math.B699.C2Direct.exponent_zero_of_large_prime : ∀ (x y z p : ℕ) (hp : p.Prime)
    (hlarge : total x y z < p),
  exponent x y z p = 0)
#print axioms Math.B699.C2Direct.exponent_zero_of_large_prime

#check (@Math.B699.C2Direct.c2_pos : ∀ (x y z : ℕ),
  0 < c2 x y z)
#print axioms Math.B699.C2Direct.c2_pos

#check (@Math.B699.C2Direct.layer_swap : ∀ (x y z q : ℕ),
  layer x y z q = layer y x z q)
#print axioms Math.B699.C2Direct.layer_swap

#check (@Math.B699.C2Direct.exponent_swap : ∀ (x y z p : ℕ),
  exponent x y z p = exponent y x z p)
#print axioms Math.B699.C2Direct.exponent_swap

#check (@Math.B699.C2Direct.c2_swap : ∀ (x y z : ℕ),
  c2 x y z = c2 y x z)
#print axioms Math.B699.C2Direct.c2_swap
