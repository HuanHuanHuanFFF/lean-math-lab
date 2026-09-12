import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-three-scaled-bounds-5e2d13bb».GrowthInputs
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-three-scaled-bounds-5e2d13bb».ScaledGap

/-! UNCOMPILED CANDIDATE. Only low-degree actual polynomials and fixed
rational inequalities are evaluated. The 213th-power certificate is deliberately
left for the parent's bounded serial verifier; no giant selector powers occur. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ScaledBounds
open Math.B699.PadeGrowthNormalization Math.B699.PadeConstruction
open Math.B699.ElementaryFactorialBound Math.B699.I11ActualPadeEdge

theorem fixed_initial_q_cap (row : Bool) :
    2 * |actualQ 5 3 (rowDelta row) 1 (1 / 4375)| ≤ qBase := by
  cases row <;>
    norm_num [actualQ, rowDelta, qBase, beta, qLambda, qPolynomial,
      coefficientPolynomial, qCoefficient, qMagnitude, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 5 3 (rowDelta row) 1 (1 / 4375)| ≤ eBase := by
  cases row <;>
    norm_num [actualE, rowDelta, eBase, beta, eLambda, ePolynomial,
      coefficientPolynomial, eCoefficient, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_qRate_ge_one : 1 ≤ qRate qBase := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda]

theorem fixed_wRate_ge_Z : (fiveThreeZ : ℚ) ≤ wRate eBase := by
  norm_num [fiveThreeZ, wRate, wNumerator, wDenominator, contentBase, eBase, beta, eLambda]

end Math.B699.I11ScaledBounds
#print axioms Math.B699.I11ScaledBounds.fixed_initial_q_cap
#print axioms Math.B699.I11ScaledBounds.fixed_initial_e_cap
#print axioms Math.B699.I11ScaledBounds.fixed_qRate_ge_one
#print axioms Math.B699.I11ScaledBounds.fixed_wRate_ge_Z
