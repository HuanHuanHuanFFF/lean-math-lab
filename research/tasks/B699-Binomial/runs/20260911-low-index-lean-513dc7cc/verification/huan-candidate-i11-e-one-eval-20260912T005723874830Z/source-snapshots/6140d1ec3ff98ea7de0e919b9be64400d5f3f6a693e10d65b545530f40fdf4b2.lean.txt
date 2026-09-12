import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ECoefficientStaging.EvalBridge

/-! UNCOMPILED delta1 candidate. Reuse the accepted symbolic eval-to-sum
bridge, expanding nine terms while a,f,z are still symbolic. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
universe u
namespace Math.B699.I11EOne
open scoped BigOperators
open Math.B699.PadeConstruction
open Math.B699.I11ECoefficientStaging

theorem coefficientPolynomial_eval_eight {R : Type u} [Semiring R]
    (a : ℕ → ℤ) (f : ℤ →+* R) (z : R) :
    (coefficientPolynomial 8 a).eval₂ f z =
      f (a 0) * z ^ 0 +
      f (a 1) * z ^ 1 +
      f (a 2) * z ^ 2 +
      f (a 3) * z ^ 3 +
      f (a 4) * z ^ 4 +
      f (a 5) * z ^ 5 +
      f (a 6) * z ^ 6 +
      f (a 7) * z ^ 7 +
      f (a 8) * z ^ 8 := by
  rw [coefficientPolynomial_eval_sum]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add]

theorem coefficientPolynomial_eval_eight_of_coeffs {R : Type u} [Semiring R]
    (a : ℕ → ℤ) (f : ℤ →+* R) (z : R)
    (c0 c1 c2 c3 c4 c5 c6 c7 c8 : ℤ)
    (h0 : a 0 = c0) (h1 : a 1 = c1) (h2 : a 2 = c2) (h3 : a 3 = c3)
    (h4 : a 4 = c4) (h5 : a 5 = c5) (h6 : a 6 = c6) (h7 : a 7 = c7)
    (h8 : a 8 = c8) :
    (coefficientPolynomial 8 a).eval₂ f z =
      f c0 * z ^ 0 +
      f c1 * z ^ 1 +
      f c2 * z ^ 2 +
      f c3 * z ^ 3 +
      f c4 * z ^ 4 +
      f c5 * z ^ 5 +
      f c6 * z ^ 6 +
      f c7 * z ^ 7 +
      f c8 * z ^ 8 := by
  rw [coefficientPolynomial_eval_eight, h0, h1, h2, h3, h4, h5, h6, h7, h8]

end Math.B699.I11EOne
