import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-moment-5e2d13bb».Moment
import Mathlib.Algebra.Order.Field.Rat

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
