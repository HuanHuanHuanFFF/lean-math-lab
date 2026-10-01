import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group004
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
set_option Elab.async false
/- Frozen member 20 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Moment.lean 5412406fdae927ccb256c2221d0154d2eebbdd2b35da4fcd510312c947a021e8 -/
section HeightMember020







/-!
# A concrete rational polynomial moment, without integration

All values are defined from the actual finitely supported coefficients.
The beta moment theorem uses a polynomial recurrence and factorial arithmetic.
No existence assumption on a linear functional is an input.

Candidate only: this file has not been compiled or axiom-audited in this task.
The source API and direct import-cache inventory are recorded beside the file.
-/

namespace Math.B699.PadeMoment

open Polynomial

/-- The actual rational coefficient sum, not an abstract moment axiom. -/
noncomputable def moment (p : ℚ[X]) : ℚ :=
  p.sum fun n a => a / ((n : ℚ) + 1)

@[simp] theorem moment_zero : moment (0 : ℚ[X]) = 0 := by
  simp [moment]

@[simp] theorem moment_monomial (n : ℕ) (a : ℚ) :
    moment (Polynomial.monomial n a) = a / ((n : ℚ) + 1) := by
  simp [moment, Polynomial.sum_monomial_index]

@[simp] theorem moment_X_pow (n : ℕ) :
    moment ((X : ℚ[X]) ^ n) = 1 / ((n : ℚ) + 1) := by
  rw [Polynomial.X_pow_eq_monomial, moment_monomial]

@[simp] theorem moment_add (p q : ℚ[X]) :
    moment (p + q) = moment p + moment q := by
  unfold moment
  apply Polynomial.sum_add_index
  · intro n
    exact zero_div _
  · intro n a b
    exact add_div a b _

@[simp] theorem moment_smul (c : ℚ) (p : ℚ[X]) :
    moment (c • p) = c * moment p := by
  unfold moment
  rw [Polynomial.sum_smul_index p c _ (by intro n; exact zero_div _)]
  simpa only [smul_eq_mul, mul_div_assoc] using
    (Polynomial.smul_sum p c (fun n a => a / ((n : ℚ) + 1))).symm

/-- The proved linear structure on the concrete coefficient sum. -/
noncomputable def momentLinear : ℚ[X] →ₗ[ℚ] ℚ where
  toFun := moment
  map_add' := moment_add
  map_smul' c p := by
    simpa only [smul_eq_mul, RingHom.id_apply] using moment_smul c p

@[simp] theorem momentLinear_apply (p : ℚ[X]) : momentLinear p = moment p := rfl

@[simp] theorem moment_sub (p q : ℚ[X]) :
    moment (p - q) = moment p - moment q := by
  exact map_sub momentLinear p q

@[simp] theorem moment_C_mul (c : ℚ) (p : ℚ[X]) :
    moment (Polynomial.C c * p) = c * moment p := by
  simpa only [Polynomial.smul_eq_C_mul] using moment_smul c p

@[simp] theorem moment_one : moment (1 : ℚ[X]) = 1 := by
  simpa only [pow_zero, Nat.cast_zero, zero_add, div_one] using moment_X_pow 0

/-- An unnormalized Bernstein basis element. -/
noncomputable def bernsteinMonomial (a b : ℕ) : ℚ[X] :=
  X ^ a * (1 - X) ^ b

theorem bernsteinMonomial_succ_right (a b : ℕ) :
    bernsteinMonomial a (b + 1) =
      bernsteinMonomial a b - bernsteinMonomial (a + 1) b := by
  unfold bernsteinMonomial
  simp only [pow_succ]
  ring

/-- The explicit factorial expression, to be proved equal to the actual moment. -/
def betaMoment (a b : ℕ) : ℚ :=
  (a.factorial : ℚ) * (b.factorial : ℚ) / ((a + b + 1).factorial : ℚ)

private theorem factorialRat_ne_zero (n : ℕ) : (n.factorial : ℚ) ≠ 0 :=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)

