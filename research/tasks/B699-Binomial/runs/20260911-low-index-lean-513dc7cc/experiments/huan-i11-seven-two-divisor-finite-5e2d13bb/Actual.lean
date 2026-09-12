import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb».Adjacent

/-! UNCOMPILED. Fixed c9d5 delta0 actual factorial sequence and its actual step.
The adjacent delta1 value is built from the proved rationalDivisor relation. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorSevenTwo
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

def targetBase : ℚ := 1302991 / 1000000
def middleBase : ℚ := 660547 / 500000
def targetRate : ℚ := targetBase ^ 5
def middleRate : ℚ := middleBase ^ 5
def infiniteRate : ℚ := 823543 / 200000
def blockRatio : ℚ := middleRate / targetRate

def divisor (m : ℕ) : ℚ := rationalDivisor (5 * m) (4 * m - 1)
def numerator (x : ℚ) : ℚ := (7 * x) * (7 * x + 1) * (7 * x + 2) * (7 * x + 3) * (7 * x + 4) * (7 * x + 5) * (7 * x + 6) * (2 * x) * (2 * x + 1)
def denominator (x : ℚ) : ℚ := (5 * x + 1) * (5 * x + 2) * (5 * x + 3) * (5 * x + 4) * (5 * x + 5) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def ratio (x : ℚ) : ℚ := numerator x / denominator x

theorem target_base_pos : 0 < targetBase := by norm_num [targetBase]
theorem target_rate_pos : 0 < targetRate := by norm_num [targetRate, targetBase]
theorem middle_rate_pos : 0 < middleRate := by norm_num [middleRate, middleBase]
theorem target_rate_le_infinite : targetRate ≤ infiniteRate := by
  norm_num [targetRate, targetBase, infiniteRate]
theorem block_ratio_ge_one : 1 ≤ blockRatio := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem block_linear_bound : (2 : ℚ) ≤ 1 + 15 * (blockRatio - 1) := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]

theorem divisor_pos (m : ℕ) : 0 < divisor m := rationalDivisor_pos _ _

theorem denominator_pos (x : ℚ) (hx : 1 ≤ x) : 0 < denominator x := by
  have hxpos : 0 < x := by linarith
  unfold denominator
  positivity

theorem divisor_formula (m : ℕ) (hm : 1 ≤ m) :
    divisor m =
      (((7 * m - 1).factorial : ℕ) : ℚ) * (((2 * m - 1).factorial : ℕ) : ℚ) /
        ((((5 * m).factorial : ℕ) : ℚ) * (((4 * m - 1).factorial : ℕ) : ℚ)) := by
  have hf : (4 * m - 1) / 2 = 2 * m - 1 := by omega
  have hn : 5 * m + (2 * m - 1) = 7 * m - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_initial : divisor 1 = 1 := by
  norm_num [divisor, rationalDivisor, factorialNumerator, factorialDenominator, Nat.factorial]

theorem divisor_step_succ (k : ℕ) :
    divisor (k + 2) = divisor (k + 1) * ratio ((k : ℚ) + 1) := by
  rw [divisor_formula (k + 2) (by omega), divisor_formula (k + 1) (by omega)]
  have hn : 7 * (k + 2) - 1 = (7 * (k + 1) - 1) + 7 := by omega
  have hf : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hu : 5 * (k + 2) = (5 * (k + 1)) + 5 := by omega
  have hv : 4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4 := by omega
  have hn1 : (7 * (k + 1) - 1) + 1 = 7 * (k + 1) := by omega
  have hf1 : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  have hv1 : (4 * (k + 1) - 1) + 1 = 4 * (k + 1) := by omega
  rw [hn, hf, hu, hv,
    factorial_add_cast (7 * (k + 1) - 1) 7,
    factorial_add_cast (2 * (k + 1) - 1) 2,
    factorial_add_cast (5 * (k + 1)) 5,
    factorial_add_cast (4 * (k + 1) - 1) 4,
    hn1, hf1, hv1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_step (m : ℕ) (hm : 1 ≤ m) :
    divisor (m + 1) = divisor m * ratio (m : ℚ) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  simpa only [Nat.cast_add, Nat.cast_one] using divisor_step_succ k

theorem divisor_adjacent_eq (m : ℕ) (hm : 1 ≤ m) :
    rationalDivisor (5 * m - 1) (4 * m) = ((5 * m : ℕ) : ℚ) / 2 * divisor m := by
  have ho : 2 * (2 * m - 1) + 1 = 4 * m - 1 := by omega
  have he : 2 * (2 * m - 1) + 2 = 4 * m := by omega
  simpa only [divisor, ho, he] using
    rationalDivisor_adjacent_odd_even (5 * m) (2 * m - 1) (by omega)

theorem divisor_le_adjacent (m : ℕ) (hm : 1 ≤ m) :
    divisor m ≤ rationalDivisor (5 * m - 1) (4 * m) := by
  have ho : 2 * (2 * m - 1) + 1 = 4 * m - 1 := by omega
  have he : 2 * (2 * m - 1) + 2 = 4 * m := by omega
  simpa only [divisor, ho, he] using
    rationalDivisor_adjacent_odd_even_ge (5 * m) (2 * m - 1) (by omega)

end Math.B699.I11DivisorSevenTwo
