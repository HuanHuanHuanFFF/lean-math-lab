import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Normalization

/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct
open Math.B699.PadeConstruction
open Polynomial

#check (@Math.B699.C2Direct.qQuotient : ∀ (x y z delta r : ℕ),
  ℤ)
#print axioms Math.B699.C2Direct.qQuotient
#print Math.B699.C2Direct.qQuotient

#check (@Math.B699.C2Direct.pQuotient : ∀ (x y z delta r : ℕ),
  ℤ)
#print axioms Math.B699.C2Direct.pQuotient
#print Math.B699.C2Direct.pQuotient

#check (@Math.B699.C2Direct.qQuotientPolynomial : ∀ (x y z delta : ℕ),
  ℤ[X])
#print axioms Math.B699.C2Direct.qQuotientPolynomial
#print Math.B699.C2Direct.qQuotientPolynomial

#check (@Math.B699.C2Direct.pQuotientPolynomial : ∀ (x y z delta : ℕ),
  ℤ[X])
#print axioms Math.B699.C2Direct.pQuotientPolynomial
#print Math.B699.C2Direct.pQuotientPolynomial

#check (@Math.B699.C2Direct.qQuotientValue : ∀ (x y z delta : ℕ) (a b : ℤ),
  ℤ)
#print axioms Math.B699.C2Direct.qQuotientValue
#print Math.B699.C2Direct.qQuotientValue

#check (@Math.B699.C2Direct.pQuotientValue : ∀ (x y z delta : ℕ) (a b : ℤ),
  ℤ)
#print axioms Math.B699.C2Direct.pQuotientValue
#print Math.B699.C2Direct.pQuotientValue

#check (@Math.B699.C2Direct.c2_mul_qQuotient : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta),
  (c2 x y z : ℤ) * qQuotient x y z delta r =
      qCoefficient (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.c2_mul_qQuotient

#check (@Math.B699.C2Direct.c2_mul_pQuotient : ∀ (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ y - delta),
  (c2 x y z : ℤ) * pQuotient x y z delta r =
      pCoefficient (x - delta) (z - 1 + delta) (y - delta) r)
#print axioms Math.B699.C2Direct.c2_mul_pQuotient

#check (@Math.B699.C2Direct.c2_mul_qQuotientPolynomial : ∀ (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  Polynomial.C (c2 x y z : ℤ) * qQuotientPolynomial x y z delta =
      qPolynomial (x - delta) (z - 1 + delta) (y - delta))
#print axioms Math.B699.C2Direct.c2_mul_qQuotientPolynomial

#check (@Math.B699.C2Direct.c2_mul_pQuotientPolynomial : ∀ (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  Polynomial.C (c2 x y z : ℤ) * pQuotientPolynomial x y z delta =
      pPolynomial (x - delta) (z - 1 + delta) (y - delta))
#print axioms Math.B699.C2Direct.c2_mul_pQuotientPolynomial

#check (@Math.B699.C2Direct.c2_mul_qQuotientValue : ∀ (x y z delta : ℕ) (a b : ℤ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  (c2 x y z : ℤ) * qQuotientValue x y z delta a b =
      homogeneousValue (x - delta)
        (qCoefficient (x - delta) (z - 1 + delta) (y - delta)) a b)
#print axioms Math.B699.C2Direct.c2_mul_qQuotientValue

#check (@Math.B699.C2Direct.c2_mul_pQuotientValue : ∀ (x y z delta : ℕ) (a b : ℤ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1),
  (c2 x y z : ℤ) * pQuotientValue x y z delta a b =
      homogeneousValue (y - delta)
        (pCoefficient (x - delta) (z - 1 + delta) (y - delta)) a b)
#print axioms Math.B699.C2Direct.c2_mul_pQuotientValue
