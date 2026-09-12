import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb».Adjacent

/-! UNCOMPILED. Fixed c23d15 delta0 actual factorial sequence and its actual step.
The adjacent delta1 value is built from the proved rationalDivisor relation. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorThreeTwo
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

def targetBase : ℚ := 41069 / 31250
def middleBase : ℚ := 132309 / 100000
def targetRate : ℚ := targetBase ^ 15
def middleRate : ℚ := middleBase ^ 15
def infiniteRate : ℚ := 1978419655660313589123979 / 28697814000000000000000
def blockRatio : ℚ := middleRate / targetRate

def divisor (m : ℕ) : ℚ := rationalDivisor (15 * m) (8 * m - 1)
def numerator (x : ℚ) : ℚ := (19 * x) * (19 * x + 1) * (19 * x + 2) * (19 * x + 3) * (19 * x + 4) * (19 * x + 5) * (19 * x + 6) * (19 * x + 7) * (19 * x + 8) * (19 * x + 9) * (19 * x + 10) * (19 * x + 11) * (19 * x + 12) * (19 * x + 13) * (19 * x + 14) * (19 * x + 15) * (19 * x + 16) * (19 * x + 17) * (19 * x + 18) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def denominator (x : ℚ) : ℚ := (15 * x + 1) * (15 * x + 2) * (15 * x + 3) * (15 * x + 4) * (15 * x + 5) * (15 * x + 6) * (15 * x + 7) * (15 * x + 8) * (15 * x + 9) * (15 * x + 10) * (15 * x + 11) * (15 * x + 12) * (15 * x + 13) * (15 * x + 14) * (15 * x + 15) * (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7)
def ratio (x : ℚ) : ℚ := numerator x / denominator x

theorem target_base_pos : 0 < targetBase := by norm_num [targetBase]
theorem target_rate_pos : 0 < targetRate := by norm_num [targetRate, targetBase]
theorem middle_rate_pos : 0 < middleRate := by norm_num [middleRate, middleBase]
theorem target_rate_le_infinite : targetRate ≤ infiniteRate := by
  norm_num [targetRate, targetBase, infiniteRate]
theorem block_ratio_ge_one : 1 ≤ blockRatio := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem block_linear_bound : (2 : ℚ) ≤ 1 + 10 * (blockRatio - 1) := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]

theorem divisor_pos (m : ℕ) : 0 < divisor m := rationalDivisor_pos _ _

theorem denominator_pos (x : ℚ) (hx : 1 ≤ x) : 0 < denominator x := by
  have hxpos : 0 < x := by linarith
  unfold denominator
  positivity

theorem divisor_formula (m : ℕ) (hm : 1 ≤ m) :
    divisor m =
      (((19 * m - 1).factorial : ℕ) : ℚ) * (((4 * m - 1).factorial : ℕ) : ℚ) /
        ((((15 * m).factorial : ℕ) : ℚ) * (((8 * m - 1).factorial : ℕ) : ℚ)) := by
  have hf : (8 * m - 1) / 2 = 4 * m - 1 := by omega
  have hn : 15 * m + (4 * m - 1) = 19 * m - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_initial : divisor 1 = (204 / 35 : ℚ) := by
  norm_num [divisor, rationalDivisor, factorialNumerator, factorialDenominator, Nat.factorial]

theorem divisor_step_succ (k : ℕ) :
    divisor (k + 2) = divisor (k + 1) * ratio ((k : ℚ) + 1) := by
  rw [divisor_formula (k + 2) (by omega), divisor_formula (k + 1) (by omega)]
  have hn : 19 * (k + 2) - 1 = (19 * (k + 1) - 1) + 19 := by omega
  have hf : 4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4 := by omega
  have hu : 15 * (k + 2) = (15 * (k + 1)) + 15 := by omega
  have hv : 8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8 := by omega
  have hn1 : (19 * (k + 1) - 1) + 1 = 19 * (k + 1) := by omega
  have hf1 : (4 * (k + 1) - 1) + 1 = 4 * (k + 1) := by omega
  have hv1 : (8 * (k + 1) - 1) + 1 = 8 * (k + 1) := by omega
  rw [hn, hf, hu, hv,
    factorial_add_cast (19 * (k + 1) - 1) 19,
    factorial_add_cast (4 * (k + 1) - 1) 4,
    factorial_add_cast (15 * (k + 1)) 15,
    factorial_add_cast (8 * (k + 1) - 1) 8,
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
    rationalDivisor (15 * m - 1) (8 * m) = ((15 * m : ℕ) : ℚ) / 2 * divisor m := by
  have ho : 2 * (4 * m - 1) + 1 = 8 * m - 1 := by omega
  have he : 2 * (4 * m - 1) + 2 = 8 * m := by omega
  simpa only [divisor, ho, he] using
    rationalDivisor_adjacent_odd_even (15 * m) (4 * m - 1) (by omega)

theorem divisor_le_adjacent (m : ℕ) (hm : 1 ≤ m) :
    divisor m ≤ rationalDivisor (15 * m - 1) (8 * m) := by
  have ho : 2 * (4 * m - 1) + 1 = 8 * m - 1 := by omega
  have he : 2 * (4 * m - 1) + 2 = 8 * m := by omega
  simpa only [divisor, ho, he] using
    rationalDivisor_adjacent_odd_even_ge (15 * m) (4 * m - 1) (by omega)

end Math.B699.I11DivisorThreeTwo
