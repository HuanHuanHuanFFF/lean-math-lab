import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PadeInteger

/-! UNCOMPILED diagnostic layer. All polynomial simplification occurs with
symbolic coefficients. No concrete fastECoefficient or rational value is imported. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
universe u
namespace Math.B699.I11ECoefficientStaging
open scoped BigOperators
open Math.B699.PadeConstruction

/-- Structural evaluation bridge, proved before any coefficients become numbers. -/
theorem coefficientPolynomial_eval_sum {R : Type u} [Semiring R]
    (n : ℕ) (a : ℕ → ℤ) (f : ℤ →+* R) (z : R) :
    (coefficientPolynomial n a).eval₂ f z =
      ∑ r ∈ Finset.range (n + 1), f (a r) * z ^ r := by
  classical
  simp only [coefficientPolynomial, Polynomial.eval₂_finsetSum,
    Polynomial.eval₂_monomial]

/-- Only the eight-term sum is unfolded here; a, f and z remain symbolic. -/
theorem coefficientPolynomial_eval_seven {R : Type u} [Semiring R]
    (a : ℕ → ℤ) (f : ℤ →+* R) (z : R) :
    (coefficientPolynomial 7 a).eval₂ f z =
      f (a 0) * z ^ 0 +
      f (a 1) * z ^ 1 +
      f (a 2) * z ^ 2 +
      f (a 3) * z ^ 3 +
      f (a 4) * z ^ 4 +
      f (a 5) * z ^ 5 +
      f (a 6) * z ^ 6 +
      f (a 7) * z ^ 7 := by
  rw [coefficientPolynomial_eval_sum]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add]

/-- Substitute proved integer coefficients while the polynomial is still symbolic. -/
theorem coefficientPolynomial_eval_seven_of_coeffs {R : Type u} [Semiring R]
    (a : ℕ → ℤ) (f : ℤ →+* R) (z : R)
    (c0 c1 c2 c3 c4 c5 c6 c7 : ℤ)
    (h0 : a 0 = c0) (h1 : a 1 = c1) (h2 : a 2 = c2) (h3 : a 3 = c3)
    (h4 : a 4 = c4) (h5 : a 5 = c5) (h6 : a 6 = c6) (h7 : a 7 = c7) :
    (coefficientPolynomial 7 a).eval₂ f z =
      f c0 * z ^ 0 +
      f c1 * z ^ 1 +
      f c2 * z ^ 2 +
      f c3 * z ^ 3 +
      f c4 * z ^ 4 +
      f c5 * z ^ 5 +
      f c6 * z ^ 6 +
      f c7 * z ^ 7 := by
  rw [coefficientPolynomial_eval_seven, h0, h1, h2, h3, h4, h5, h6, h7]

end Math.B699.I11ECoefficientStaging
