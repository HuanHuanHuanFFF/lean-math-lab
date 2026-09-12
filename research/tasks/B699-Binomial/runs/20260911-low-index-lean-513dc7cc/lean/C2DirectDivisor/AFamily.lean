import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Family

/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699.C2Direct
open Math.B699.PadeConstruction
open Polynomial

#check (@Math.B699.C2Direct.sourceDivisor : ∀ (e d f m : ℕ),
  ℕ)
#print axioms Math.B699.C2Direct.sourceDivisor
#print Math.B699.C2Direct.sourceDivisor

#check (@Math.B699.C2Direct.source_products_pos : ∀ (e d f m : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m),
  1 ≤ e * m ∧ 1 ≤ d * m ∧ 1 ≤ f * m)
#print axioms Math.B699.C2Direct.source_products_pos

#check (@Math.B699.C2Direct.sourceDivisor_pos : ∀ (e d f m : ℕ),
  0 < sourceDivisor e d f m)
#print axioms Math.B699.C2Direct.sourceDivisor_pos

#check (@Math.B699.C2Direct.source_layer_tail : ∀ (e d f m p h : ℕ)
    (ht : (e + d + f) * m < p ^ h),
  layer (e * m) (d * m) (f * m) (p ^ h) = 0)
#print axioms Math.B699.C2Direct.source_layer_tail

#check (@Math.B699.C2Direct.source_dvd_qMagnitude : ∀ (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ e * m - delta),
  sourceDivisor e d f m ∣ qMagnitude (e * m - delta) (f * m - 1 + delta) (d * m - delta) r)
#print axioms Math.B699.C2Direct.source_dvd_qMagnitude

#check (@Math.B699.C2Direct.source_dvd_qCoefficient : ∀ (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ e * m - delta),
  (sourceDivisor e d f m : ℤ) ∣
      qCoefficient (e * m - delta) (f * m - 1 + delta) (d * m - delta) r)
#print axioms Math.B699.C2Direct.source_dvd_qCoefficient

#check (@Math.B699.C2Direct.source_dvd_qContent : ∀ (e d f m delta : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1),
  sourceDivisor e d f m ∣ qContent (e * m - delta) (f * m - 1 + delta) (d * m - delta))
#print axioms Math.B699.C2Direct.source_dvd_qContent

#check (@Math.B699.C2Direct.source_dvd_pCoefficient : ∀ (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ d * m - delta),
  (sourceDivisor e d f m : ℤ) ∣
      pCoefficient (e * m - delta) (f * m - 1 + delta) (d * m - delta) r)
#print axioms Math.B699.C2Direct.source_dvd_pCoefficient

#check (@Math.B699.C2Direct.source_integer_polynomials : ∀ (e d f m delta : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1),
  ∃ P Q : ℤ[X],
      Polynomial.C (sourceDivisor e d f m : ℤ) * P =
        pPolynomial (e * m - delta) (f * m - 1 + delta) (d * m - delta) ∧
      Polynomial.C (sourceDivisor e d f m : ℤ) * Q =
        qPolynomial (e * m - delta) (f * m - 1 + delta) (d * m - delta))
#print axioms Math.B699.C2Direct.source_integer_polynomials
