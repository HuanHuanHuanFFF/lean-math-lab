import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311QE.Parameters

/-! UNCOMPILED actual m1 values and normalized constants; degree at most5. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311QE
open Math.B699.PadeGrowthNormalization Math.B699.PadeConstruction
open Math.B699.ElementaryFactorialBound

theorem actual_q_one_0 : actualQ 7 5 0 1 (1 / 243) = (-71465938277492 : ℚ) / 282429536481 := by
  norm_num [actualQ, qPolynomial, coefficientPolynomial, qCoefficient, qMagnitude, Finset.sum_range_succ,
    Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem actual_q_one_1 : actualQ 7 5 1 1 (1 / 243) = (81862289960 : ℚ) / 1162261467 := by
  norm_num [actualQ, qPolynomial, coefficientPolynomial, qCoefficient, qMagnitude, Finset.sum_range_succ,
    Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem actual_e_one_0 : actualE 7 5 0 1 (1 / 243) = (970 : ℚ) / 81 := by
  norm_num [actualE, ePolynomial, coefficientPolynomial, eCoefficient, Finset.sum_range_succ,
    Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem actual_e_one_1 : actualE 7 5 1 1 (1 / 243) = (1078115 : ℚ) / 19683 := by
  norm_num [actualE, ePolynomial, coefficientPolynomial, eCoefficient, Finset.sum_range_succ,
    Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

noncomputable def qNormalizedConstant (delta : ℕ) : ℚ := 2 * |actualQ 7 5 delta 1 (1 / 243)| / qBase
noncomputable def eNormalizedConstant (delta : ℕ) : ℚ := 2 * |actualE 7 5 delta 1 (1 / 243)| / eBase

theorem normalized_q_0 : qNormalizedConstant 0 = (49567439878631591796875 : ℚ) / 100825170692947377537024 := by
  norm_num [qNormalizedConstant, actual_q_one_0, qBase, qLambda, beta]

theorem normalized_q_1 : qNormalizedConstant 1 = (28389077606201171875 : ℚ) / 207459198956681846784 := by
  norm_num [qNormalizedConstant, actual_q_one_1, qBase, qLambda, beta]

theorem normalized_e_0 : eNormalizedConstant 0 = (74005126953125 : ℚ) / 686234984988672 := by
  norm_num [eNormalizedConstant, actual_e_one_0, eBase, eLambda, beta]

theorem normalized_e_1 : eNormalizedConstant 1 = (164507293701171875 : ℚ) / 333510202704494592 := by
  norm_num [eNormalizedConstant, actual_e_one_1, eBase, eLambda, beta]

theorem fixed_initial_q_cap (delta : ℕ) (hdelta : delta = 0 ∨ delta = 1) :
    2 * |actualQ 7 5 delta 1 (1 / 243)| ≤ (1 / 2 : ℚ) * qBase := by
  rcases hdelta with rfl | rfl <;>
    norm_num [actual_q_one_0, actual_q_one_1, qBase, qLambda, beta]

theorem fixed_initial_e_cap (delta : ℕ) (hdelta : delta = 0 ∨ delta = 1) :
    2 * |actualE 7 5 delta 1 (1 / 243)| ≤ eConstant delta * eBase := by
  rcases hdelta with rfl | rfl <;>
    norm_num [actual_e_one_0, actual_e_one_1, eConstant, eBase, eLambda, beta]

end Math.B699.I13C311QE
#print axioms Math.B699.I13C311QE.actual_q_one_0
#print axioms Math.B699.I13C311QE.actual_q_one_1
#print axioms Math.B699.I13C311QE.actual_e_one_0
#print axioms Math.B699.I13C311QE.actual_e_one_1
#print axioms Math.B699.I13C311QE.normalized_q_0
#print axioms Math.B699.I13C311QE.normalized_q_1
#print axioms Math.B699.I13C311QE.normalized_e_0
#print axioms Math.B699.I13C311QE.normalized_e_1
#print axioms Math.B699.I13C311QE.fixed_initial_q_cap
#print axioms Math.B699.I13C311QE.fixed_initial_e_cap
