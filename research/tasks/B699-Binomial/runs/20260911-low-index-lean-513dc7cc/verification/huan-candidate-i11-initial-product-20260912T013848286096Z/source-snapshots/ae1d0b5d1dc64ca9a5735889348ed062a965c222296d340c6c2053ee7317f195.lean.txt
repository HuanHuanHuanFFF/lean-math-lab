import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.RationalDivisor.Content
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon
import Mathlib.Algebra.Order.Field.Rat

/-! UNCOMPILED. Four actual c5d4 divisor tracks, each step advances m by 2. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

inductive Track
  | evenZero | evenOne | oddZero | oddOne
  deriving DecidableEq, Repr

def rho : Track → ℕ
  | .evenZero => 0
  | .evenOne => 0
  | .oddZero => 1
  | .oddOne => 1

def delta : Track → ℕ
  | .evenZero => 0
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 1

def kMin : Track → ℕ
  | .evenZero => 1
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 0

def cutoff : Track → ℕ
  | .evenZero => 16
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 15

def loss : Track → ℕ
  | .evenZero => 9
  | .evenOne => 1
  | .oddZero => 2
  | .oddOne => 10

def initialValue : Track → ℚ
  | .evenZero => 1
  | .evenOne => 4
  | .oddZero => 1
  | .oddOne => 1

def divisor : Track → ℕ → ℚ
  | .evenZero, k => rationalDivisor (8 * k) (2 * k - 1)
  | .evenOne, k => rationalDivisor (8 * k - 1) (2 * k)
  | .oddZero, k => rationalDivisor (8 * k + 4) (2 * k)
  | .oddOne, k => rationalDivisor (8 * k + 3) (2 * k + 1)

