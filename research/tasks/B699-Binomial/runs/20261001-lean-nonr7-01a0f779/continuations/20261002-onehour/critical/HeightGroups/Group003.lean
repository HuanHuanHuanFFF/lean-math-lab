import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group002
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Tactic.LinearCombination
set_option Elab.async false
/- Frozen member 12 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Recurrence.lean bc393e8754ac1791757a082fd13bd93fd2a4884ce2fb4ad0413490429149f940 -/
section HeightMember012




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

end HeightMember012
/- Frozen member 13 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\RawDet.lean f9cbc472834f0fcdb96817f3f7ee4d04b5520b90779764b5c50ce0d26ed4ef22 -/
section HeightMember013


/-!
# Unconditional adjacent determinant for the actual BFT source polynomials

The final source theorem assumes only u>=1 and v:Nat. Its actual P/Q recurrence
comes from the six proved-candidate source multiplication identities. The signed
constant recurrence is proved below from actual weighted choose identities.
No hraw, Padé identity, or common-recurrence assumption is accepted as an input.
This is a complete candidate chain, not a Lean acceptance record.
-/

namespace Math.B699.PadeActualRecurrence

open Polynomial
open Math.B699.PadeConstruction

noncomputable def rawPolynomialDeterminant (u v : ℕ) : ℤ[X] :=
  pPolynomial u v u * qPolynomial (u - 1) (v + 1) (u - 1) -
    pPolynomial (u - 1) (v + 1) (u - 1) * qPolynomial u v u

def determinantMagnitude (u v : ℕ) : ℕ :=
  (2 * u + v).choose (2 * u - 1) * (2 * u).choose u

def determinantConstant (u v : ℕ) : ℤ :=
  (-1 : ℤ) ^ (u + 1) * (determinantMagnitude u v : ℤ)

private theorem choose_lower_both_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (n - 1).choose (k - 1) * n = n.choose k * k := by
  have hn : 1 ≤ n := hk.trans hkn
  have h := Nat.add_one_mul_choose_eq (n - 1) (k - 1)
  rw [Nat.sub_add_cancel hn, Nat.sub_add_cancel hk] at h
  calc
    (n - 1).choose (k - 1) * n = n * (n - 1).choose (k - 1) := by ring
    _ = n.choose k * k := h

private theorem choose_lower_bottom_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    n.choose (k - 1) * (n - k + 1) = n.choose k * k := by
  have h := Nat.choose_succ_right_eq n (k - 1)
  rw [Nat.sub_add_cancel hk] at h
  have hd : n - (k - 1) = n - k + 1 := by omega
  rw [hd] at h
  exact h.symm

/-- The actual adjacent constant's unsigned recurrence, from two elementary
weighted binomial relations. No factorial quotient or guessed constant is used. -/
theorem determinantMagnitude_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    u * (u - 1) * determinantMagnitude u v =
      (v + 2) * (2 * u + v) * determinantMagnitude (u - 1) (v + 1) := by
  have ha0 := choose_lower_both_one (2 * u + v) (2 * u - 1) (by omega) (by omega)
  have ha1 := choose_lower_bottom_one (2 * u + v - 1) (2 * u - 1 - 1) (by omega) (by omega)
  have hkm1 : 2 * u - 1 - 1 = 2 * u - 2 := by omega
  have hkm2 : 2 * u - 1 - 1 - 1 = 2 * u - 3 := by omega
  have hfactor : 2 * u + v - 1 - (2 * u - 1 - 1) + 1 = v + 2 := by omega
  rw [hkm1] at ha0
  rw [hkm2, hfactor, hkm1] at ha1
  have ha : (2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2) =
      (2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2) := by
    calc
      (2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2) =
        ((2 * u + v - 1).choose (2 * u - 3) * (v + 2)) * (2 * u + v) := by ring
      _ = ((2 * u + v - 1).choose (2 * u - 2) * (2 * u - 2)) * (2 * u + v) := by rw [ha1]
      _ = ((2 * u + v - 1).choose (2 * u - 2) * (2 * u + v)) * (2 * u - 2) := by ring
      _ = (2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2) := by rw [ha0]
  have hb0 := choose_lower_both_one (2 * u - 1) u (by omega) (by omega)
  have hnn : 2 * u - 1 - 1 = 2 * u - 2 := by omega
  rw [hnn] at hb0
  have hb1 := Nat.choose_mul_succ_eq (2 * u - 1) u
  have hns : 2 * u - 1 + 1 = 2 * u := by omega
  have hdiff : 2 * u - u = u := by omega
  rw [hns, hdiff] at hb1
  have hb : (2 * u - 2).choose (u - 1) * 2 * (2 * u - 1) = (2 * u).choose u * u := by
    calc
      (2 * u - 2).choose (u - 1) * 2 * (2 * u - 1) =
        ((2 * u - 2).choose (u - 1) * (2 * u - 1)) * 2 := by ring
      _ = ((2 * u - 1).choose u * u) * 2 := by rw [hb0]
      _ = (2 * u - 1).choose u * (2 * u) := by ring
      _ = (2 * u).choose u * u := hb1
  have htop : 2 * (u - 1) + (v + 1) = 2 * u + v - 1 := by omega
  have hbottom : 2 * (u - 1) - 1 = 2 * u - 3 := by omega
  have hcentral : 2 * (u - 1) = 2 * u - 2 := by omega
  unfold determinantMagnitude
  rw [htop, hbottom, hcentral]
  symm
  calc
    (v + 2) * (2 * u + v) *
        ((2 * u + v - 1).choose (2 * u - 3) * (2 * u - 2).choose (u - 1)) =
      ((2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2)) *
        (2 * u - 2).choose (u - 1) := by ring
    _ = ((2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2)) *
        (2 * u - 2).choose (u - 1) := by rw [ha]
    _ = (2 * u + v).choose (2 * u - 1) * (u - 1) *
        ((2 * u - 2).choose (u - 1) * 2 * (2 * u - 1)) := by rw [← hcentral]; ring
    _ = (2 * u + v).choose (2 * u - 1) * (u - 1) * ((2 * u).choose u * u) := by rw [hb]
    _ = u * (u - 1) * ((2 * u + v).choose (2 * u - 1) * (2 * u).choose u) := by ring

