import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-remaining-divisor-finite-5e2d13bb».ThreeTwo.Bounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-remaining-divisor-finite-5e2d13bb».Common

/-! UNCOMPILED. Fixed original all-m actual G bound. Every step/base hypothesis
of the common sequence tool is discharged here from the actual factorial source. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorThreeTwo
open Math.B699.RationalFactorialDivisor Math.B699.PadeConstruction

theorem finite_binary_base :
    1 ≤ (divisor 1 / targetRate * 4 / ((30 : ℚ) + 1) ^ 2) * (2 : ℚ) ^ 12 := by
  rw [divisor_initial]
  norm_num [targetRate, targetBase]

theorem divisor_lower (m : ℕ) (hm : 160 ≤ m) : targetBase ^ (15 * m) < divisor m := by
  have h := Math.B699.I11DivisorFiniteCommon.sequence_lower
    divisor targetRate infiniteRate middleRate 30 12 10 m
    target_rate_pos target_rate_le_infinite divisor_pos (by decide)
    (fun k hk => divisor_rough_step k hk) (fun k hk => divisor_middle_step k hk)
    block_ratio_ge_one block_linear_bound finite_binary_base (by omega)
  simpa only [targetRate, ← pow_mul] using h

theorem rationalDivisor_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 160 ≤ m) :
    (41069 / 31250 : ℚ) ^ (15 * m) < rationalDivisor (15 * m - delta) (8 * m + delta - 1) := by
  rcases hdelta with rfl | rfl
  · simpa only [targetBase, divisor, Nat.sub_zero, Nat.add_zero] using divisor_lower m hm
  · have h := (divisor_lower m hm).trans_le (divisor_le_adjacent m (by omega))
    simpa only [targetBase, Nat.add_sub_cancel] using h

theorem qContent_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 160 ≤ m) :
    (41069 / 31250 : ℚ) ^ (15 * m) <
      (qContent (15 * m - delta) (8 * m + delta - 1) (15 * m - delta) : ℚ) := by
  exact (rationalDivisor_lower delta m hdelta hm).trans_le
    (rationalDivisor_le_qContent (15 * m - delta) (8 * m + delta - 1))

theorem qContent_upper_row_lower (m : ℕ) (hm : 160 ≤ m) :
    (41069 / 31250 : ℚ) ^ (15 * m) < (qContent (15 * m) (8 * m - 1) (15 * m) : ℚ) := by
  simpa only [Nat.sub_zero, Nat.add_zero] using qContent_lower 0 m (Or.inl rfl) hm

theorem qContent_adjacent_row_lower (m : ℕ) (hm : 160 ≤ m) :
    (41069 / 31250 : ℚ) ^ (15 * m) < (qContent (15 * m - 1) (8 * m) (15 * m - 1) : ℚ) := by
  simpa only [Nat.add_sub_cancel] using qContent_lower 1 m (Or.inr rfl) hm

theorem bftContent_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 160 ≤ m) :
    (41069 / 31250 : ℚ) ^ (15 * m) < (bftContent 23 15 m delta : ℚ) := by
  have hv : 23 * m - (15 * m - delta) - 1 = 8 * m + delta - 1 := by
    rcases hdelta with h | h <;> omega
  simpa only [bftContent, hv] using qContent_lower delta m hdelta hm

end Math.B699.I11DivisorThreeTwo
