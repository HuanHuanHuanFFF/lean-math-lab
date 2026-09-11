import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-actual-hom-remainder-5e2d13bb».RationalHom
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Moment.Identity

/-!
# Rational remainder identity for the actual gcd-normalized integer rows

UNCOMPILED CANDIDATE. The only denominator assumption is y != 0.
The source Padé identity and the actual coefficient-content divisibility
are proved imports, never external hypotheses of the results below.
The numerator x may be zero. Actual adjacent-row nonvanishing, when used
later, separately retains the accepted Pade/Rows requirement x != 0.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.PadeRationalHomogeneous

open Polynomial Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeMomentIdentity

/-- Clear the denominator in the actual source identity, before normalizing.
All exponents are natural and the surviving power of y is exactly v. -/
theorem raw_homogeneous_remainder_q (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (y : ℚ) ^ (u + v + 1) * (homogeneousValue u (pCoefficient u v u) x y : ℚ) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          (homogeneousValue u (qCoefficient u v u) x y : ℚ) =
      (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) ((x : ℚ) / (y : ℚ)) := by
  let z : ℚ := (x : ℚ) / (y : ℚ)
  let pEval : ℚ := (pPolynomial u v u).eval₂ (Int.castRingHom ℚ) z
  let qEval : ℚ := (qPolynomial u v u).eval₂ (Int.castRingHom ℚ) z
  let eEval : ℚ := (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) z
  have hyq : (y : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hy
  have hyz : (y : ℚ) * z = (x : ℚ) := by
    dsimp [z]
    field_simp [hyq]
    <;> ring
  have hbase : (y : ℚ) * (1 - z) = (y : ℚ) - (x : ℚ) := by
    calc
      (y : ℚ) * (1 - z) = (y : ℚ) - (y : ℚ) * z := by ring
      _ = (y : ℚ) - (x : ℚ) := by rw [hyz]
  have hquotient_pow :
      (y : ℚ) ^ (u + v + 1) * (1 - z) ^ (u + v + 1) =
        ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) := by
    rw [← mul_pow, hbase]
  have hsource : pEval - (1 - z) ^ (u + v + 1) * qEval =
      z ^ (2 * u + 1) * eEval := by
    have hvu : v + u + 1 = u + v + 1 := by omega
    have huu : u + u + 1 = 2 * u + 1 := by omega
    dsimp only [pEval, qEval, eEval]
    simpa only [hvu, huu] using actual_integer_pade_identity u v u z
  have hy_powers :
      (y : ℚ) ^ u * (y : ℚ) ^ (u + v + 1) =
        (y : ℚ) ^ v * (y : ℚ) ^ (2 * u + 1) := by
    rw [← pow_add, ← pow_add]
    congr 1
    omega
  have hyz_pow : (y : ℚ) ^ (2 * u + 1) * z ^ (2 * u + 1) =
      (x : ℚ) ^ (2 * u + 1) := by
    rw [← mul_pow, hyz]
  rw [p_homogeneousValue_cast_q u v u x y hy,
    q_homogeneousValue_cast_q u v u x y hy]
  simp only [Int.cast_sub]
  change (y : ℚ) ^ (u + v + 1) * ((y : ℚ) ^ u * pEval) -
      ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) * ((y : ℚ) ^ u * qEval) =
    (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) * eEval
  calc
    (y : ℚ) ^ (u + v + 1) * ((y : ℚ) ^ u * pEval) -
        ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) * ((y : ℚ) ^ u * qEval) =
      (y : ℚ) ^ u * ((y : ℚ) ^ (u + v + 1) * pEval -
        ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) * qEval) := by ring
    _ = (y : ℚ) ^ u * ((y : ℚ) ^ (u + v + 1) *
        (pEval - (1 - z) ^ (u + v + 1) * qEval)) := by
      congr 1
      calc
        (y : ℚ) ^ (u + v + 1) * pEval -
            ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) * qEval =
          (y : ℚ) ^ (u + v + 1) * pEval -
            ((y : ℚ) ^ (u + v + 1) * (1 - z) ^ (u + v + 1)) * qEval := by
          rw [hquotient_pow]
        _ = (y : ℚ) ^ (u + v + 1) *
            (pEval - (1 - z) ^ (u + v + 1) * qEval) := by ring
    _ = (y : ℚ) ^ u * ((y : ℚ) ^ (u + v + 1) *
        (z ^ (2 * u + 1) * eEval)) := by rw [hsource]
    _ = ((y : ℚ) ^ u * (y : ℚ) ^ (u + v + 1)) *
        z ^ (2 * u + 1) * eEval := by ring
    _ = ((y : ℚ) ^ v * (y : ℚ) ^ (2 * u + 1)) *
        z ^ (2 * u + 1) * eEval := by rw [hy_powers]
    _ = (y : ℚ) ^ v * ((y : ℚ) ^ (2 * u + 1) * z ^ (2 * u + 1)) *
        eEval := by ring
    _ = (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) * eEval := by rw [hyz_pow]

/-- Exact remainder for the actual integer P/Q normalization by qContent.
There is no source-identity, Hom-correspondence or gcd-divisibility premise. -/
theorem normalized_remainder_q (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (qContent u v u : ℚ) *
      ((y : ℚ) ^ (u + v + 1) * (pNormalizedValue u v x y : ℚ) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          (qNormalizedValue u v u x y : ℚ)) =
      (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) ((x : ℚ) / (y : ℚ)) := by
  calc
    (qContent u v u : ℚ) *
        ((y : ℚ) ^ (u + v + 1) * (pNormalizedValue u v x y : ℚ) -
          ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
            (qNormalizedValue u v u x y : ℚ)) =
      (y : ℚ) ^ (u + v + 1) *
          ((qContent u v u : ℚ) * (pNormalizedValue u v x y : ℚ)) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          ((qContent u v u : ℚ) * (qNormalizedValue u v u x y : ℚ)) := by ring
    _ = (y : ℚ) ^ (u + v + 1) *
          (homogeneousValue u (pCoefficient u v u) x y : ℚ) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          (homogeneousValue u (qCoefficient u v u) x y : ℚ) := by
      rw [qContent_mul_pNormalizedValue_cast_q u v x y,
        qContent_mul_qNormalizedValue_cast_q u v u x y]
    _ = (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) ((x : ℚ) / (y : ℚ)) :=
      raw_homogeneous_remainder_q u v x y hy

/-- The same actual identity with the integer row error kept as one cast.
This is the expression appearing in the accepted integer-gap consumer. -/
theorem normalized_integer_error_cast_q (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (qContent u v u : ℚ) *
      ((y ^ (u + v + 1) * pNormalizedValue u v x y -
          (y - x) ^ (u + v + 1) * qNormalizedValue u v u x y : ℤ) : ℚ) =
      (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) ((x : ℚ) / (y : ℚ)) := by
  simpa only [Int.cast_sub, Int.cast_mul, Int.cast_pow] using
    normalized_remainder_q u v x y hy

end Math.B699.PadeRationalHomogeneous
