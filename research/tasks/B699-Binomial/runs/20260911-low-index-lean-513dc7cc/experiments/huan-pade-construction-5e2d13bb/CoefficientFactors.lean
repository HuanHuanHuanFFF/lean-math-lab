import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Factorial cancellation for the three actual Padé coefficient expansions

These are the algebraic factors resulting from expanding the source integrands
in BFT (3.1)--(3.3) and substituting the beta moment a! b!/(a+b+1)!.
They do not assume or prove the analytic beta integral formula. They are separate
from the sibling's exponential estimate for a factorial prefactor.

All coefficient indices are explicit and valid; natural subtraction is justified
by r <= C, r <= A, or r <= B respectively. No height or polynomial identity is
assumed. Candidate pending the parent's exact-source Lean verification.
-/

namespace Math.B699.PadeCoefficientFactors

noncomputable def betaMoment (a b : ℕ) : ℝ :=
  (a.factorial : ℝ) * (b.factorial : ℝ) / ((a + b + 1).factorial : ℝ)

noncomputable def prefactor (A B C : ℕ) : ℝ :=
  ((A + B + C + 1).factorial : ℝ) /
    ((A.factorial : ℝ) * (B.factorial : ℝ) * (C.factorial : ℝ))

private theorem factorial_cast_ne_zero (n : ℕ) : (n.factorial : ℝ) ≠ 0 :=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)

theorem choose_cast_factorial (n r : ℕ) (hr : r ≤ n) :
    (n.choose r : ℝ) = (n.factorial : ℝ) /
      ((r.factorial : ℝ) * ((n - r).factorial : ℝ)) := by
  apply (eq_div_iff (mul_ne_zero (factorial_cast_ne_zero r)
    (factorial_cast_ne_zero (n - r)))).2
  have h := Nat.choose_mul_factorial_mul_factorial hr
  have hc : (n.choose r : ℝ) * (r.factorial : ℝ) * ((n - r).factorial : ℝ) =
      (n.factorial : ℝ) := by exact_mod_cast h
  simpa only [mul_assoc] using hc

/-- Expanding `(z-u)^C` in (3.1) yields this coefficient; multiply by
`(-1)^(C+r)` to recover the signed integer P coefficient. -/
theorem p_coefficient_factor (A B C r : ℕ) (hr : r ≤ C) :
    prefactor A B C * (C.choose r : ℝ) * betaMoment (A + C - r) B =
      ((A + B + C + 1).choose r : ℝ) * ((A + C - r).choose A : ℝ) := by
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
    prefactor A B C * (A.choose r : ℝ) * betaMoment (B + r) (A + C - r) =
      ((A + C - r).choose C : ℝ) * ((B + r).choose r : ℝ) := by
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
    prefactor A B C * (B.choose r : ℝ) * betaMoment (A + r) C =
      ((A + r).choose r : ℝ) *
        ((A + B + C + 1).choose (A + C + r + 1) : ℝ) := by
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

#print axioms Math.B699.PadeCoefficientFactors.choose_cast_factorial
#print axioms Math.B699.PadeCoefficientFactors.p_coefficient_factor
#print axioms Math.B699.PadeCoefficientFactors.q_coefficient_factor
#print axioms Math.B699.PadeCoefficientFactors.e_coefficient_factor

end Math.B699.PadeCoefficientFactors
