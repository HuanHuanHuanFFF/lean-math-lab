import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Divisor

/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct
open Math.B699.PadeConstruction

#check (@Math.B699.C2Direct.c2_dvd_qMagnitude : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta),
  c2 x y z ∣ qMagnitude (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.c2_dvd_qMagnitude

#check (@Math.B699.C2Direct.c2_dvd_qCoefficient : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta),
  (c2 x y z : ℤ) ∣ qCoefficient (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.c2_dvd_qCoefficient

#check (@Math.B699.C2Direct.c2_dvd_qContent : ∀ (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  c2 x y z ∣ qContent (x - delta) (z - 1 + delta) (y - delta))
#print axioms Math.B699.C2Direct.c2_dvd_qContent

#check (@Math.B699.C2Direct.c2_le_qContent : ∀ (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  c2 x y z ≤ qContent (x - delta) (z - 1 + delta) (y - delta))
#print axioms Math.B699.C2Direct.c2_le_qContent

#check (@Math.B699.C2Direct.c2_dvd_qPolynomial_coeff : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  (c2 x y z : ℤ) ∣ (qPolynomial (x - delta) (z - 1 + delta) (y - delta)).coeff r)
#print axioms Math.B699.C2Direct.c2_dvd_qPolynomial_coeff
