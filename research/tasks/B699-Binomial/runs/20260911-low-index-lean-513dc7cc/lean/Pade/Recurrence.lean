import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Magnitude
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Tactic.LinearCombination

/-!
# Common three-term recurrence for the actual source polynomials

The two final theorems concern pPolynomial/qPolynomial themselves. Every
magnitude input is obtained by calling ActualMagnitudeRecurrence, which in turn
calls the six explicit source multiplication proofs. There is no recurrence or
Padé-identity assumption. This entire chain is still a candidate pending Lean.
-/

namespace Math.B699.PadeActualRecurrence

open Polynomial
open Math.B699.PadeConstruction
open Math.B699.PadeCoefficientMultiplication

private theorem sign_previous (u r : ℕ) (hu : 1 ≤ u) :
    (-1 : ℤ) ^ (u - 1 + r) = -((-1 : ℤ) ^ (u + r)) := by
  have he : u + r = (u - 1 + r) + 1 := by omega
  rw [he, pow_succ]
  ring

private theorem q_coeff_zero (u v r : ℕ) (hr : u < r) :
    (qPolynomial u v u).coeff r = 0 := by
  simp only [qPolynomial, coefficientPolynomial_coeff, if_neg (not_le.mpr hr)]

private theorem p_coeff_zero (u v r : ℕ) (hr : u < r) :
    (pPolynomial u v u).coeff r = 0 := by
  simp only [pPolynomial, coefficientPolynomial_coeff, if_neg (not_le.mpr hr)]

private theorem q_previous_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (qPolynomial (u - 1) (v + 1) (u - 1)).coeff r =
      -((-1 : ℤ) ^ u) * qPreviousSame u v r := by
  by_cases hm : r ≤ u - 1
  · have hs : (-1 : ℤ) ^ (u - 1) = -((-1 : ℤ) ^ u) := by
      simpa only [Nat.add_zero] using sign_previous u 0 (by omega)
    simpa only [qPreviousSame, hs] using
      (qPolynomial_coeff_eq_signed_magnitude (u - 1) (v + 1) r hm)
  · have he : r = u := by omega
    subst r
    have hz : qMagnitude (u - 1) (v + 1) (u - 1) u = 0 := by
      have hc : (u - 1 + (u - 1) - u).choose (u - 1) = 0 :=
        Nat.choose_eq_zero_of_lt (by omega)
      simp [qMagnitude, hc]
    rw [q_coeff_zero _ _ _ (by omega)]
    simp [qPreviousSame, hz]

private theorem p_previous_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (pPolynomial (u - 1) (v + 1) (u - 1)).coeff r =
      -((-1 : ℤ) ^ (u + r)) * pPreviousSame u v r := by
  by_cases hm : r ≤ u - 1
  · simpa only [pPreviousSame, sign_previous u r (by omega)] using
      (pPolynomial_coeff_eq_signed_magnitude (u - 1) (v + 1) r hm)
  · have he : r = u := by omega
    subst r
    have hz : sourcePMagnitude (u - 1) (v + 1) u = 0 := by
      have hc : (2 * (u - 1) - u).choose (u - 1) = 0 := Nat.choose_eq_zero_of_lt (by omega)
      simp [sourcePMagnitude, hc]
    rw [p_coeff_zero _ _ _ (by omega)]
    simp [pPreviousSame, hz]

private theorem q_shift_one_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (if 1 ≤ r then (qPolynomial (u - 1) (v + 1) (u - 1)).coeff (r - 1) else 0) =
      -((-1 : ℤ) ^ u) * qPreviousOne u v r := by
  by_cases hs : 1 ≤ r
  · simp only [qPreviousOne, if_pos hs]
    rw [qPolynomial_coeff_eq_signed_magnitude _ _ _ (by omega)]
    have hp : (-1 : ℤ) ^ (u - 1) = -((-1 : ℤ) ^ u) := by
      simpa only [Nat.add_zero] using sign_previous u 0 (by omega)
    rw [hp]
  · simp [qPreviousOne, hs]

private theorem p_shift_one_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (if 1 ≤ r then (pPolynomial (u - 1) (v + 1) (u - 1)).coeff (r - 1) else 0) =
      (-1 : ℤ) ^ (u + r) * pPreviousOne u v r := by
  by_cases hs : 1 ≤ r
  · simp only [pPreviousOne, if_pos hs]
    rw [pPolynomial_coeff_eq_signed_magnitude _ _ _ (by omega)]
    have hp : (-1 : ℤ) ^ (u - 1 + (r - 1)) = (-1 : ℤ) ^ (u + r) := by
      rw [neg_one_pow_eq_pow_mod_two (u - 1 + (r - 1)),
        neg_one_pow_eq_pow_mod_two (u + r)]
      congr 1
      omega
    rw [hp]
  · simp [pPreviousOne, hs]

