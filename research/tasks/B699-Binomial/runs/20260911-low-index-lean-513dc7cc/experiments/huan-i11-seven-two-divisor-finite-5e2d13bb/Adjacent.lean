import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.RationalDivisor.Content
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-! UNCOMPILED. Adjacent actual rational factorial divisors.
This compares D only; no equality or monotonicity of the two qContents is claimed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.RationalFactorialDivisor
open Math.B699.ElementaryFactorialBound

theorem rationalDivisor_adjacent_odd_even (u r : ℕ) (hu : 1 ≤ u) :
    rationalDivisor (u - 1) (2 * r + 2) =
      ((u : ℚ) / 2) * rationalDivisor u (2 * r + 1) := by
  obtain ⟨k, rfl⟩ : ∃ k, u = k + 1 := Nat.exists_eq_add_of_le' hu
  have hf₀ : (2 * r + 1) / 2 = r := by omega
  have hf₁ : (2 * r + 2) / 2 = r + 1 := by omega
  have hs : k + (r + 1) = (k + 1) + r := by omega
  simp only [rationalDivisor, factorialNumerator, factorialDenominator,
    Nat.add_sub_cancel, hf₀, hf₁, hs, Nat.cast_mul]
  have he : 2 * r + 2 = (2 * r + 1) + 1 := by omega
  rw [he, factorial_add_cast r 1, factorial_add_cast (2 * r + 1) 1,
    factorial_add_cast k 1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  have hkfac : (((k.factorial : ℕ) : ℚ)) ≠ 0 := by positivity
  have hrfac : ((((2 * r + 1).factorial : ℕ) : ℚ)) ≠ 0 := by positivity
  have hk : (k : ℚ) + 1 ≠ 0 := by positivity
  have hr : (2 : ℚ) * (r : ℚ) + 1 + 1 ≠ 0 := by positivity
  field_simp [hkfac, hrfac, hk, hr]
  <;> ring

theorem rationalDivisor_adjacent_odd_even_ge (u r : ℕ) (hu : 2 ≤ u) :
    rationalDivisor u (2 * r + 1) ≤ rationalDivisor (u - 1) (2 * r + 2) := by
  rw [rationalDivisor_adjacent_odd_even u r (by omega)]
  have huQ : (2 : ℚ) ≤ (u : ℚ) := by exact_mod_cast hu
  have hfactor : (1 : ℚ) ≤ (u : ℚ) / 2 := by linarith
  calc
    rationalDivisor u (2 * r + 1) = 1 * rationalDivisor u (2 * r + 1) := by ring
    _ ≤ ((u : ℚ) / 2) * rationalDivisor u (2 * r + 1) :=
      mul_le_mul_of_nonneg_right hfactor (rationalDivisor_pos u (2 * r + 1)).le

end Math.B699.RationalFactorialDivisor
