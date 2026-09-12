import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.ZeroBoundaryLogBoxes.Definitions
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
Finite rational-to-real logarithm bridge using the pinned mathlib API.
Both inequalities in that API concern one half of the logarithm: multiply
both sides by two before consuming the unchanged rational endpoints.
The only certificate hypothesis below is a decidable rational inequality.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryLogBoxes

open scoped BigOperators

def realRatio (z : ℚ) : ℝ := (1 + (z : ℝ)) / (1 - (z : ℝ))

theorem partialSum_cast (m : ℕ) (z : ℚ) :
    (partialSum m z : ℝ) =
      ∑ k ∈ Finset.range m, (z : ℝ) ^ (2 * k + 1) / ((2 * k + 1 : ℕ) : ℝ) := by
  simp only [partialSum, Rat.cast_sum, Rat.cast_div, Rat.cast_pow, Rat.cast_natCast]

theorem realRatio_pos {z : ℚ} (h0 : 0 ≤ z) (h1 : z < 1) : 0 < realRatio z := by
  have hz0 : (0 : ℝ) ≤ z := by exact_mod_cast h0
  have hz1 : (z : ℝ) < 1 := by exact_mod_cast h1
  unfold realRatio
  exact div_pos (by linarith) (by linarith)

theorem finite_series_bounds (m : ℕ) {z : ℚ} (h0 : 0 ≤ z) (h1 : z < 1) :
    ((2 * partialSum m z : ℚ) : ℝ) ≤ Real.log (realRatio z) ∧
      Real.log (realRatio z) ≤ (coarseUpper m z : ℝ) := by
  have hz0 : (0 : ℝ) ≤ z := by exact_mod_cast h0
  have hz1 : (z : ℝ) < 1 := by exact_mod_cast h1
  have hlo := Real.sum_range_le_log_div hz0 hz1 m
  have hhi := Real.log_div_le_sum_range_add hz0 hz1 m
  have hlo' : (partialSum m z : ℝ) ≤ 1 / 2 * Real.log (realRatio z) := by
    simpa only [realRatio, partialSum_cast, Nat.cast_add, Nat.cast_mul,
      Nat.cast_ofNat, Nat.cast_one] using hlo
  have hhi' : 1 / 2 * Real.log (realRatio z) ≤ (partialSum m z : ℝ) +
      (z : ℝ) ^ (2 * m + 1) / (1 - (z : ℝ) ^ 2) := by
    simpa only [realRatio, partialSum_cast, Nat.cast_add, Nat.cast_mul,
      Nat.cast_ofNat, Nat.cast_one] using hhi
  constructor
  · simp only [Rat.cast_mul, Rat.cast_ofNat]
    calc
      2 * (partialSum m z : ℝ) ≤ 2 * (1 / 2 * Real.log (realRatio z)) :=
        mul_le_mul_of_nonneg_left hlo' (by norm_num)
      _ = Real.log (realRatio z) := by ring
  · have hcast : (coarseUpper m z : ℝ) =
        2 * (partialSum m z : ℝ) +
          2 * (z : ℝ) ^ (2 * m + 1) / (1 - (z : ℝ) ^ 2) := by
      simp only [coarseUpper, Rat.cast_add, Rat.cast_mul, Rat.cast_ofNat,
        Rat.cast_div, Rat.cast_pow, Rat.cast_sub, Rat.cast_one]
    calc
      Real.log (realRatio z) = 2 * (1 / 2 * Real.log (realRatio z)) := by ring
      _ ≤ 2 * ((partialSum m z : ℝ) +
          (z : ℝ) ^ (2 * m + 1) / (1 - (z : ℝ) ^ 2)) :=
        mul_le_mul_of_nonneg_left hhi' (by norm_num)
      _ = (coarseUpper m z : ℝ) := by rw [hcast]; ring

theorem old_box_of_finite_comparison {z : ℚ} (h0 : 0 ≤ z) (h1 : z < 1)
    (hcomparison : coarseUpper 102 z ≤ smallUpper z) :
    (smallLower z : ℝ) ≤ Real.log (realRatio z) ∧
      Real.log (realRatio z) ≤ (smallUpper z : ℝ) := by
  have hlo := (finite_series_bounds 96 h0 h1).1
  have hhi := (finite_series_bounds 102 h0 h1).2
  have hcomparisonR : (coarseUpper 102 z : ℝ) ≤ (smallUpper z : ℝ) := by
    exact_mod_cast hcomparison
  exact ⟨by simpa only [smallLower] using hlo, hhi.trans hcomparisonR⟩

theorem scaled_log_box (a k : ℕ) {z : ℚ} (h0 : 0 ≤ z) (h1 : z < 1)
    (hbase : coarseUpper 102 (1 / 3) ≤ smallUpper (1 / 3))
    (hcomparison : coarseUpper 102 z ≤ smallUpper z)
    (hnormalization : (a : ℝ) = (2 : ℝ) ^ k * realRatio z) :
    (((k : ℚ) * smallLower (1 / 3) + smallLower z : ℚ) : ℝ) ≤ Real.log a ∧
      Real.log a ≤ (((k : ℚ) * smallUpper (1 / 3) + smallUpper z : ℚ) : ℝ) := by
  have htwo := old_box_of_finite_comparison
    (z := (1 / 3 : ℚ)) (by norm_num) (by norm_num) hbase
  have hratio2 : realRatio (1 / 3) = (2 : ℝ) := by norm_num [realRatio]
  rw [hratio2] at htwo
  have hz := old_box_of_finite_comparison h0 h1 hcomparison
  have hk0 : (0 : ℝ) ≤ k := Nat.cast_nonneg k
  have hlog : Real.log (a : ℝ) = (k : ℝ) * Real.log 2 + Real.log (realRatio z) := by
    rw [hnormalization, Real.log_mul (pow_ne_zero k (by norm_num : (2 : ℝ) ≠ 0))
      (realRatio_pos h0 h1).ne', Real.log_pow]
  simp only [hlog]
  constructor
  · simpa only [Rat.cast_add, Rat.cast_mul, Rat.cast_natCast] using
      add_le_add (mul_le_mul_of_nonneg_left htwo.1 hk0) hz.1
  · simpa only [Rat.cast_add, Rat.cast_mul, Rat.cast_natCast] using
      add_le_add (mul_le_mul_of_nonneg_left htwo.2 hk0) hz.2

theorem log_bounds_of_normalization (a : ℕ)
    (h0 : 0 ≤ normalizedArgument a) (h1 : normalizedArgument a < 1)
    (hbase : coarseUpper 102 (1 / 3) ≤ smallUpper (1 / 3))
    (hcomparison : coarseUpper 102 (normalizedArgument a) ≤ smallUpper (normalizedArgument a))
    (hnormalization : (a : ℝ) = (2 : ℝ) ^ scaleExponent a * realRatio (normalizedArgument a)) :
    (logLower a : ℝ) ≤ Real.log a ∧ Real.log a ≤ (logUpper a : ℝ) := by
  simpa only [logLower, logUpper] using
    scaled_log_box a (scaleExponent a) h0 h1 hbase hcomparison hnormalization

end Math.B699.ZeroBoundaryLogBoxes
