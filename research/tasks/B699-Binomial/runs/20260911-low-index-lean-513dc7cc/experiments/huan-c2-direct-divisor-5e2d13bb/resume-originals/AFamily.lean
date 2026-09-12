import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct.Family

#check @Math.B699.C2Direct.sourceDivisor
#print axioms Math.B699.C2Direct.sourceDivisor
#check @Math.B699.C2Direct.source_products_pos
#print axioms Math.B699.C2Direct.source_products_pos
#check @Math.B699.C2Direct.sourceDivisor_pos
#print axioms Math.B699.C2Direct.sourceDivisor_pos
#check @Math.B699.C2Direct.source_layer_tail
#print axioms Math.B699.C2Direct.source_layer_tail
#check @Math.B699.C2Direct.source_dvd_qMagnitude
#print axioms Math.B699.C2Direct.source_dvd_qMagnitude
#check @Math.B699.C2Direct.source_dvd_qCoefficient
#print axioms Math.B699.C2Direct.source_dvd_qCoefficient
#check @Math.B699.C2Direct.source_dvd_qContent
#print axioms Math.B699.C2Direct.source_dvd_qContent
#check @Math.B699.C2Direct.source_dvd_pCoefficient
#print axioms Math.B699.C2Direct.source_dvd_pCoefficient
#check @Math.B699.C2Direct.source_integer_polynomials
#print axioms Math.B699.C2Direct.source_integer_polynomials

#check (Math.B699.C2Direct.source_dvd_qContent :
  ∀ (e d f m delta : ℕ), 1 ≤ e → 1 ≤ d → 1 ≤ f → 1 ≤ m →
    (delta = 0 ∨ delta = 1) →
    Math.B699.C2Direct.sourceDivisor e d f m ∣
      Math.B699.PadeConstruction.qContent (e * m - delta) (f * m - 1 + delta) (d * m - delta))
#check (Math.B699.C2Direct.source_integer_polynomials :
  ∀ (e d f m delta : ℕ), 1 ≤ e → 1 ≤ d → 1 ≤ f → 1 ≤ m →
    (delta = 0 ∨ delta = 1) → ∃ P Q : Polynomial ℤ,
    Polynomial.C (Math.B699.C2Direct.sourceDivisor e d f m : ℤ) * P =
      Math.B699.PadeConstruction.pPolynomial (e * m - delta) (f * m - 1 + delta) (d * m - delta) ∧
    Polynomial.C (Math.B699.C2Direct.sourceDivisor e d f m : ℤ) * Q =
      Math.B699.PadeConstruction.qPolynomial (e * m - delta) (f * m - 1 + delta) (d * m - delta))
