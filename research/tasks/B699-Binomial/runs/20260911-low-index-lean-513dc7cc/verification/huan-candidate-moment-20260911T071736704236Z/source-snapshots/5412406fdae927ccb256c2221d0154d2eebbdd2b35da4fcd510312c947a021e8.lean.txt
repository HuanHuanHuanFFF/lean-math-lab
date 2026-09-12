import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Algebra.Field.Rat
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

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
