import Mathlib.Data.Nat.Choose.Basic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-moment-5e2d13bb».Moment
import Mathlib.Algebra.Field.Rat
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

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
