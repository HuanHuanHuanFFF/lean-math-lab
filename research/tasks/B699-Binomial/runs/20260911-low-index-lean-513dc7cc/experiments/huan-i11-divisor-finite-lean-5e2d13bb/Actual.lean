import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.RationalDivisor.Content
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-! UNCOMPILED CANDIDATE. Actual (c,d)=(5,3) divisor sequences and factorial steps.
The imported rational-divisor chain and all files in this candidate have separate
acceptance requirements. No divisor-step hypothesis is supplied by the caller. -/

namespace Math.B699.I11DivisorFiveThree

open Math.B699.RationalFactorialDivisor
open Math.B699.ElementaryFactorialBound

def divisorZero (m : ℕ) : ℚ := rationalDivisor (3 * m) (2 * m - 1)
def divisorOne (m : ℕ) : ℚ := rationalDivisor (3 * m - 1) (2 * m)

def numeratorZero (x : ℚ) : ℚ :=
  (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3) * x

def numeratorOne (x : ℚ) : ℚ :=
  (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3) * (x + 1)

/-- The two raw denominator products are equal by ring normalization. -/
def denominator (x : ℚ) : ℚ :=
  (3 * x + 1) * (3 * x + 2) * (3 * x + 3) * (2 * x) * (2 * x + 1)

def ratioZero (x : ℚ) : ℚ := numeratorZero x / denominator x
def ratioOne (x : ℚ) : ℚ := numeratorOne x / denominator x

def targetBase : ℚ := 1273397 / 1000000
def middleBase : ℚ := 1318089 / 1000000
def targetRate : ℚ := targetBase ^ 3
def middleRate : ℚ := middleBase ^ 3
def infiniteRate : ℚ := 64 / 27
def blockRatio : ℚ := middleRate / targetRate

theorem divisor_zero_pos (m : ℕ) : 0 < divisorZero m :=
  rationalDivisor_pos _ _

theorem divisor_one_pos (m : ℕ) : 0 < divisorOne m :=
  rationalDivisor_pos _ _

theorem denominator_pos (x : ℚ) (hx : 0 < x) : 0 < denominator x := by
  unfold denominator
  positivity

theorem target_rate_pos : 0 < targetRate := by norm_num [targetRate, targetBase]
theorem middle_rate_pos : 0 < middleRate := by norm_num [middleRate, middleBase]
theorem target_rate_le_infinite : targetRate ≤ infiniteRate := by
  norm_num [targetRate, targetBase, infiniteRate]
theorem block_ratio_ge_one : 1 ≤ blockRatio := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem block_linear_bound : (2 : ℚ) ≤ 1 + 10 * (blockRatio - 1) := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]

theorem divisor_zero_formula (m : ℕ) (hm : 1 ≤ m) :
    divisorZero m =
      (((4 * m - 1).factorial : ℕ) : ℚ) * (((m - 1).factorial : ℕ) : ℚ) /
        ((((3 * m).factorial : ℕ) : ℚ) * (((2 * m - 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * m - 1) / 2 = m - 1 := by omega
  have hn : 3 * m + (m - 1) = 4 * m - 1 := by omega
  simp only [divisorZero, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_one_formula (m : ℕ) (hm : 1 ≤ m) :
    divisorOne m =
      (((4 * m - 1).factorial : ℕ) : ℚ) * ((m.factorial : ℕ) : ℚ) /
        ((((3 * m - 1).factorial : ℕ) : ℚ) * (((2 * m).factorial : ℕ) : ℚ)) := by
  have hf : (2 * m) / 2 = m := by omega
  have hn : 3 * m - 1 + m = 4 * m - 1 := by omega
  simp only [divisorOne, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_zero_one : divisorZero 1 = 1 := by
  norm_num [divisorZero, rationalDivisor, factorialNumerator, factorialDenominator, Nat.factorial]

theorem divisor_one_one : divisorOne 1 = 3 / 2 := by
  norm_num [divisorOne, rationalDivisor, factorialNumerator, factorialDenominator, Nat.factorial]

theorem divisor_zero_step_succ (k : ℕ) :
    divisorZero (k + 2) = divisorZero (k + 1) * ratioZero ((k : ℚ) + 1) := by
  rw [divisor_zero_formula (k + 2) (by omega), divisor_zero_formula (k + 1) (by omega)]
  have hn : 4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4 := by omega
  have hf : k + 2 - 1 = (k + 1 - 1) + 1 := by omega
  have hu : 3 * (k + 2) = 3 * (k + 1) + 3 := by omega
  have hv : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hn1 : (4 * (k + 1) - 1) + 1 = 4 * (k + 1) := by omega
  have hf1 : (k + 1 - 1) + 1 = k + 1 := by omega
  have hv1 : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  rw [hn, hf, hu, hv, factorial_add_cast (4 * (k + 1) - 1) 4,
    factorial_add_cast (k + 1 - 1) 1, factorial_add_cast (3 * (k + 1)) 3,
    factorial_add_cast (2 * (k + 1) - 1) 2, hn1, hf1, hv1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratioZero numeratorZero denominator
  field_simp
  <;> ring

theorem divisor_one_step_succ (k : ℕ) :
    divisorOne (k + 2) = divisorOne (k + 1) * ratioOne ((k : ℚ) + 1) := by
  rw [divisor_one_formula (k + 2) (by omega), divisor_one_formula (k + 1) (by omega)]
  have hn : 4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4 := by omega
  have hf : k + 2 = (k + 1) + 1 := by omega
  have hu : 3 * (k + 2) - 1 = (3 * (k + 1) - 1) + 3 := by omega
  have hv : 2 * (k + 2) = 2 * (k + 1) + 2 := by omega
  have hn1 : (4 * (k + 1) - 1) + 1 = 4 * (k + 1) := by omega
  have hu1 : (3 * (k + 1) - 1) + 1 = 3 * (k + 1) := by omega
  rw [hn, hf, hu, hv, factorial_add_cast (4 * (k + 1) - 1) 4,
    factorial_add_cast (k + 1) 1, factorial_add_cast (3 * (k + 1) - 1) 3,
    factorial_add_cast (2 * (k + 1)) 2, hn1, hu1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratioOne numeratorOne denominator
  field_simp
  <;> ring

theorem divisor_zero_step (m : ℕ) (hm : 1 ≤ m) :
    divisorZero (m + 1) = divisorZero m * ratioZero (m : ℚ) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  simpa only [Nat.cast_add, Nat.cast_one] using divisor_zero_step_succ k

theorem divisor_one_step (m : ℕ) (hm : 1 ≤ m) :
    divisorOne (m + 1) = divisorOne m * ratioOne (m : ℚ) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  simpa only [Nat.cast_add, Nat.cast_one] using divisor_one_step_succ k

end Math.B699.I11DivisorFiveThree
