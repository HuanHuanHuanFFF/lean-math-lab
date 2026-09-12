import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-construction-5e2d13bb».ActualRawDeterminant

/-!
# Actual raw homogeneous determinant

The polynomial determinant is already proved by the preceding candidate chain.
This module transfers it to the accepted integer homogeneousValue construction.
The denominator input y is nonzero, as in the source application. The recurrence
and determinant theorems themselves contain no division; the existing real cast
identity is used here solely to identify the actual denominator-cleared integers.
-/

namespace Math.B699.PadeActualRecurrence

open Polynomial
open Math.B699.PadeConstruction

def rawHomogeneousDeterminant (u v : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue u (pCoefficient u v u) x y *
      homogeneousValue (u - 1) (qCoefficient (u - 1) (v + 1) (u - 1)) x y -
    homogeneousValue (u - 1) (pCoefficient (u - 1) (v + 1) (u - 1)) x y *
      homogeneousValue u (qCoefficient u v u) x y

private theorem p_homogeneous_cast (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue u (pCoefficient u v u) x y : ℝ) =
      (y : ℝ) ^ u * (pPolynomial u v u).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  simpa only [pPolynomial] using homogeneousValue_cast_eq u (pCoefficient u v u) x y hy

private theorem q_homogeneous_cast (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue u (qCoefficient u v u) x y : ℝ) =
      (y : ℝ) ^ u * (qPolynomial u v u).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  simpa only [qPolynomial] using homogeneousValue_cast_eq u (qCoefficient u v u) x y hy

/-- Exact raw integer formula for every u>=1, v, x and every nonzero y.
There is no source determinant, recurrence, or Padé identity hypothesis. -/
theorem rawHomogeneousDeterminant_formula (u v : ℕ) (hu : 1 ≤ u)
    (x y : ℤ) (hy : y ≠ 0) :
    rawHomogeneousDeterminant u v x y = determinantConstant u v * x ^ (2 * u - 1) := by
  let z : ℝ := (x : ℝ) / (y : ℝ)
  have hyr : (y : ℝ) ≠ 0 := Int.cast_ne_zero.mpr hy
  have hp := congrArg (fun P : ℤ[X] => P.eval₂ (Int.castRingHom ℝ) z)
    (rawPolynomialDeterminant_formula u v hu)
  have heval :
      (pPolynomial u v u).eval₂ (Int.castRingHom ℝ) z *
          (qPolynomial (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z -
        (pPolynomial (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z *
          (qPolynomial u v u).eval₂ (Int.castRingHom ℝ) z =
        (determinantConstant u v : ℝ) * z ^ (2 * u - 1) := by
    simpa only [rawPolynomialDeterminant, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
      Polynomial.eval₂_C, Polynomial.eval₂_X_pow] using hp
  have hreal : (rawHomogeneousDeterminant u v x y : ℝ) =
      (determinantConstant u v : ℝ) * (x : ℝ) ^ (2 * u - 1) := by
    calc
      (rawHomogeneousDeterminant u v x y : ℝ) =
        (y : ℝ) ^ u * (y : ℝ) ^ (u - 1) *
          ((pPolynomial u v u).eval₂ (Int.castRingHom ℝ) z *
              (qPolynomial (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z -
            (pPolynomial (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z *
              (qPolynomial u v u).eval₂ (Int.castRingHom ℝ) z) := by
        simp only [rawHomogeneousDeterminant, Int.cast_sub, Int.cast_mul]
        rw [p_homogeneous_cast u v x y hy, q_homogeneous_cast (u - 1) (v + 1) x y hy,
          p_homogeneous_cast (u - 1) (v + 1) x y hy, q_homogeneous_cast u v x y hy]
        dsimp [z]
        ring
      _ = (y : ℝ) ^ (2 * u - 1) * ((determinantConstant u v : ℝ) * z ^ (2 * u - 1)) := by
        rw [← pow_add, show u + (u - 1) = 2 * u - 1 by omega, heval]
      _ = (determinantConstant u v : ℝ) * (x : ℝ) ^ (2 * u - 1) := by
        dsimp [z]
        rw [div_pow]
        have hyp : (y : ℝ) ^ (2 * u - 1) ≠ 0 := pow_ne_zero _ hyr
        field_simp
        <;> ring
  exact_mod_cast hreal

theorem rawHomogeneousDeterminant_ne_zero (u v : ℕ) (hu : 1 ≤ u)
    {x y : ℤ} (hx : x ≠ 0) (hy : y ≠ 0) : rawHomogeneousDeterminant u v x y ≠ 0 := by
  rw [rawHomogeneousDeterminant_formula u v hu x y hy]
  exact mul_ne_zero (determinantConstant_ne_zero u v hu) (pow_ne_zero _ hx)

#print axioms Math.B699.PadeActualRecurrence.rawHomogeneousDeterminant_formula
#print axioms Math.B699.PadeActualRecurrence.rawHomogeneousDeterminant_ne_zero

end Math.B699.PadeActualRecurrence
