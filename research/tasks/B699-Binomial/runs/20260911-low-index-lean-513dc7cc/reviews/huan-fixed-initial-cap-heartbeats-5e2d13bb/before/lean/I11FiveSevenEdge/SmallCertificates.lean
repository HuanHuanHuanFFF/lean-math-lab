import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenEdge.GrowthInputs
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenEdge.ScaledGap

/-! UNCOMPILED CANDIDATE. Four actual m1 caps plus fixed rational rate inequalities; M194 power certificate remains explicit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveSevenScaled
open Math.B699.PadeGrowthNormalization Math.B699.PadeConstruction
open Math.B699.ElementaryFactorialBound

theorem fixed_initial_q_cap (row : Bool) :
    2 * |actualQ 11 7 (rowDelta row) 1 (1 / 50)| ≤ qBase := by
  cases row <;>
    norm_num [actualQ, rowDelta, qBase, beta, qLambda, qPolynomial,
      coefficientPolynomial, qCoefficient, qMagnitude, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 11 7 (rowDelta row) 1 (1 / 50)| ≤ eBase := by
  cases row <;>
    norm_num [actualE, rowDelta, eBase, beta, eLambda, ePolynomial,
      coefficientPolynomial, eCoefficient, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_qRate_ge_one : 1 ≤ qRate qBase := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda]

theorem fixed_wRate_ge_Z : (fiveSevenZ : ℚ) ≤ wRate eBase := by
  norm_num [fiveSevenZ, wRate, wNumerator, wDenominator, contentBase, eBase, beta, eLambda]

end Math.B699.I11FiveSevenScaled
