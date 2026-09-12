import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-divisor-finite-lean-5e2d13bb».Bounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ElementaryRate

/-! UNCOMPILED. The actual step certificates discharge every sequence premise.
Only the parent's generic induction and Bernoulli lemmas are reused. No D-step,
G-bound, or height premise occurs in the final divisor/content statements. -/

namespace Math.B699.I11DivisorFiveThree

open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def normalizedZero (m : ℕ) : ℚ := divisorZero m / targetRate ^ m
def normalizedOne (m : ℕ) : ℚ := divisorOne m / targetRate ^ m

theorem normalized_zero_pos (m : ℕ) : 0 < normalizedZero m :=
  div_pos (divisor_zero_pos m) (pow_pos target_rate_pos m)

theorem normalized_one_pos (m : ℕ) : 0 < normalizedOne m :=
  div_pos (divisor_one_pos m) (pow_pos target_rate_pos m)

theorem normalized_zero_one : normalizedZero 1 = 1 / targetRate := by
  simp only [normalizedZero, divisor_zero_one, pow_one]

theorem normalized_one_one : normalizedOne 1 = (3 / 2 : ℚ) / targetRate := by
  simp only [normalizedOne, divisor_one_one, pow_one]

theorem normalized_zero_rough_step (m : ℕ) (hm : 1 ≤ m) :
    normalizedZero m * (1 * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      normalizedZero (m + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right target_rate_le_infinite
    (sq_nonneg ((((m : ℚ) + 1) / ((m : ℚ) + 2))))
  have hstep : divisorZero m *
      (targetRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤ divisorZero (m + 1) :=
    (mul_le_mul_of_nonneg_left hcoef (divisor_zero_pos m).le).trans
      (divisor_zero_rough_step m hm)
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ m ≠ 0 := pow_ne_zero _ ht
  have hd : (m : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (divisorZero m *
        (targetRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2)) / targetRate ^ (m + 1) := by
      unfold normalizedZero
      rw [pow_succ]
      field_simp [ht, hp, hd]
      <;> ring
    _ ≤ divisorZero (m + 1) / targetRate ^ (m + 1) :=
      div_le_div_of_nonneg_right hstep (pow_pos target_rate_pos (m + 1)).le
    _ = normalizedZero (m + 1) := rfl

theorem normalized_one_rough_step (m : ℕ) (hm : 1 ≤ m) :
    normalizedOne m * (1 * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      normalizedOne (m + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right target_rate_le_infinite
    (sq_nonneg ((((m : ℚ) + 1) / ((m : ℚ) + 2))))
  have hstep : divisorOne m *
      (targetRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤ divisorOne (m + 1) :=
    (mul_le_mul_of_nonneg_left hcoef (divisor_one_pos m).le).trans
      (divisor_one_rough_step m hm)
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ m ≠ 0 := pow_ne_zero _ ht
  have hd : (m : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (divisorOne m *
        (targetRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2)) / targetRate ^ (m + 1) := by
      unfold normalizedOne
      rw [pow_succ]
      field_simp [ht, hp, hd]
      <;> ring
    _ ≤ divisorOne (m + 1) / targetRate ^ (m + 1) :=
      div_le_div_of_nonneg_right hstep (pow_pos target_rate_pos (m + 1)).le
    _ = normalizedOne (m + 1) := rfl

theorem normalized_zero_middle_step (m : ℕ) (hm : 29 ≤ m) :
    normalizedZero m * blockRatio ≤ normalizedZero (m + 1) := by
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ m ≠ 0 := pow_ne_zero _ ht
  calc
    _ = (divisorZero m * middleRate) / targetRate ^ (m + 1) := by
      unfold normalizedZero blockRatio
      rw [pow_succ]
      field_simp [ht, hp]
      <;> ring
    _ ≤ divisorZero (m + 1) / targetRate ^ (m + 1) :=
      div_le_div_of_nonneg_right (divisor_zero_middle_step m hm)
        (pow_pos target_rate_pos (m + 1)).le
    _ = normalizedZero (m + 1) := rfl

theorem normalized_one_middle_step (m : ℕ) (hm : 1 ≤ m) :
    normalizedOne m * blockRatio ≤ normalizedOne (m + 1) := by
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ m ≠ 0 := pow_ne_zero _ ht
  calc
    _ = (divisorOne m * middleRate) / targetRate ^ (m + 1) := by
      unfold normalizedOne blockRatio
      rw [pow_succ]
      field_simp [ht, hp]
      <;> ring
    _ ≤ divisorOne (m + 1) / targetRate ^ (m + 1) :=
      div_le_div_of_nonneg_right (divisor_one_middle_step m hm)
        (pow_pos target_rate_pos (m + 1)).le
    _ = normalizedOne (m + 1) := rfl

/-- Uses only D_0(1)=1 and 28 steps of the actual rough recurrence. -/
theorem normalized_zero_binary_base : 1 ≤ normalizedZero 29 * (2 : ℚ) ^ 9 := by
  have h := lower_telescoping_from_step (F := normalizedZero) (R := 1) (k0 := 1)
    (by norm_num) (fun k hk => normalized_zero_rough_step k hk) 28
  have hsmall : normalizedZero 1 * 4 / 900 ≤ normalizedZero 29 := by
    convert h using 1 <;> norm_num
  have hc : (1 : ℚ) ≤ (normalizedZero 1 * 4 / 900) * (2 : ℚ) ^ 9 := by
    rw [normalized_zero_one]
    norm_num [targetRate, targetBase]
  exact hc.trans (mul_le_mul_of_nonneg_right hsmall (by norm_num))

theorem normalized_one_binary_base : 1 ≤ normalizedOne 1 * (2 : ℚ) ^ 1 := by
  rw [normalized_one_one]
  norm_num [targetRate, targetBase]

theorem normalized_zero_gt_one (m : ℕ) (hm : 129 ≤ m) : 1 < normalizedZero m := by
  have hn : 10 * (9 + 1) ≤ m - 29 := by omega
  have h := strict_threshold_from_step (F := normalizedZero) (R := blockRatio)
    (K := 29) (T := 9) (B := 10) (n := m - 29)
    block_ratio_ge_one (normalized_zero_pos 29).le
    (fun k hk => normalized_zero_middle_step k hk)
    normalized_zero_binary_base block_linear_bound hn
  have hindex : 29 + (m - 29) = m := by omega
  simpa only [hindex] using h

theorem normalized_one_gt_one (m : ℕ) (hm : 21 ≤ m) : 1 < normalizedOne m := by
  have hn : 10 * (1 + 1) ≤ m - 1 := by omega
  have h := strict_threshold_from_step (F := normalizedOne) (R := blockRatio)
    (K := 1) (T := 1) (B := 10) (n := m - 1)
    block_ratio_ge_one (normalized_one_pos 1).le
    (fun k hk => normalized_one_middle_step k hk)
    normalized_one_binary_base block_linear_bound hn
  have hindex : 1 + (m - 1) = m := by omega
  simpa only [hindex] using h

theorem divisor_zero_lower (m : ℕ) (hm : 129 ≤ m) :
    targetBase ^ (3 * m) < divisorZero m := by
  have h := normalized_zero_gt_one m hm
  change 1 < divisorZero m / targetRate ^ m at h
  have hmul := (lt_div_iff₀ (pow_pos target_rate_pos m)).mp h
  simpa only [one_mul, targetRate, pow_mul] using hmul

theorem divisor_one_lower (m : ℕ) (hm : 21 ≤ m) :
    targetBase ^ (3 * m) < divisorOne m := by
  have h := normalized_one_gt_one m hm
  change 1 < divisorOne m / targetRate ^ m at h
  have hmul := (lt_div_iff₀ (pow_pos target_rate_pos m)).mp h
  simpa only [one_mul, targetRate, pow_mul] using hmul

/-- The actual rational divisor for both source rows, with no D-step premise. -/
theorem rationalDivisor_five_three_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 129 ≤ m) :
    (1273397 / 1000000 : ℚ) ^ (3 * m) <
      rationalDivisor (3 * m - delta) (2 * m + delta - 1) := by
  rcases hdelta with rfl | rfl
  · simpa only [targetBase, divisorZero, Nat.sub_zero, Nat.add_zero] using divisor_zero_lower m hm
  · simpa only [targetBase, divisorOne, Nat.add_sub_cancel] using divisor_one_lower m (by omega)

/-- Actual finite-gcd content, preserving delta and all m>=129. -/
theorem qContent_five_three_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 129 ≤ m) :
    (1273397 / 1000000 : ℚ) ^ (3 * m) <
      (qContent (3 * m - delta) (2 * m + delta - 1) (3 * m - delta) : ℚ) := by
  exact (rationalDivisor_five_three_lower delta m hdelta hm).trans_le
    (rationalDivisor_le_qContent (3 * m - delta) (2 * m + delta - 1))

end Math.B699.I11DivisorFiveThree