theorem determinantConstant_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    recurrenceN u * determinantConstant u v =
      -(recurrenceB u v) * determinantConstant (u - 1) (v + 1) := by
  have hu1 : 1 ≤ u := by omega
  have hc := congrArg (fun n : ℕ => (n : ℤ)) (determinantMagnitude_recurrence u v hu)
  simp only [Nat.cast_mul, Nat.cast_add, Nat.cast_sub hu1, Nat.cast_one, Nat.cast_ofNat] at hc
  unfold recurrenceN recurrenceB determinantConstant
  rw [Nat.sub_add_cancel hu1, pow_succ]
  linear_combination -((-1 : ℤ) ^ u) * hc

theorem determinantConstant_ne_zero (u v : ℕ) (hu : 1 ≤ u) : determinantConstant u v ≠ 0 := by
  have ha : (2 * u + v).choose (2 * u - 1) ≠ 0 := Nat.ne_of_gt (Nat.choose_pos (by omega))
  have hb : (2 * u).choose u ≠ 0 := Nat.ne_of_gt (Nat.choose_pos (by omega))
  have hm : determinantMagnitude u v ≠ 0 := Nat.mul_ne_zero ha hb
  exact mul_ne_zero (pow_ne_zero _ (by norm_num)) (Nat.cast_ne_zero.mpr hm)

/-- The actual raw determinant recurrence, derived by eliminating the shared
middle term from the two proved source polynomial recurrences. -/
theorem rawPolynomialDeterminant_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    C (recurrenceN u) * rawPolynomialDeterminant u v =
      -(C (recurrenceB u v) * (X ^ 2 * rawPolynomialDeterminant (u - 1) (v + 1))) := by
  have hp := pPolynomial_recurrence u v hu
  have hq := qPolynomial_recurrence u v hu
  have hs : u - 1 - 1 = u - 2 := by omega
  have hv : v + 1 + 1 = v + 2 := by omega
  unfold rawPolynomialDeterminant
  rw [hs, hv]
  linear_combination
    (qPolynomial (u - 1) (v + 1) (u - 1)) * hp -
      (pPolynomial (u - 1) (v + 1) (u - 1)) * hq

private theorem pPolynomial_zero (v : ℕ) : pPolynomial 0 v 0 = 1 := by
  simp [pPolynomial, coefficientPolynomial, pCoefficient]

private theorem qPolynomial_zero (v : ℕ) : qPolynomial 0 v 0 = 1 := by
  simp [qPolynomial, coefficientPolynomial, qCoefficient, qMagnitude]

