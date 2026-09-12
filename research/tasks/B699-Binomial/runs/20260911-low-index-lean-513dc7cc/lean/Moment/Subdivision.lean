import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Moment.Factors
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Data.Nat.Choose.Sum

/-!
# Algebraic subdivision of the concrete rational moment

UNCOMPILED CANDIDATE. The proof uses actual coefficient moments, the proved
beta-moment candidate, a finite binomial expansion, and a geometric identity.
No interval integral, derivative, division by z or division by 1-z is used.
-/

namespace Math.B699.PadeMomentIdentity

open Polynomial Math.B699.PadeMoment
open scoped BigOperators

theorem moment_sum {ι : Type*} (s : Finset ι) (f : ι → ℚ[X]) :
    moment (∑ i ∈ s, f i) = ∑ i ∈ s, moment (f i) := by
  classical
  simpa only [momentLinear_apply] using (map_sum momentLinear f s)

private theorem factorial_rat_ne_zero (n : ℕ) : (n.factorial : ℚ) ≠ 0 :=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)

/-- Every normalized Bernstein basis element of degree n has the same mass. -/
theorem choose_mul_beta (n r : ℕ) (hr : r ≤ n) :
    (n.choose r : ℚ) * betaMoment r (n - r) = 1 / ((n : ℚ) + 1) := by
  rw [choose_cast_factorial n r hr]
  unfold betaMoment
  have htotal : r + (n - r) + 1 = n + 1 := by omega
  rw [htotal, Nat.factorial_succ n]
  have hn : (n : ℚ) + 1 ≠ 0 := by
    have h : ((n + 1 : ℕ) : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
    simpa only [Nat.cast_add, Nat.cast_one] using h
  simp only [Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  field_simp [factorial_rat_ne_zero, hn] <;> ring

theorem affine_right_power_expansion (n : ℕ) (z : ℚ) :
    ((1 - X : ℚ[X]) + Polynomial.C z * X) ^ n =
      ∑ r ∈ Finset.range (n + 1),
        Polynomial.C ((n.choose r : ℚ) * z ^ r) * bernsteinMonomial r (n - r) := by
  classical
  calc
    ((1 - X : ℚ[X]) + Polynomial.C z * X) ^ n =
        (Polynomial.C z * X + (1 - X)) ^ n := by rw [add_comm]
    _ = ∑ r ∈ Finset.range (n + 1),
        (Polynomial.C z * X) ^ r * (1 - X) ^ (n - r) * (n.choose r : ℚ[X]) :=
      add_pow _ _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r hr
      unfold bernsteinMonomial
      rw [mul_pow, map_mul, map_pow, map_natCast]
      ring

theorem moment_affine_right_power (n : ℕ) (z : ℚ) :
    moment (((1 - X : ℚ[X]) + Polynomial.C z * X) ^ n) =
      (1 / ((n : ℚ) + 1)) * ∑ r ∈ Finset.range (n + 1), z ^ r := by
  classical
  rw [affine_right_power_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hmass := choose_mul_beta n r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((n.choose r : ℚ) * z ^ r) * betaMoment r (n - r) =
        z ^ r * ((n.choose r : ℚ) * betaMoment r (n - r)) := by ring
    _ = z ^ r * (1 / ((n : ℚ) + 1)) := by rw [hmass]
    _ = _ := by ring

/-- A division-free geometric sum identity, including z=0 and z=1. -/
theorem one_sub_mul_power_sum (n : ℕ) (z : ℚ) :
    (1 - z) * (∑ r ∈ Finset.range (n + 1), z ^ r) = 1 - z ^ (n + 1) := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Finset.sum_range_succ, mul_add, ih]
      simp only [pow_succ]
      ring

theorem moment_monomial_comp_left (n : ℕ) (a z : ℚ) :
    moment ((Polynomial.monomial n a).comp (Polynomial.C z * X)) =
      a * z ^ n / ((n : ℚ) + 1) := by
  rw [Polynomial.monomial_comp]
  have hpow : (Polynomial.C z * (X : ℚ[X])) ^ n = Polynomial.C (z ^ n) * X ^ n := by
    rw [mul_pow, map_pow]
  rw [hpow, ← mul_assoc, ← map_mul, moment_C_mul, moment_X_pow]
  ring

/-- Algebraic oriented subdivision with a reflected right segment.
The identity holds for every rational z, not only for z in the unit interval. -/
theorem moment_subdivision (p : ℚ[X]) (z : ℚ) :
    moment p = z * moment (p.comp (Polynomial.C z * X)) +
      (1 - z) * moment (p.comp ((1 - X) + Polynomial.C z * X)) := by
  induction p using Polynomial.induction_on' with
  | add p q ihp ihq =>
      simp only [Polynomial.add_comp, moment_add]
      rw [ihp, ihq]
      ring
  | monomial n a =>
      rw [moment_monomial, moment_monomial_comp_left, Polynomial.monomial_comp,
        moment_C_mul, moment_affine_right_power]
      have hsum : z * z ^ n +
          (1 - z) * (∑ r ∈ Finset.range (n + 1), z ^ r) = 1 := by
        rw [← pow_succ', one_sub_mul_power_sum]
        ring
      calc
        a / ((n : ℚ) + 1) = (a / ((n : ℚ) + 1)) * 1 := by ring
        _ = (a / ((n : ℚ) + 1)) *
            (z * z ^ n + (1 - z) * (∑ r ∈ Finset.range (n + 1), z ^ r)) := by rw [hsum]
        _ = _ := by ring

#print axioms Math.B699.PadeMomentIdentity.choose_mul_beta
#print axioms Math.B699.PadeMomentIdentity.moment_affine_right_power
#print axioms Math.B699.PadeMomentIdentity.moment_subdivision

end Math.B699.PadeMomentIdentity
