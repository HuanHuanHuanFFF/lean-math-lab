import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.ContentConstants
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311QE.Parameters
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.RatBounds

/-! UNCOMPILED source-aligned fixedc7d5 edge candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.I13C311QE Math.B699.I13G75Tail Math.B699.I13G75Uniform
open Math.B699.ElementaryFactorialBound

def qNumerator : ℚ := (243 : ℚ) ^ 7 * contentBase
def qDenominator : ℚ := (2 : ℚ) ^ 7 * (243 : ℚ) ^ 5 * qBase
def qRate : ℚ := qNumerator / qDenominator
def wNumerator : ℚ := ((243 : ℚ) * 121) ^ 7 * contentBase
def wDenominator : ℚ := (243 : ℚ) ^ 2 * eBase
def wRate : ℚ := wNumerator / wDenominator

theorem q_rate_lower : (3 / 2 : ℚ) ≤ qRate := by
  norm_num [qRate, qNumerator, qDenominator, qBase, qLambda, beta, contentBase, tailRate, infiniteRate]

theorem q_rate_power (m : ℕ) (hm : 187 ≤ m) : (7200 : ℚ) < qRate ^ m := by
  have hsmall : (7200 : ℚ) < (3 / 2 : ℚ) ^ 24 := by norm_num
  have h24 : (3 / 2 : ℚ) ^ 24 ≤ qRate ^ 24 := pow_le_pow_left₀ (by norm_num) q_rate_lower 24
  have h1 : (1 : ℚ) ≤ qRate := le_trans (by norm_num) q_rate_lower
  exact lt_of_lt_of_le hsmall (h24.trans (pow_le_pow_right₀ h1 (by omega : 24 ≤ m)))

theorem w_rate_lower : (selectorZ : ℚ) ≤ wRate := by
  norm_num [selectorZ, wRate, wNumerator, wDenominator, eBase, eLambda, beta, contentBase, tailRate, infiniteRate]

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.q_rate_lower
#print axioms Math.B699.I13C311Edge.q_rate_power
#print axioms Math.B699.I13C311Edge.w_rate_lower