private theorem pPolynomial_one (v : ℕ) :
    pPolynomial 1 v 1 = C (-2 : ℤ) + C ((v : ℤ) + 3) * X := by
  norm_num [pPolynomial, coefficientPolynomial, Finset.sum_range_succ, pCoefficient,
    Nat.choose_one_right, ← Polynomial.C_mul_X_pow_eq_monomial, map_add, map_mul, map_neg]
  <;> ring

private theorem qPolynomial_one (v : ℕ) :
    qPolynomial 1 v 1 = C (-2 : ℤ) - C ((v : ℤ) + 1) * X := by
  norm_num [qPolynomial, coefficientPolynomial, Finset.sum_range_succ, qCoefficient, qMagnitude,
    Nat.choose_one_right, ← Polynomial.C_mul_X_pow_eq_monomial, map_add, map_mul, map_neg]
  <;> ring

theorem determinantConstant_one (v : ℕ) : determinantConstant 1 v = 2 * ((v : ℤ) + 2) := by
  norm_num [determinantConstant, determinantMagnitude, Nat.choose_one_right]
  <;> ring

private theorem rawPolynomialDeterminant_one (v : ℕ) :
    rawPolynomialDeterminant 1 v = C (determinantConstant 1 v) * X ^ (2 * 1 - 1) := by
  simp only [rawPolynomialDeterminant, Nat.sub_self, pPolynomial_one, qPolynomial_one,
    pPolynomial_zero, qPolynomial_zero, determinantConstant_one]
  norm_num [map_add, map_mul]
  <;> ring

