import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11DivisorSevenTwo.Bounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ElementaryRate

/-! UNCOMPILED. Fixed original threshold 224 for the actual c9d5 qContent.
Only delta0 needs recurrence certificates; delta1 uses the proved D comparison.
No desired G lower bound, recurrence, height, or Padé edge is an input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorSevenTwo
open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def normalized (m : ℕ) : ℚ := divisor m / targetRate ^ m

theorem normalized_pos (m : ℕ) : 0 < normalized m :=
  div_pos (divisor_pos m) (pow_pos target_rate_pos m)

theorem normalized_rough_step (m : ℕ) (hm : 1 ≤ m) :
    normalized m * (1 * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      normalized (m + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right target_rate_le_infinite
    (sq_nonneg ((((m : ℚ) + 1) / ((m : ℚ) + 2))))
  have hstep : divisor m *
      (targetRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤ divisor (m + 1) :=
    (mul_le_mul_of_nonneg_left hcoef (divisor_pos m).le).trans (divisor_rough_step m hm)
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ m ≠ 0 := pow_ne_zero _ ht
  have hd : (m : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (divisor m * (targetRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2)) /
        targetRate ^ (m + 1) := by
      unfold normalized
      rw [pow_succ targetRate m]
      field_simp [ht, hp, hd]
      <;> ring
    _ ≤ divisor (m + 1) / targetRate ^ (m + 1) :=
      div_le_div_of_nonneg_right hstep (pow_pos target_rate_pos _).le
    _ = normalized (m + 1) := rfl

theorem normalized_middle_step (m : ℕ) (hm : 44 ≤ m) :
    normalized m * blockRatio ≤ normalized (m + 1) := by
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ m ≠ 0 := pow_ne_zero _ ht
  calc
    _ = (divisor m * middleRate) / targetRate ^ (m + 1) := by
      unfold normalized blockRatio
      rw [pow_succ targetRate m]
      field_simp [ht, hp]
      <;> ring
    _ ≤ divisor (m + 1) / targetRate ^ (m + 1) :=
      div_le_div_of_nonneg_right (divisor_middle_step m hm) (pow_pos target_rate_pos _).le
    _ = normalized (m + 1) := rfl

/-- Only D(1)=1 and the fifth power of a fixed rational base are evaluated. -/
theorem finite_binary_base :
    1 ≤ (normalized 1 * ((1 : ℚ) + 1) ^ 2 / ((44 : ℚ) + 1) ^ 2) * (2 : ℚ) ^ 11 := by
  rw [normalized, divisor_initial]
  norm_num [targetRate, targetBase]

theorem normalized_binary_base : 1 ≤ normalized 44 * (2 : ℚ) ^ 11 := by
  have h := lower_telescoping_from_step (F := normalized) (R := 1) (k0 := 1)
    (by norm_num) (fun m hm => normalized_rough_step m hm) 43
  have htel : normalized 1 * ((1 : ℚ) + 1) ^ 2 / ((44 : ℚ) + 1) ^ 2 ≤ normalized 44 := by
    simpa only [one_pow, mul_one, Nat.cast_one, Nat.cast_ofNat,
      show (1 : ℕ) + 43 = 44 by decide] using h
  exact finite_binary_base.trans (mul_le_mul_of_nonneg_right htel (by positivity))

theorem normalized_gt_one (m : ℕ) (hm : 224 ≤ m) : 1 < normalized m := by
  have hn : 15 * (11 + 1) ≤ m - 44 := by omega
  have h := strict_threshold_from_step (F := normalized) (R := blockRatio)
    (K := 44) (T := 11) (B := 15) (n := m - 44)
    block_ratio_ge_one (normalized_pos 44).le
    (fun k hk => normalized_middle_step k hk)
    normalized_binary_base block_linear_bound hn
  have hindex : 44 + (m - 44) = m := by omega
  simpa only [hindex] using h

theorem divisor_lower (m : ℕ) (hm : 224 ≤ m) : targetBase ^ (5 * m) < divisor m := by
  have h := normalized_gt_one m hm
  change 1 < divisor m / targetRate ^ m at h
  have hmul := (lt_div_iff₀ (pow_pos target_rate_pos m)).mp h
  simpa only [one_mul, targetRate, ← pow_mul] using hmul

theorem rationalDivisor_seven_two_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) <
      rationalDivisor (5 * m - delta) (4 * m + delta - 1) := by
  rcases hdelta with rfl | rfl
  · simpa only [targetBase, divisor, Nat.sub_zero, Nat.add_zero] using divisor_lower m hm
  · have h := (divisor_lower m hm).trans_le (divisor_le_adjacent m (by omega))
    simpa only [targetBase, Nat.add_sub_cancel] using h

/-- The actual gcd has its own unconditional D lower bound in each delta row. -/
theorem qContent_seven_two_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) <
      (qContent (5 * m - delta) (4 * m + delta - 1) (5 * m - delta) : ℚ) := by
  exact (rationalDivisor_seven_two_lower delta m hdelta hm).trans_le
    (rationalDivisor_le_qContent (5 * m - delta) (4 * m + delta - 1))

theorem qContent_upper_row_lower (m : ℕ) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) < (qContent (5 * m) (4 * m - 1) (5 * m) : ℚ) := by
  simpa only [Nat.sub_zero, Nat.add_zero] using
    qContent_seven_two_lower 0 m (Or.inl rfl) hm

theorem qContent_adjacent_row_lower (m : ℕ) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) < (qContent (5 * m - 1) (4 * m) (5 * m - 1) : ℚ) := by
  simpa only [Nat.add_sub_cancel] using qContent_seven_two_lower 1 m (Or.inr rfl) hm

theorem bftContent_seven_two_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) < (bftContent 9 5 m delta : ℚ) := by
  have hv : 9 * m - (5 * m - delta) - 1 = 4 * m + delta - 1 := by
    rcases hdelta with h | h <;> omega
  simpa only [bftContent, hv] using qContent_seven_two_lower delta m hdelta hm

end Math.B699.I11DivisorSevenTwo
