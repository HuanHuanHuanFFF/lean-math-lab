import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Bridge
import Mathlib.Data.Nat.Prime.Basic

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace Math.B699.ZeroBoundaryLogSeparation
open Math.B699.ZeroBoundaryLogBoxes

/-- The one-term half-log lower bound gives a uniform denominator estimate.
It is independent of the 55-pair certificate and of all rounded pilot boxes. -/
theorem half_lt_log_two : (1 : ℝ) / 2 < Real.log 2 := by
  have h := (finite_series_bounds 1 (z := (1 / 3 : ℚ)) (by norm_num) (by norm_num)).1
  norm_num [partialSum, realRatio] at h
  linarith

theorem half_lt_log_prime {q : ℕ} (hq : q.Prime) : (1 : ℝ) / 2 < Real.log q := by
  have hqR : (2 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq.two_le
  exact half_lt_log_two.trans_le (Real.log_le_log (by norm_num) hqR)

end Math.B699.ZeroBoundaryLogSeparation

#print axioms Math.B699.ZeroBoundaryLogSeparation.half_lt_log_two
#print axioms Math.B699.ZeroBoundaryLogSeparation.half_lt_log_prime
