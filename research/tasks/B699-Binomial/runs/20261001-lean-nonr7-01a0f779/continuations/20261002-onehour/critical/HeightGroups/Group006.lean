import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group005
import Mathlib.Algebra.Order.Field.Rat
set_option Elab.async false
/- Frozen member 24 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Sources.lean 8ed8bfdecdfd25a0d3340d624f290ee87fbebf873bc1c0cf3af23d888279c543 -/
section HeightMember024



/-!
# Actual source coefficient sums are the concrete moment values

UNCOMPILED CANDIDATE. These are the explicit integer BFT coefficient formulas,
cast to Rat, not polynomials specified only by satisfying a Padé identity.
Every natural-subtraction bound is attached to the finite sum index.
-/

namespace Math.B699.PadeMomentIdentity

open Polynomial Math.B699.PadeMoment
open scoped BigOperators

def pSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (C + 1),
    ((-1 : ℚ) ^ (C + r) * ((A + B + C + 1).choose r : ℚ) *
      ((A + C - r).choose A : ℚ)) * z ^ r

def qSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (A + 1),
    ((-1 : ℚ) ^ C * ((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) * z ^ r

def eSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (B + 1),
    ((-1 : ℚ) ^ r * ((A + r).choose r : ℚ) *
      ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) * z ^ r

theorem pKernel_expansion (A B C : ℕ) (z : ℚ) :
    pKernel A B C z =
      ∑ r ∈ Finset.range (C + 1),
        Polynomial.C ((-1 : ℚ) ^ (C + r) * (C.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (A + C - r) B := by
  simpa only [pKernel, bernsteinMonomial, map_mul, map_pow, map_neg, map_one,
    map_natCast] using
    (KernelAlgebra.p_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem qKernel_expansion (A B C : ℕ) (z : ℚ) :
    qKernel A B C z =
      ∑ r ∈ Finset.range (A + 1),
        Polynomial.C ((A.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (B + r) (A + C - r) := by
  simpa only [qKernel, bernsteinMonomial, map_mul, map_pow, map_natCast] using
    (KernelAlgebra.q_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem eKernel_expansion (A B C : ℕ) (z : ℚ) :
    eKernel A B C z =
      ∑ r ∈ Finset.range (B + 1),
        Polynomial.C ((-1 : ℚ) ^ r * (B.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (A + r) C := by
  simpa only [eKernel, bernsteinMonomial, map_mul, map_pow, map_neg, map_one,
    map_natCast] using
    (KernelAlgebra.e_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem pSource_eq_moment (A B C : ℕ) (z : ℚ) : pSource A B C z = pMoment A B C z := by
  classical
  unfold pSource pMoment
  rw [pKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := p_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ (C + r) * ((A + B + C + 1).choose r : ℚ) *
        ((A + C - r).choose A : ℚ)) * z ^ r =
      ((-1 : ℚ) ^ (C + r) * z ^ r) *
        (((A + B + C + 1).choose r : ℚ) * ((A + C - r).choose A : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ (C + r) * z ^ r) *
        (prefactor A B C * (C.choose r : ℚ) * betaMoment (A + C - r) B) := by rw [h]
    _ = _ := by ring

theorem qSource_eq_moment (A B C : ℕ) (z : ℚ) : qSource A B C z = qMoment A B C z := by
  classical
  unfold qSource qMoment
  rw [qKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := q_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ C * ((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) * z ^ r =
        ((-1 : ℚ) ^ C * z ^ r) *
          (((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ C * z ^ r) *
        (prefactor A B C * (A.choose r : ℚ) * betaMoment (B + r) (A + C - r)) := by rw [h]
    _ = _ := by ring

theorem eSource_eq_moment (A B C : ℕ) (z : ℚ) : eSource A B C z = eMoment A B C z := by
  classical
  unfold eSource eMoment
  rw [eKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := e_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ r * ((A + r).choose r : ℚ) *
        ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) * z ^ r =
      ((-1 : ℚ) ^ r * z ^ r) *
        (((A + r).choose r : ℚ) * ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ r * z ^ r) *
        (prefactor A B C * (B.choose r : ℚ) * betaMoment (A + r) C) := by rw [h]
    _ = _ := by ring

theorem source_pade_identity (A B C : ℕ) (z : ℚ) :
    pSource A B C z - (1 - z) ^ (B + C + 1) * qSource A B C z =
      z ^ (A + C + 1) * eSource A B C z := by
  rw [pSource_eq_moment, qSource_eq_moment, eSource_eq_moment]
  exact moment_pade_identity A B C z

#print axioms Math.B699.PadeMomentIdentity.pSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.qSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.eSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.source_pade_identity

end Math.B699.PadeMomentIdentity

end HeightMember024
/- Frozen member 25 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Identity.lean 58ec20412d6b14972eb24176d14c27a766fe4d6b89ebc0a9718f9c8e15f6008e -/
section HeightMember025



/-!
# Adapter to the actual PadeInteger arrays

UNCOMPILED CANDIDATE. This final file states the result using the existing
pPolynomial/qPolynomial/ePolynomial, not replacement objects with a Padé
identity in their definition. The source candidate imports are not treated
as accepted merely because this file references them.
-/

namespace Math.B699.PadeMomentIdentity

open Math.B699.PadeConstruction
open scoped BigOperators

theorem pSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    pSource A B C z = (pPolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold pSource pPolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [pCoefficient]

theorem qSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    qSource A B C z = (qPolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold qSource qPolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [qCoefficient, qMagnitude, mul_assoc]

theorem eSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    eSource A B C z = (ePolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold eSource ePolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [eCoefficient]

theorem actual_integer_pade_identity (A B C : ℕ) (z : ℚ) :
    (pPolynomial A B C).eval₂ (Int.castRingHom ℚ) z -
        (1 - z) ^ (B + C + 1) * (qPolynomial A B C).eval₂ (Int.castRingHom ℚ) z =
      z ^ (A + C + 1) * (ePolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  rw [← pSource_eq_actual_eval, ← qSource_eq_actual_eval, ← eSource_eq_actual_eval]
  exact source_pade_identity A B C z

#print axioms Math.B699.PadeMomentIdentity.pSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.qSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.eSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.actual_integer_pade_identity

end Math.B699.PadeMomentIdentity

end HeightMember025
/- Frozen member 26 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\HomRemainder\Remainder.lean 9ce51165d87486001436f9090a1cf164552a04b5c4260b38870a7bc04c71c8dd -/
section HeightMember026



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

end HeightMember026
/- Frozen member 27 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Bernstein.lean db7132f7228db04d75cb78004be964e821df07787a70ea87f1307c23744c2441 -/
section HeightMember027



/-!
# Positivity of the concrete moment on a generated Bernstein cone

This is a separate candidate from Moment.lean. It provides no certificate
that a particular Padé kernel has the required numerical growth constant.
The functional is not multiplicative; all product estimates below pass
through cone closure and proved linearity instead.

No compilation or axiom audit has been run in this task.
-/

namespace Math.B699.PadeMoment

open Polynomial

theorem moment_bernsteinMonomial_pos (a b : ℕ) :
    0 < moment (bernsteinMonomial a b) := by
  rw [moment_bernsteinMonomial]
  unfold betaMoment
  exact div_pos
    (mul_pos (Nat.cast_pos.mpr (Nat.factorial_pos a))
      (Nat.cast_pos.mpr (Nat.factorial_pos b)))
    (Nat.cast_pos.mpr (Nat.factorial_pos (a + b + 1)))

/-- Finite sums of nonnegative rational multiples of Bernstein monomials.
Multiplication is deliberately not a constructor; it is proved below. -/
inductive BernsteinCone : ℚ[X] → Prop
  | zero : BernsteinCone 0
  | basis (a b : ℕ) : BernsteinCone (bernsteinMonomial a b)
  | add {p q : ℚ[X]} : BernsteinCone p → BernsteinCone q → BernsteinCone (p + q)
  | scale (c : ℚ) (hc : 0 ≤ c) {p : ℚ[X]} :
      BernsteinCone p → BernsteinCone (Polynomial.C c * p)

theorem bernsteinCone_one : BernsteinCone (1 : ℚ[X]) := by
  simpa only [bernsteinMonomial, pow_zero, mul_one] using BernsteinCone.basis 0 0

theorem bernsteinCone_moment_nonneg {p : ℚ[X]} (hp : BernsteinCone p) :
    0 ≤ moment p := by
  induction hp with
  | zero => simp only [moment_zero, le_refl]
  | basis a b => exact (moment_bernsteinMonomial_pos a b).le
  | @add p q hp hq ihp ihq =>
      rw [moment_add]
      exact add_nonneg ihp ihq
  | @scale c hc p hp ihp =>
      rw [moment_C_mul]
      exact mul_nonneg hc ihp

theorem bernsteinCone_basis_mul (a b : ℕ) {q : ℚ[X]} (hq : BernsteinCone q) :
    BernsteinCone (bernsteinMonomial a b * q) := by
  induction hq with
  | zero => simpa only [mul_zero] using BernsteinCone.zero
  | basis c d =>
      simpa only [bernsteinMonomial_mul] using BernsteinCone.basis (a + c) (b + d)
  | @add p q hp hq ihp ihq =>
      simpa only [mul_add] using BernsteinCone.add ihp ihq
  | @scale c hc p hp ihp =>
      have h := BernsteinCone.scale c hc ihp
      convert h using 1 <;> ring

theorem bernsteinCone_mul {p q : ℚ[X]} (hp : BernsteinCone p) (hq : BernsteinCone q) :
    BernsteinCone (p * q) := by
  induction hp with
  | zero => simpa only [zero_mul] using BernsteinCone.zero
  | basis a b => exact bernsteinCone_basis_mul a b hq
  | @add p r hp hr ihp ihr =>
      simpa only [add_mul] using BernsteinCone.add ihp ihr
  | @scale c hc p hp ihp =>
      simpa only [mul_assoc] using BernsteinCone.scale c hc ihp

theorem bernsteinCone_pow {p : ℚ[X]} (hp : BernsteinCone p) (n : ℕ) :
    BernsteinCone (p ^ n) := by
  induction n with
  | zero => simpa only [pow_zero] using bernsteinCone_one
  | succ n ih => simpa only [pow_succ] using bernsteinCone_mul ih hp

theorem moment_le_of_bernsteinCone_sub {p q : ℚ[X]} (h : BernsteinCone (q - p)) :
    moment p ≤ moment q := by
  have h' : 0 ≤ moment q - moment p := by
    simpa only [moment_sub] using bernsteinCone_moment_nonneg h
  exact sub_nonneg.mp h'

/-- A finite cone certificate for C(lambda)-F yields all powers, without
assuming that moment preserves multiplication. -/
theorem bernsteinCone_power_gap (F : ℚ[X]) (lam : ℚ) (hlam : 0 ≤ lam)
    (hF : BernsteinCone F) (hgap : BernsteinCone (Polynomial.C lam - F)) (n : ℕ) :
    BernsteinCone (Polynomial.C (lam ^ n) - F ^ n) := by
  induction n with
  | zero => simpa only [pow_zero, map_one, sub_self] using BernsteinCone.zero
  | succ n ih =>
      have h := BernsteinCone.add (BernsteinCone.scale lam hlam ih)
        (bernsteinCone_mul (bernsteinCone_pow hF n) hgap)
      convert h using 1 <;> simp only [pow_succ, map_mul] <;> ring

/-- Conditional all-n growth consumer. Supplying concrete Padé kernels and
their numerical cone certificates remains a separate obligation. -/
theorem moment_weighted_power_le (g F : ℚ[X]) (lam : ℚ) (hlam : 0 ≤ lam)
    (hg : BernsteinCone g) (hF : BernsteinCone F)
    (hgap : BernsteinCone (Polynomial.C lam - F)) (n : ℕ) :
    moment (g * F ^ n) ≤ lam ^ n * moment g := by
  have hprod := bernsteinCone_mul hg (bernsteinCone_power_gap F lam hlam hF hgap n)
  have hsub : BernsteinCone (Polynomial.C (lam ^ n) * g - g * F ^ n) := by
    convert hprod using 1 <;> ring
  have hle := moment_le_of_bernsteinCone_sub hsub
  simpa only [moment_C_mul] using hle

#print axioms Math.B699.PadeMoment.bernsteinCone_moment_nonneg
#print axioms Math.B699.PadeMoment.bernsteinCone_mul
#print axioms Math.B699.PadeMoment.bernsteinCone_power_gap
#print axioms Math.B699.PadeMoment.moment_weighted_power_le

end Math.B699.PadeMoment

end HeightMember027