def numerator : Track → ℚ → ℚ
  | .evenZero, x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x)
  | .evenOne, x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x + 1)
  | .oddZero, x => (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (9 * x + 13) * (x + 1)
  | .oddOne, x => (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (x + 1)

def denominator : Track → ℚ → ℚ
  | .evenZero, x => (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (2 * x) * (2 * x + 1)
  | .evenOne, x => (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (2 * x + 1) * (2 * x + 2)
  | .oddZero, x => (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (8 * x + 12) * (2 * x + 1) * (2 * x + 2)
  | .oddOne, x => (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (2 * x + 2) * (2 * x + 3)

def ratio (t : Track) (x : ℚ) : ℚ := numerator t x / denominator t x
def targetBase : ℚ := 602791 / 500000
def middleBase : ℚ := 1235039 / 1000000
def targetRate : ℚ := targetBase ^ 8
def middleRate : ℚ := middleBase ^ 8
def infiniteRate : ℚ := 387420489 / 67108864
def blockRatio : ℚ := middleRate / targetRate

theorem target_base_pos : 0 < targetBase := by norm_num [targetBase]
theorem target_rate_pos : 0 < targetRate := by norm_num [targetRate, targetBase]
theorem middle_rate_pos : 0 < middleRate := by norm_num [middleRate, middleBase]
theorem target_rate_le_infinite : targetRate ≤ infiniteRate := by
  norm_num [targetRate, targetBase, infiniteRate]
theorem block_ratio_ge_one : 1 ≤ blockRatio := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem block_linear_bound : (2 : ℚ) ≤ 1 + 5 * (blockRatio - 1) := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem cutoff_ge_kMin (t : Track) : kMin t ≤ cutoff t := by cases t <;> decide

theorem divisor_pos (t : Track) (k : ℕ) : 0 < divisor t k := by
  cases t <;> exact rationalDivisor_pos _ _

theorem denominator_pos (t : Track) (x : ℚ) (hx : (kMin t : ℚ) ≤ x) :
    0 < denominator t x := by
  cases t <;> simp only [kMin, Nat.cast_zero, Nat.cast_one] at hx
  · have hpos : 0 < x := by linarith
    unfold denominator
    positivity
  · have hpos : 0 < x := by linarith
    unfold denominator
    positivity
  · unfold denominator
    positivity
  · unfold denominator
    positivity

theorem divisor_eq_actual (t : Track) (k : ℕ) :
    divisor t k = rationalDivisor (4 * (2 * k + rho t) - delta t)
      (2 * k + rho t + delta t - 1) := by
  cases t <;> dsimp only [divisor, rho, delta] <;> congr 1 <;> omega

theorem divisor_even_zero_formula (k : ℕ) (hk : 1 ≤ k) :
    divisor .evenZero k =
      (((9 * k - 1).factorial : ℕ) : ℚ) * (((k - 1).factorial : ℕ) : ℚ) /
        ((((8 * k).factorial : ℕ) : ℚ) * (((2 * k - 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k - 1) / 2 = k - 1 := by omega
  have hn : (8 * k) + (k - 1) = 9 * k - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_even_one_formula (k : ℕ) (hk : 1 ≤ k) :
    divisor .evenOne k =
      (((9 * k - 1).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k - 1).factorial : ℕ) : ℚ) * (((2 * k).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k) / 2 = k := by omega
  have hn : (8 * k - 1) + (k) = 9 * k - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_odd_zero_formula (k : ℕ) (hk : 0 ≤ k) :
    divisor .oddZero k =
      (((9 * k + 4).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k + 4).factorial : ℕ) : ℚ) * (((2 * k).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k) / 2 = k := by omega
  have hn : (8 * k + 4) + (k) = 9 * k + 4 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_odd_one_formula (k : ℕ) (hk : 0 ≤ k) :
    divisor .oddOne k =
      (((9 * k + 3).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k + 3).factorial : ℕ) : ℚ) * (((2 * k + 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k + 1) / 2 = k := by omega
  have hn : (8 * k + 3) + (k) = 9 * k + 3 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_initial (t : Track) : divisor t (kMin t) = initialValue t := by
  cases t <;> norm_num [divisor, kMin, initialValue, rationalDivisor,
    factorialNumerator, factorialDenominator, Nat.factorial]

theorem divisor_even_zero_step_succ (k : ℕ) :
    divisor .evenZero (k + 2) = divisor .evenZero (k + 1) * ratio .evenZero ((k : ℚ) + 1) := by
  rw [divisor_even_zero_formula (k + 2) (by omega), divisor_even_zero_formula (k + 1) (by omega)]
  have hn : 9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9 := by omega
  have hf : (k + 2) - 1 = ((k + 1) - 1) + 1 := by omega
  have hu : 8 * (k + 2) = (8 * (k + 1)) + 8 := by omega
  have hv : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hn1 : (9 * (k + 1) - 1) + 1 = 9 * (k + 1) := by omega
  have hf1 : ((k + 1) - 1) + 1 = (k + 1) := by omega
  have hv1 : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * (k + 1) - 1) 9,
    factorial_add_cast ((k + 1) - 1) 1,
    factorial_add_cast (8 * (k + 1)) 8,
    factorial_add_cast (2 * (k + 1) - 1) 2,
    hn1,
    hf1,
    hv1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_even_one_step_succ (k : ℕ) :
    divisor .evenOne (k + 2) = divisor .evenOne (k + 1) * ratio .evenOne ((k : ℚ) + 1) := by
  rw [divisor_even_one_formula (k + 2) (by omega), divisor_even_one_formula (k + 1) (by omega)]
  have hn : 9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9 := by omega
  have hf : (k + 2) = ((k + 1)) + 1 := by omega
  have hu : 8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8 := by omega
  have hv : 2 * (k + 2) = (2 * (k + 1)) + 2 := by omega
  have hn1 : (9 * (k + 1) - 1) + 1 = 9 * (k + 1) := by omega
  have hu1 : (8 * (k + 1) - 1) + 1 = 8 * (k + 1) := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * (k + 1) - 1) 9,
    factorial_add_cast ((k + 1)) 1,
    factorial_add_cast (8 * (k + 1) - 1) 8,
    factorial_add_cast (2 * (k + 1)) 2,
    hn1,
    hu1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_odd_zero_step (k : ℕ) :
    divisor .oddZero (k + 1) = divisor .oddZero k * ratio .oddZero (k : ℚ) := by
  rw [divisor_odd_zero_formula (k + 1) (by omega), divisor_odd_zero_formula k (by omega)]
  have hn : 9 * (k + 1) + 4 = (9 * k + 4) + 9 := by omega
  have hf : (k + 1) = (k) + 1 := by omega
  have hu : 8 * (k + 1) + 4 = (8 * k + 4) + 8 := by omega
  have hv : 2 * (k + 1) = (2 * k) + 2 := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * k + 4) 9,
    factorial_add_cast (k) 1,
    factorial_add_cast (8 * k + 4) 8,
    factorial_add_cast (2 * k) 2]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_odd_one_step (k : ℕ) :
    divisor .oddOne (k + 1) = divisor .oddOne k * ratio .oddOne (k : ℚ) := by
  rw [divisor_odd_one_formula (k + 1) (by omega), divisor_odd_one_formula k (by omega)]
  have hn : 9 * (k + 1) + 3 = (9 * k + 3) + 9 := by omega
  have hf : (k + 1) = (k) + 1 := by omega
  have hu : 8 * (k + 1) + 3 = (8 * k + 3) + 8 := by omega
  have hv : 2 * (k + 1) + 1 = (2 * k + 1) + 2 := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * k + 3) 9,
    factorial_add_cast (k) 1,
    factorial_add_cast (8 * k + 3) 8,
    factorial_add_cast (2 * k + 1) 2]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    divisor t (k + 1) = divisor t k * ratio t (k : ℚ) := by
  cases t
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := Nat.exists_eq_add_of_le' hk
    simpa only [Nat.cast_add, Nat.cast_one] using divisor_even_zero_step_succ j
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := Nat.exists_eq_add_of_le' hk
    simpa only [Nat.cast_add, Nat.cast_one] using divisor_even_one_step_succ j
  · exact divisor_odd_zero_step k
  · exact divisor_odd_one_step k

end Math.B699.I11DivisorTwoFive