private theorem rawPolynomialDeterminant_succ (t v : ℕ) :
    rawPolynomialDeterminant (t + 1) v = C (determinantConstant (t + 1) v) * X ^ (2 * (t + 1) - 1) := by
  induction t generalizing v with
  | zero => simpa using rawPolynomialDeterminant_one v
  | succ t ih =>
    let u : ℕ := t + 2
    change rawPolynomialDeterminant u v = C (determinantConstant u v) * X ^ (2 * u - 1)
    have hu : 2 ≤ u := by dsimp [u]; omega
    have hs : u - 1 = t + 1 := by dsimp [u]
    have hprev : rawPolynomialDeterminant (u - 1) (v + 1) =
        C (determinantConstant (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1) := by
      simpa only [hs] using ih (v + 1)
    have hrec := rawPolynomialDeterminant_recurrence u v hu
    rw [hprev] at hrec
    have hscale : (C (recurrenceN u) : ℤ[X]) ≠ 0 := Polynomial.C_ne_zero.mpr (recurrenceN_ne_zero u hu)
    have hmatch : C (recurrenceN u) * (C (determinantConstant u v) * X ^ (2 * u - 1)) =
        -(C (recurrenceB u v) * (X ^ 2 *
          (C (determinantConstant (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1)))) := by
      calc
        C (recurrenceN u) * (C (determinantConstant u v) * X ^ (2 * u - 1)) =
          C (recurrenceN u * determinantConstant u v) * X ^ (2 * u - 1) := by simp only [map_mul]; ring
        _ = C (-(recurrenceB u v) * determinantConstant (u - 1) (v + 1)) * X ^ (2 * u - 1) := by
          rw [determinantConstant_recurrence u v hu]
        _ = -(C (recurrenceB u v) * (X ^ 2 *
            (C (determinantConstant (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1)))) := by
          have he : 2 * u - 1 = 2 + (2 * (u - 1) - 1) := by omega
          rw [he, pow_add]
          simp only [map_mul, map_neg]
          ring
    apply mul_left_cancel₀ hscale
    exact hrec.trans hmatch.symm

/-- The unrestricted actual source determinant. Its only hypothesis is u>=1.
This is the upper-first version of BFT Lemma 3.2, with explicit signed constant. -/
theorem rawPolynomialDeterminant_formula (u v : ℕ) (hu : 1 ≤ u) :
    rawPolynomialDeterminant u v = C (determinantConstant u v) * X ^ (2 * u - 1) := by
  simpa only [Nat.sub_add_cancel hu] using rawPolynomialDeterminant_succ (u - 1) v

/-- Actual adjacent rows cannot have zero determinant at any nonzero real z.
No Padé identity, hraw, or recurrence hypothesis appears in this conclusion. -/
theorem actual_polynomial_rows_det_ne_zero (u v : ℕ) (hu : 1 ≤ u) {z : ℝ} (hz : z ≠ 0) :
    (rawPolynomialDeterminant u v).eval₂ (Int.castRingHom ℝ) z ≠ 0 := by
  rw [rawPolynomialDeterminant_formula u v hu, Polynomial.eval₂_mul,
    Polynomial.eval₂_C, Polynomial.eval₂_X_pow]
  change (determinantConstant u v : ℝ) * z ^ (2 * u - 1) ≠ 0
  exact mul_ne_zero (Int.cast_ne_zero.mpr (determinantConstant_ne_zero u v hu)) (pow_ne_zero _ hz)

#print axioms Math.B699.PadeActualRecurrence.determinantMagnitude_recurrence
#print axioms Math.B699.PadeActualRecurrence.determinantConstant_recurrence
#print axioms Math.B699.PadeActualRecurrence.determinantConstant_ne_zero
#print axioms Math.B699.PadeActualRecurrence.rawPolynomialDeterminant_recurrence
#print axioms Math.B699.PadeActualRecurrence.determinantConstant_one
#print axioms Math.B699.PadeActualRecurrence.rawPolynomialDeterminant_formula
#print axioms Math.B699.PadeActualRecurrence.actual_polynomial_rows_det_ne_zero

end Math.B699.PadeActualRecurrence

end HeightMember013
/- Frozen member 14 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\RawHom.lean b2e830d86e37ff94b83023d2d18ab6a0c4de45b0a44ed2860a7247f85b92b131 -/
section HeightMember014


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
      Polynomial.eval₂_C, Polynomial.eval₂_X_pow, Int.coe_castRingHom] using hp
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

end HeightMember014
/- Frozen member 15 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Content.lean 8a708c481f81a8ea1e2ae66133e7e9093adfdbf488ade68c30099635fd773149 -/
section HeightMember015



/-!
# Diagonal Padé P-content directly from positive binomial convolution

This file targets all u,B : Nat. It proves the actual coefficient identity

  p_k = (-1)^k * sum_{r=0}^k q_r * choose(u-r,k-r),  k <= u,

where p_k and q_r are the explicit signed coefficients already defined in
PadeInteger. This is the coefficient form of

  P(z) = sum_{r=0}^u q_r * (-z)^r * (1-z)^(u-r).

It implies divisibility of every P coefficient by the computed Q gcd,
without assuming the Padé remainder identity, analytic integrals, or a
content/height theorem. The positive convolution is proved from the elementary
Nat.multichoose recurrence. No new analysis import is required.

Candidate pending a serial run by the parent verifier. The original frozen
IntegerConstruction file is unchanged; this imports the accepted integration.
-/

namespace Math.B699.PadeContent

open scoped BigOperators
open Math.B699.PadeConstruction

private def multiConvolution (a b k : ℕ) : ℕ :=
  ∑ r ∈ Finset.range (k + 1), a.multichoose r * b.multichoose (k - r)

private theorem multiConvolution_zero (b k : ℕ) :
    multiConvolution 0 b k = b.multichoose k := by
  simp [multiConvolution, Finset.sum_range_succ']

private theorem multiConvolution_succ (a b k : ℕ) :
    multiConvolution a b (k + 1) = b.multichoose (k + 1) +
      ∑ r ∈ Finset.range (k + 1), a.multichoose (r + 1) * b.multichoose (k - r) := by
  unfold multiConvolution
  rw [Finset.sum_range_succ']
  simp only [Nat.multichoose_zero_right, Nat.sub_zero, one_mul, Nat.add_sub_add_right]
  omega

private theorem multiConvolution_recurrence (a b k : ℕ) :
    multiConvolution (a + 1) b (k + 1) =
      multiConvolution a b (k + 1) + multiConvolution (a + 1) b k := by
  rw [multiConvolution_succ (a + 1) b k, multiConvolution_succ a b k]
  simp_rw [Nat.multichoose_succ_succ, Nat.add_mul]
  rw [Finset.sum_add_distrib]
  unfold multiConvolution
  omega

/-- The positive Vandermonde convolution for multiset choices, proved from
Nat.multichoose's recurrence rather than assumed through a generating function. -/
theorem multichoose_convolution (a b k : ℕ) :
    (∑ r ∈ Finset.range (k + 1), a.multichoose r * b.multichoose (k - r)) =
      (a + b).multichoose k := by
  change multiConvolution a b k = (a + b).multichoose k
  induction a generalizing k with
  | zero => simpa only [Nat.zero_add] using multiConvolution_zero b k
  | succ a ha =>
    induction k with
    | zero => simp [multiConvolution]
    | succ k hk =>
      rw [multiConvolution_recurrence, ha, hk]
      simpa only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
        (Nat.multichoose_succ_succ (a + b) k).symm

/-- The convolution used after extracting the common binomial factor. -/
theorem shifted_choose_convolution (u B k : ℕ) (hk : k ≤ u) :
    (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) =
      (2 * u + B + 1).choose k := by
  calc
    (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) =
        ∑ r ∈ Finset.range (k + 1),
          (B + 1).multichoose r * (2 * u - k + 1).multichoose (k - r) := by
      apply Finset.sum_congr rfl
      intro r hr
      have hle : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
      rw [Nat.multichoose_eq, Nat.multichoose_eq]
      congr 2 <;> omega
    _ = (B + 1 + (2 * u - k + 1)).multichoose k := multichoose_convolution _ _ _
    _ = (2 * u + B + 1).choose k := by
      rw [Nat.multichoose_eq]
      congr 1
      omega

private theorem choose_product_rearrange (u k r : ℕ) (hk : k ≤ u) (hr : r ≤ k) :
    (2 * u - r).choose u * (u - r).choose (k - r) =
      (2 * u - k).choose u * (2 * u - r).choose (k - r) := by
  have hu : u ≤ 2 * u - r := by omega
  rw [← Nat.choose_symm hu]
  have hfirst : 2 * u - r - u = u - r := by omega
  rw [hfirst, Nat.choose_mul (show k - r ≤ u - r by omega)]
  have htop : 2 * u - r - (k - r) = 2 * u - k := by omega
  have hbottom : u - r - (k - r) = u - k := by omega
  rw [htop, hbottom]
  have hsym : (2 * u - k).choose (u - k) = (2 * u - k).choose u := by
    have hs := (Nat.choose_symm (show u ≤ 2 * u - k by omega))
    have hh : 2 * u - k - u = u - k := by omega
    simpa only [hh] using hs
  rw [hsym]
  exact Nat.mul_comm _ _

/-- The nonnegative weighted sum relating diagonal Q and P coefficients. -/
theorem weighted_choose_convolution (u B k : ℕ) (hk : k ≤ u) :
    (∑ r ∈ Finset.range (k + 1),
      (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r)) =
      (2 * u - k).choose u * (2 * u + B + 1).choose k := by
  calc
    (∑ r ∈ Finset.range (k + 1),
        (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r)) =
      ∑ r ∈ Finset.range (k + 1),
        (2 * u - k).choose u * ((B + r).choose r * (2 * u - r).choose (k - r)) := by
      apply Finset.sum_congr rfl
      intro r hr
      have hle : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
      calc
        (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r) =
          ((2 * u - r).choose u * (u - r).choose (k - r)) * (B + r).choose r := by ring
        _ = ((2 * u - k).choose u * (2 * u - r).choose (k - r)) * (B + r).choose r := by
          rw [choose_product_rearrange u k r hk hle]
        _ = (2 * u - k).choose u * ((B + r).choose r * (2 * u - r).choose (k - r)) := by ring
    _ = (2 * u - k).choose u *
      (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) := by
      rw [Finset.mul_sum]
    _ = (2 * u - k).choose u * (2 * u + B + 1).choose k := by
      rw [shifted_choose_convolution u B k hk]

/-- An explicit integer triangular transform of the actual Q coefficients.
This is the useful full-parameter bridge; it assumes no remainder identity. -/
theorem pCoefficient_eq_q_triangular (u B k : ℕ) (hk : k ≤ u) :
    pCoefficient u B u k = (-1 : ℤ) ^ k *
      ∑ r ∈ Finset.range (k + 1), qCoefficient u B u r * ((u - r).choose (k - r) : ℤ) := by
  have hz :
      (∑ r ∈ Finset.range (k + 1),
        ((2 * u - r).choose u : ℤ) * ((B + r).choose r : ℤ) *
          ((u - r).choose (k - r) : ℤ)) =
        ((2 * u - k).choose u : ℤ) * ((2 * u + B + 1).choose k : ℤ) := by
    exact_mod_cast weighted_choose_convolution u B k hk
  have hN : u + B + u + 1 = 2 * u + B + 1 := by omega
  have hU : u + u = 2 * u := by omega
  calc
    pCoefficient u B u k = (-1 : ℤ) ^ (u + k) *
        (((2 * u - k).choose u : ℤ) * ((2 * u + B + 1).choose k : ℤ)) := by
      simp only [pCoefficient, hN, hU]
      ring
    _ = (-1 : ℤ) ^ k * ((-1 : ℤ) ^ u *
        ∑ r ∈ Finset.range (k + 1),
          ((2 * u - r).choose u : ℤ) * ((B + r).choose r : ℤ) *
            ((u - r).choose (k - r) : ℤ)) := by
      rw [hz, pow_add]
      ring
    _ = (-1 : ℤ) ^ k *
        ∑ r ∈ Finset.range (k + 1), qCoefficient u B u r * ((u - r).choose (k - r) : ℤ) := by
      rw [Finset.mul_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro r hr
      simp only [qCoefficient, qMagnitude, hU, Nat.cast_mul]
      ring

/-- The source Q-content divides each actual P coefficient in the diagonal
case, for all u and B. There is no hypothetical polynomial identity input. -/
theorem qContent_dvd_pCoefficient (u B k : ℕ) (hk : k ≤ u) :
    (qContent u B u : ℤ) ∣ pCoefficient u B u k := by
  rw [pCoefficient_eq_q_triangular u B k hk]
  apply dvd_mul_of_dvd_right
  apply Finset.dvd_sum
  intro r hr
  have hrk : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  exact dvd_mul_of_dvd_left (qContent_dvd_qCoefficient u B u r (hrk.trans hk)) _

theorem qContent_dvd_pPolynomial_coeff (u B k : ℕ) :
    (qContent u B u : ℤ) ∣ (pPolynomial u B u).coeff k := by
  rw [pPolynomial, coefficientPolynomial_coeff]
  by_cases hk : k ≤ u
  · rw [if_pos hk]
    exact qContent_dvd_pCoefficient u B k hk
  · rw [if_neg hk]
    exact dvd_zero _

def pNormalizedCoefficient (u B r : ℕ) : ℤ :=
  pCoefficient u B u r / (qContent u B u : ℤ)

def pNormalizedValue (u B : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue u (pNormalizedCoefficient u B) x y

theorem qContent_mul_pNormalizedCoefficient (u B r : ℕ) (hr : r ≤ u) :
    (qContent u B u : ℤ) * pNormalizedCoefficient u B r = pCoefficient u B u r := by
  rw [pNormalizedCoefficient, mul_comm]
  exact Int.ediv_mul_cancel (qContent_dvd_pCoefficient u B r hr)

theorem qContent_mul_pNormalizedValue (u B : ℕ) (x y : ℤ) :
    (qContent u B u : ℤ) * pNormalizedValue u B x y =
      homogeneousValue u (pCoefficient u B u) x y := by
  classical
  simp only [pNormalizedValue, homogeneousValue, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [← mul_assoc, ← mul_assoc, qContent_mul_pNormalizedCoefficient u B r
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))]

/-- The normalized P needed alongside the already constructed normalized Q
is an explicit integer, with the exact real Padé polynomial value. -/
theorem pNormalizedValue_cast_eq (u B : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (pNormalizedValue u B x y : ℝ) =
      (y : ℝ) ^ u / (qContent u B u : ℝ) *
        (pPolynomial u B u).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  have hg : (qContent u B u : ℝ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt (qContent_pos u B u))
  have hmul := congrArg (fun k : ℤ => (k : ℝ)) (qContent_mul_pNormalizedValue u B x y)
  simp only [Int.cast_mul, Int.cast_natCast] at hmul
  rw [homogeneousValue_cast_eq u (pCoefficient u B u) x y hy] at hmul
  dsimp [pPolynomial]
  apply (mul_left_cancel₀ hg)
  calc
    (qContent u B u : ℝ) * (pNormalizedValue u B x y : ℝ) =
      (y : ℝ) ^ u * (coefficientPolynomial u (pCoefficient u B u)).eval₂
        (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := hmul
    _ = (qContent u B u : ℝ) * ((y : ℝ) ^ u / (qContent u B u : ℝ) *
        (coefficientPolynomial u (pCoefficient u B u)).eval₂
          (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ))) := by
      field_simp <;> ring

#print axioms Math.B699.PadeContent.multichoose_convolution
#print axioms Math.B699.PadeContent.shifted_choose_convolution
#print axioms Math.B699.PadeContent.weighted_choose_convolution
#print axioms Math.B699.PadeContent.pCoefficient_eq_q_triangular
#print axioms Math.B699.PadeContent.qContent_dvd_pCoefficient
#print axioms Math.B699.PadeContent.qContent_dvd_pPolynomial_coeff
#print axioms Math.B699.PadeContent.qContent_mul_pNormalizedValue
#print axioms Math.B699.PadeContent.pNormalizedValue_cast_eq

end Math.B699.PadeContent

end HeightMember015