private theorem q_shift_two_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (if 2 ≤ r then (qPolynomial (u - 2) (v + 2) (u - 2)).coeff (r - 2) else 0) =
      (-1 : ℤ) ^ u * qPreviousTwo u v r := by
  by_cases hs : 2 ≤ r
  · simp only [qPreviousTwo, if_pos hs]
    rw [qPolynomial_coeff_eq_signed_magnitude _ _ _ (by omega)]
    have hp : (-1 : ℤ) ^ (u - 2) = (-1 : ℤ) ^ u := by
      rw [neg_one_pow_eq_pow_mod_two (u - 2), neg_one_pow_eq_pow_mod_two u]
      congr 1
      omega
    rw [hp]
  · simp [qPreviousTwo, hs]

private theorem p_shift_two_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (if 2 ≤ r then (pPolynomial (u - 2) (v + 2) (u - 2)).coeff (r - 2) else 0) =
      (-1 : ℤ) ^ (u + r) * pPreviousTwo u v r := by
  by_cases hs : 2 ≤ r
  · simp only [pPreviousTwo, if_pos hs]
    rw [pPolynomial_coeff_eq_signed_magnitude _ _ _ (by omega)]
    have hp : (-1 : ℤ) ^ (u - 2 + (r - 2)) = (-1 : ℤ) ^ (u + r) := by
      rw [neg_one_pow_eq_pow_mod_two (u - 2 + (r - 2)),
        neg_one_pow_eq_pow_mod_two (u + r)]
      congr 1
      omega
    rw [hp]
  · simp [pPreviousTwo, hs]

private theorem coeff_two_sub_X_mul (F : ℤ[X]) (r : ℕ) :
    ((C (2 : ℤ) - X) * F).coeff r =
      2 * F.coeff r - (if 1 ≤ r then F.coeff (r - 1) else 0) := by
  rw [sub_mul, Polynomial.coeff_sub, Polynomial.coeff_C_mul]
  have hx : (X * F).coeff r = if 1 ≤ r then F.coeff (r - 1) else 0 := by
    simpa only [pow_one] using Polynomial.coeff_X_pow_mul' F 1 r
  rw [hx]

/-- Common recurrence for the actual source Q polynomial; no extra identity
or coefficient-ratio hypotheses remain in its statement. -/
theorem qPolynomial_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    C (recurrenceN u) * qPolynomial u v u =
      -(C (recurrenceA u) * ((C (2 : ℤ) - X) * qPolynomial (u - 1) (v + 1) (u - 1))) +
        C (recurrenceB u v) * (X ^ 2 * qPolynomial (u - 2) (v + 2) (u - 2)) := by
  apply Polynomial.ext
  intro r
  simp only [Polynomial.coeff_C_mul, Polynomial.coeff_add, Polynomial.coeff_neg,
    coeff_two_sub_X_mul, Polynomial.coeff_X_pow_mul']
  by_cases hr : r ≤ u
  · rw [qPolynomial_coeff_eq_signed_magnitude u v r hr,
      q_previous_coeff u v r hu hr, q_shift_one_coeff u v r hu hr, q_shift_two_coeff u v r hu hr]
    have hm := q_magnitude_recurrence u v r hu hr
    dsimp [qCurrent] at hm
    linear_combination ((-1 : ℤ) ^ u) * hm
  · have hr1 : 1 ≤ r := by omega
    have hr2 : 2 ≤ r := by omega
    rw [q_coeff_zero u v r (by omega), q_coeff_zero (u - 1) (v + 1) r (by omega),
      if_pos hr1, q_coeff_zero (u - 1) (v + 1) (r - 1) (by omega),
      if_pos hr2, q_coeff_zero (u - 2) (v + 2) (r - 2) (by omega)]
    ring

/-- Common recurrence for the actual source P polynomial; all boundary
coefficients are handled by the finite support and explicit shift guards. -/
theorem pPolynomial_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    C (recurrenceN u) * pPolynomial u v u =
      -(C (recurrenceA u) * ((C (2 : ℤ) - X) * pPolynomial (u - 1) (v + 1) (u - 1))) +
        C (recurrenceB u v) * (X ^ 2 * pPolynomial (u - 2) (v + 2) (u - 2)) := by
  apply Polynomial.ext
  intro r
  simp only [Polynomial.coeff_C_mul, Polynomial.coeff_add, Polynomial.coeff_neg,
    coeff_two_sub_X_mul, Polynomial.coeff_X_pow_mul']
  by_cases hr : r ≤ u
  · rw [pPolynomial_coeff_eq_signed_magnitude u v r hr,
      p_previous_coeff u v r hu hr, p_shift_one_coeff u v r hu hr, p_shift_two_coeff u v r hu hr]
    have hm := p_magnitude_recurrence u v r hu hr
    dsimp [pCurrent] at hm
    linear_combination ((-1 : ℤ) ^ (u + r)) * hm
  · have hr1 : 1 ≤ r := by omega
    have hr2 : 2 ≤ r := by omega
    rw [p_coeff_zero u v r (by omega), p_coeff_zero (u - 1) (v + 1) r (by omega),
      if_pos hr1, p_coeff_zero (u - 1) (v + 1) (r - 1) (by omega),
      if_pos hr2, p_coeff_zero (u - 2) (v + 2) (r - 2) (by omega)]
    ring

#print axioms Math.B699.PadeActualRecurrence.qPolynomial_recurrence
#print axioms Math.B699.PadeActualRecurrence.pPolynomial_recurrence

end Math.B699.PadeActualRecurrence
