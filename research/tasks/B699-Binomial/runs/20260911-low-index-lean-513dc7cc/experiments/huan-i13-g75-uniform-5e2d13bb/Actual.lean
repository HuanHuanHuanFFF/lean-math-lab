import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.RationalDivisor.Content
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorSevenTwo.Adjacent

/-! UNCOMPILED. Actual c7d5 rational divisors, exact closed factorial forms and
one-step recurrence. The step is proved from factorial_add_cast; no step input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13G75Uniform
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

def divisorZero (m : ℕ) : ℚ := rationalDivisor (5 * m) (2 * m - 1)
def divisorOne (m : ℕ) : ℚ := rationalDivisor (5 * m - 1) (2 * m)
def infiniteRate : ℚ := 11664 / 3125

def numeratorZero (x : ℚ) : ℚ :=
  (6 * x) * (6 * x + 1) * (6 * x + 2) * (6 * x + 3) *
    (6 * x + 4) * (6 * x + 5) * x

def denominator (x : ℚ) : ℚ :=
  (5 * x + 1) * (5 * x + 2) * (5 * x + 3) * (5 * x + 4) *
    (5 * x + 5) * (2 * x) * (2 * x + 1)

def ratioZero (x : ℚ) : ℚ := numeratorZero x / denominator x

theorem infinite_rate_pos : 0 < infiniteRate := by norm_num [infiniteRate]

theorem divisor_zero_pos (m : ℕ) : 0 < divisorZero m := rationalDivisor_pos _ _

theorem divisor_one_pos (m : ℕ) : 0 < divisorOne m := rationalDivisor_pos _ _

theorem denominator_pos (x : ℚ) (hx : 0 < x) : 0 < denominator x := by
  unfold denominator
  positivity

theorem divisor_zero_formula (m : ℕ) (hm : 1 ≤ m) :
    divisorZero m =
      (((6 * m - 1).factorial : ℕ) : ℚ) * (((m - 1).factorial : ℕ) : ℚ) /
        ((((5 * m).factorial : ℕ) : ℚ) * (((2 * m - 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * m - 1) / 2 = m - 1 := by omega
  have hn : 5 * m + (m - 1) = 6 * m - 1 := by omega
  simp only [divisorZero, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_one_formula (m : ℕ) (hm : 1 ≤ m) :
    divisorOne m =
      (((6 * m - 1).factorial : ℕ) : ℚ) * ((m.factorial : ℕ) : ℚ) /
        ((((5 * m - 1).factorial : ℕ) : ℚ) * (((2 * m).factorial : ℕ) : ℚ)) := by
  have hf : (2 * m) / 2 = m := by omega
  have hn : 5 * m - 1 + m = 6 * m - 1 := by omega
  simp only [divisorOne, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_zero_one : divisorZero 1 = 1 := by
  rw [divisor_zero_formula 1 (by decide)]
  norm_num

theorem divisor_one_eq (m : ℕ) (hm : 1 ≤ m) :
    divisorOne m = ((5 : ℚ) * (m : ℚ) / 2) * divisorZero m := by
  have h := rationalDivisor_adjacent_odd_even (5 * m) (m - 1) (by omega)
  have ho : 2 * (m - 1) + 1 = 2 * m - 1 := by omega
  have he : 2 * (m - 1) + 2 = 2 * m := by omega
  simpa only [divisorZero, divisorOne, ho, he, Nat.cast_mul, Nat.cast_ofNat] using h

theorem divisor_zero_le_one (m : ℕ) (hm : 1 ≤ m) :
    divisorZero m ≤ divisorOne m := by
  have h := rationalDivisor_adjacent_odd_even_ge (5 * m) (m - 1) (by omega)
  have ho : 2 * (m - 1) + 1 = 2 * m - 1 := by omega
  have he : 2 * (m - 1) + 2 = 2 * m := by omega
  simpa only [divisorZero, divisorOne, ho, he] using h

/-- The shifted index keeps all factorial arguments nonnegative without a
truncated predecessor cancellation hidden inside a field tactic. -/
theorem divisor_zero_step_succ (k : ℕ) :
    divisorZero (k + 2) = divisorZero (k + 1) * ratioZero ((k : ℚ) + 1) := by
  rw [divisor_zero_formula (k + 2) (by omega), divisor_zero_formula (k + 1) (by omega)]
  have hn : 6 * (k + 2) - 1 = (6 * (k + 1) - 1) + 6 := by omega
  have hf : k + 2 - 1 = (k + 1 - 1) + 1 := by omega
  have hu : 5 * (k + 2) = 5 * (k + 1) + 5 := by omega
  have hv : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hn1 : (6 * (k + 1) - 1) + 1 = 6 * (k + 1) := by omega
  have hf1 : (k + 1 - 1) + 1 = k + 1 := by omega
  have hv1 : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  rw [hn, hf, hu, hv, factorial_add_cast (6 * (k + 1) - 1) 6,
    factorial_add_cast (k + 1 - 1) 1, factorial_add_cast (5 * (k + 1)) 5,
    factorial_add_cast (2 * (k + 1) - 1) 2, hn1, hf1, hv1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratioZero numeratorZero denominator
  field_simp
  <;> ring

theorem divisor_zero_step (m : ℕ) (hm : 1 ≤ m) :
    divisorZero (m + 1) = divisorZero m * ratioZero (m : ℚ) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  simpa only [Nat.cast_add, Nat.cast_one] using divisor_zero_step_succ k

end Math.B699.I13G75Uniform
