import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.PDivisor

/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct
open Math.B699.PadeConstruction

#check (@Math.B699.C2Direct.c2_dvd_swapped_qMagnitude : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ y - delta),
  c2 x y z ∣ qMagnitude (y - delta) (z - 1 + delta) (x - delta) r)
#print axioms Math.B699.C2Direct.c2_dvd_swapped_qMagnitude

#check (@Math.B699.C2Direct.c2_dvd_pMagnitude : ∀ (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hk : k ≤ y - delta),
  c2 x y z ∣ ((x - delta + (z - 1 + delta) + (y - delta) + 1).choose k) *
      ((x - delta + (y - delta) - k).choose (x - delta)))
#print axioms Math.B699.C2Direct.c2_dvd_pMagnitude

#check (@Math.B699.C2Direct.c2_dvd_pCoefficient : ∀ (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hk : k ≤ y - delta),
  (c2 x y z : ℤ) ∣ pCoefficient (x - delta) (z - 1 + delta) (y - delta) k)
#print axioms Math.B699.C2Direct.c2_dvd_pCoefficient

#check (@Math.B699.C2Direct.c2_dvd_pPolynomial_coeff : ∀ (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  (c2 x y z : ℤ) ∣ (pPolynomial (x - delta) (z - 1 + delta) (y - delta)).coeff k)
#print axioms Math.B699.C2Direct.c2_dvd_pPolynomial_coeff
