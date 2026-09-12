import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoEdge.GrowthInputs
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoEdge.ScaledGap

/-! UNCOMPILED CANDIDATE. Fixed c23d15 low-degree m1 caps and rational rate comparisons; the M162 rate-power certificate remains explicit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoScaled
open Math.B699.PadeGrowthNormalization Math.B699.PadeConstruction
open Math.B699.ElementaryFactorialBound

theorem fixed_initial_q_cap (row : Bool) :
    2 * |actualQ 23 15 (rowDelta row) 1 (1 / 9)| ≤ qBase := by
  cases row <;>
    norm_num [actualQ, rowDelta, qBase, beta, qLambda, qPolynomial,
      coefficientPolynomial, qCoefficient, qMagnitude, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 23 15 (rowDelta row) 1 (1 / 9)| ≤ eBase := by
  cases row <;>
    norm_num [actualE, rowDelta, eBase, beta, eLambda, ePolynomial,
      coefficientPolynomial, eCoefficient, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_qRate_ge_one : 1 ≤ qRate qBase := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda]

theorem fixed_wRate_ge_Z : (threeTwoZ : ℚ) ≤ wRate eBase := by
  norm_num [threeTwoZ, wRate, wNumerator, wDenominator, contentBase, eBase, beta, eLambda]

end Math.B699.I11ThreeTwoScaled