private theorem natSuccRat_ne_zero (n : ℕ) : (n : ℚ) + 1 ≠ 0 := by
  have h : ((n + 1 : ℕ) : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
  simpa only [Nat.cast_add, Nat.cast_one] using h

@[simp] theorem betaMoment_zero_right (a : ℕ) :
    betaMoment a 0 = 1 / ((a : ℚ) + 1) := by
  unfold betaMoment
  simp only [Nat.add_zero, Nat.factorial_zero, Nat.cast_one, mul_one]
  rw [Nat.factorial_succ]
  simp only [Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  field_simp [factorialRat_ne_zero a, natSuccRat_ne_zero a] <;> ring

theorem betaMoment_succ_right (a b : ℕ) :
    betaMoment a (b + 1) = betaMoment a b - betaMoment (a + 1) b := by
  have hleft : a + (b + 1) + 1 = (a + b + 1) + 1 := by
    simp only [Nat.add_assoc]
  have hright : (a + 1) + b + 1 = (a + b + 1) + 1 := by
    simp only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm]
  have hden : (a : ℚ) + (b : ℚ) + 1 + 1 ≠ 0 := by
    simpa only [Nat.cast_add, Nat.cast_one] using natSuccRat_ne_zero (a + b + 1)
  unfold betaMoment
  rw [hleft, hright]
  simp only [Nat.factorial_succ (a + b + 1), Nat.factorial_succ a,
    Nat.factorial_succ b, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  field_simp [factorialRat_ne_zero (a + b + 1), hden] <;> ring

/-- The unrestricted beta moment formula for the explicitly defined functional. -/
theorem moment_bernsteinMonomial (a b : ℕ) :
    moment (bernsteinMonomial a b) = betaMoment a b := by
  induction b generalizing a with
  | zero =>
      simp only [bernsteinMonomial, pow_zero, mul_one, moment_X_pow,
        betaMoment_zero_right]
  | succ b ih =>
      rw [bernsteinMonomial_succ_right, moment_sub, ih a, ih (a + 1)]
      exact (betaMoment_succ_right a b).symm

theorem moment_X_pow_one_sub_X_pow (a b : ℕ) :
    moment ((X : ℚ[X]) ^ a * (1 - X) ^ b) =
      (a.factorial : ℚ) * (b.factorial : ℚ) / ((a + b + 1).factorial : ℚ) := by
  exact moment_bernsteinMonomial a b

theorem bernsteinMonomial_mul (a b c d : ℕ) :
    bernsteinMonomial a b * bernsteinMonomial c d =
      bernsteinMonomial (a + c) (b + d) := by
  unfold bernsteinMonomial
  simp only [pow_add]
  ring

#print axioms Math.B699.PadeMoment.moment_add
#print axioms Math.B699.PadeMoment.moment_smul
#print axioms Math.B699.PadeMoment.moment_C_mul
#print axioms Math.B699.PadeMoment.moment_sub
#print axioms Math.B699.PadeMoment.moment_X_pow
#print axioms Math.B699.PadeMoment.moment_X_pow_one_sub_X_pow

end Math.B699.PadeMoment

end HeightMember020
/- Frozen member 21 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Factors.lean 6b623cfbb0c112bbc450f8daf6f814136d3921a55344615ad4ffa57987727991 -/
section HeightMember021







/-!
# Rational factorial cancellation for the actual BFT coefficient formulas

Derived from the frozen sibling CoefficientFactors.lean by changing the field
to Rat and using the explicit betaMoment from the concrete Moment candidate.
No coefficient factor theorem or analytic integral is an assumption.
All sources in this new experiment are UNCOMPILED CANDIDATES.
-/

namespace Math.B699.PadeMomentIdentity

open Math.B699.PadeMoment

noncomputable def prefactor (A B C : ℕ) : ℚ :=
  ((A + B + C + 1).factorial : ℚ) /
    ((A.factorial : ℚ) * (B.factorial : ℚ) * (C.factorial : ℚ))

private theorem factorial_cast_ne_zero (n : ℕ) : (n.factorial : ℚ) ≠ 0 :=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)

theorem choose_cast_factorial (n r : ℕ) (hr : r ≤ n) :
    (n.choose r : ℚ) = (n.factorial : ℚ) /
      ((r.factorial : ℚ) * ((n - r).factorial : ℚ)) := by
  apply (eq_div_iff (mul_ne_zero (factorial_cast_ne_zero r)
    (factorial_cast_ne_zero (n - r)))).2
  have h := Nat.choose_mul_factorial_mul_factorial hr
  have hc : (n.choose r : ℚ) * (r.factorial : ℚ) * ((n - r).factorial : ℚ) =
      (n.factorial : ℚ) := by exact_mod_cast h
  simpa only [mul_assoc] using hc

/-- Expanding `(z-u)^C` in (3.1) yields this coefficient; multiply by
`(-1)^(C+r)` to recover the signed integer P coefficient. -/
theorem p_coefficient_factor (A B C r : ℕ) (hr : r ≤ C) :
    prefactor A B C * (C.choose r : ℚ) * betaMoment (A + C - r) B =
      ((A + B + C + 1).choose r : ℚ) * ((A + C - r).choose A : ℚ) := by
  have hrN : r ≤ A + B + C + 1 := by omega
  have hA : A ≤ A + C - r := by omega
  rw [choose_cast_factorial C r hr,
    choose_cast_factorial (A + B + C + 1) r hrN,
    choose_cast_factorial (A + C - r) A hA]
  dsimp [prefactor, betaMoment]
  have hsub : A + C - r - A = C - r := by omega
  have htotal : A + C - r + B + 1 = A + B + C + 1 - r := by omega
  rw [hsub, htotal]
  field_simp [factorial_cast_ne_zero]
  <;> ring

/-- Expanding `(1-u+zu)^A` in (3.2) yields this coefficient; the global
parity factor is `(-1)^C`. -/
theorem q_coefficient_factor (A B C r : ℕ) (hr : r ≤ A) :
    prefactor A B C * (A.choose r : ℚ) * betaMoment (B + r) (A + C - r) =
      ((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ) := by
  have hC : C ≤ A + C - r := by omega
  have hrB : r ≤ B + r := by omega
  rw [choose_cast_factorial A r hr,
    choose_cast_factorial (A + C - r) C hC,
    choose_cast_factorial (B + r) r hrB]
  dsimp [prefactor, betaMoment]
  have hsub : A + C - r - C = A - r := by omega
  have hsubB : B + r - r = B := by omega
  have htotal : B + r + (A + C - r) + 1 = A + B + C + 1 := by omega
  rw [hsub, hsubB, htotal]
  field_simp [factorial_cast_ne_zero]
  <;> ring

/-- Expanding `(1-zu)^B` in (3.3) yields this coefficient; multiply by
`(-1)^r` to recover the signed integer E coefficient. -/
theorem e_coefficient_factor (A B C r : ℕ) (hr : r ≤ B) :
    prefactor A B C * (B.choose r : ℚ) * betaMoment (A + r) C =
      ((A + r).choose r : ℚ) *
        ((A + B + C + 1).choose (A + C + r + 1) : ℚ) := by
  have hrA : r ≤ A + r := by omega
  have hN : A + C + r + 1 ≤ A + B + C + 1 := by omega
  rw [choose_cast_factorial B r hr,
    choose_cast_factorial (A + r) r hrA,
    choose_cast_factorial (A + B + C + 1) (A + C + r + 1) hN]
  dsimp [prefactor, betaMoment]
  have hsubA : A + r - r = A := by omega
  have hsub : A + B + C + 1 - (A + C + r + 1) = B - r := by omega
  have htotal : A + r + C + 1 = A + C + r + 1 := by omega
  rw [hsubA, hsub, htotal]
  field_simp [factorial_cast_ne_zero]
  <;> ring

#print axioms Math.B699.PadeMomentIdentity.choose_cast_factorial
#print axioms Math.B699.PadeMomentIdentity.p_coefficient_factor
#print axioms Math.B699.PadeMomentIdentity.q_coefficient_factor
#print axioms Math.B699.PadeMomentIdentity.e_coefficient_factor

end Math.B699.PadeMomentIdentity

end HeightMember021
/- Frozen member 22 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Subdivision.lean f8e9687e0d6b4184b37e29640f2a643981028f6347c567424b87d00adef60a6f -/
section HeightMember022





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

end HeightMember022
/- Frozen member 23 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\KernelMoments.lean 75b49f5b6019ebebc26c25321886e75dd48b520592e43b2c77ab704586c7423f -/
section HeightMember023


/-!
# The Padé identity from actual rational moments of polynomial kernels

UNCOMPILED CANDIDATE. All A,B,C are natural numbers and z is any rational.
No Padé identity, multiplicativity of moment, or analytic substitution rule
is an input. The actual integer-coefficient connection is in SourceMoments.
-/

namespace Math.B699.PadeMomentIdentity

open Polynomial Math.B699.PadeMoment

noncomputable def pKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ A * (1 - X) ^ B * (Polynomial.C z - X) ^ C

noncomputable def qKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ B * (1 - X) ^ C * (1 - X + Polynomial.C z * X) ^ A

noncomputable def eKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ A * (1 - X) ^ C * (1 - Polynomial.C z * X) ^ B

noncomputable def pMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  prefactor A B C * moment (pKernel A B C z)

noncomputable def qMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  (-1 : ℚ) ^ C * prefactor A B C * moment (qKernel A B C z)

noncomputable def eMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  prefactor A B C * moment (eKernel A B C z)

theorem pKernel_comp_left (A B C : ℕ) (z : ℚ) :
    (pKernel A B C z).comp (Polynomial.C z * X) =
      Polynomial.C (z ^ (A + C)) * eKernel A B C z := by
  simp only [pKernel, Polynomial.mul_comp, Polynomial.pow_comp,
    Polynomial.sub_comp, Polynomial.X_comp, Polynomial.C_comp, Polynomial.one_comp]
  have h : Polynomial.C z - Polynomial.C z * (X : ℚ[X]) =
      Polynomial.C z * (1 - X) := by ring
  rw [h]
  unfold eKernel
  simp only [mul_pow, Polynomial.C_mul, Polynomial.C_pow, pow_add]
  ring

theorem pKernel_comp_right (A B C : ℕ) (z : ℚ) :
    (pKernel A B C z).comp ((1 - X) + Polynomial.C z * X) =
      Polynomial.C ((-1 : ℚ) ^ C * (1 - z) ^ (B + C)) * qKernel A B C z := by
  simp only [pKernel, Polynomial.mul_comp, Polynomial.pow_comp,
    Polynomial.sub_comp, Polynomial.X_comp, Polynomial.C_comp, Polynomial.one_comp]
  have h1 : (1 : ℚ[X]) - ((1 - X) + Polynomial.C z * X) =
      Polynomial.C (1 - z) * X := by
    simp only [map_sub, map_one]
    ring
  have h2 : Polynomial.C z - ((1 - X : ℚ[X]) + Polynomial.C z * X) =
      Polynomial.C (-(1 - z)) * (1 - X) := by
    simp only [map_neg, map_sub, map_one]
    ring
  have hneg : (Polynomial.C (-(1 - z)) : ℚ[X]) =
      Polynomial.C (-1) * Polynomial.C (1 - z) := by
    rw [← Polynomial.C_mul, neg_one_mul]
  rw [h1, h2, hneg]
  unfold qKernel
  simp only [mul_pow, Polynomial.C_mul, Polynomial.C_pow, pow_add]
  ring

/-- The correct source exponents are B+C+1 and A+C+1. -/
theorem moment_pade_identity (A B C : ℕ) (z : ℚ) :
    pMoment A B C z - (1 - z) ^ (B + C + 1) * qMoment A B C z =
      z ^ (A + C + 1) * eMoment A B C z := by
  have h := moment_subdivision (pKernel A B C z) z
  simp only [pKernel_comp_left, pKernel_comp_right, moment_C_mul] at h
  unfold pMoment qMoment eMoment
  rw [h]
  simp only [pow_succ]
  ring

#print axioms Math.B699.PadeMomentIdentity.pKernel_comp_left
#print axioms Math.B699.PadeMomentIdentity.pKernel_comp_right
#print axioms Math.B699.PadeMomentIdentity.moment_pade_identity

end Math.B699.PadeMomentIdentity

end HeightMember023
