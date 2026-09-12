import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Content

/-!
# Actual integer homogeneous values over the rationals

UNCOMPILED CANDIDATE. The accepted construction supplies the actual finite
integer coefficient arrays and the actual content-divisibility identities.
This module proves the rational evaluation correspondence directly, using
the same finite-sum argument as the accepted real-valued correspondence.
No source identity, gcd divisibility, or analytic estimate is an input.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.PadeRationalHomogeneous

open Polynomial Math.B699.PadeConstruction Math.B699.PadeContent
open scoped BigOperators

/-- Rational evaluation of the actual integer homogeneous finite sum.
Only the denominator is required to be nonzero; the numerator may be zero. -/
theorem homogeneousValue_cast_q (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue n a x y : ℚ) =
      (y : ℚ) ^ n * (coefficientPolynomial n a).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  classical
  have hyq : (y : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hy
  simp only [homogeneousValue, coefficientPolynomial, Int.cast_sum, Int.cast_mul,
    Int.cast_pow, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hpow : (y : ℚ) ^ n = (y : ℚ) ^ (n - r) * (y : ℚ) ^ r := by
    rw [← pow_add, Nat.sub_add_cancel hle]
  change (a r : ℚ) * (x : ℚ) ^ r * (y : ℚ) ^ (n - r) =
    (y : ℚ) ^ n * ((a r : ℚ) * ((x : ℚ) / (y : ℚ)) ^ r)
  rw [hpow, div_pow]
  field_simp [hyq]
  <;> ring

/-- The actual P array has homogeneous degree C, including degenerate cases. -/
theorem p_homogeneousValue_cast_q (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue C (pCoefficient A B C) x y : ℚ) =
      (y : ℚ) ^ C * (pPolynomial A B C).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  simpa only [pPolynomial] using
    homogeneousValue_cast_q C (pCoefficient A B C) x y hy

/-- The actual Q array has homogeneous degree A, including degenerate cases. -/
theorem q_homogeneousValue_cast_q (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue A (qCoefficient A B C) x y : ℚ) =
      (y : ℚ) ^ A * (qPolynomial A B C).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  simpa only [qPolynomial] using
    homogeneousValue_cast_q A (qCoefficient A B C) x y hy

/-- Cast the accepted actual P-content identity; this statement even permits y=0. -/
theorem qContent_mul_pNormalizedValue_cast_q (u v : ℕ) (x y : ℤ) :
    (qContent u v u : ℚ) * (pNormalizedValue u v x y : ℚ) =
      (homogeneousValue u (pCoefficient u v u) x y : ℚ) := by
  have h := congrArg (fun k : ℤ => (k : ℚ))
    (qContent_mul_pNormalizedValue u v x y)
  simpa only [Int.cast_mul, Int.cast_natCast] using h

/-- Cast the accepted actual Q-content identity; no divisibility is assumed. -/
theorem qContent_mul_qNormalizedValue_cast_q (A B C : ℕ) (x y : ℤ) :
    (qContent A B C : ℚ) * (qNormalizedValue A B C x y : ℚ) =
      (homogeneousValue A (qCoefficient A B C) x y : ℚ) := by
  have h := congrArg (fun k : ℤ => (k : ℚ))
    (qContent_mul_normalizedValue A B C x y)
  simpa only [Int.cast_mul, Int.cast_natCast] using h

end Math.B699.PadeRationalHomogeneous
