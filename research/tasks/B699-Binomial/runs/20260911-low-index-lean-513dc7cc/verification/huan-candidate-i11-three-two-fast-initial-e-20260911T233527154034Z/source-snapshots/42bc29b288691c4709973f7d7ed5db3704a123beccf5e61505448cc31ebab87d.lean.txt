import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.ChooseFast
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoEdge.GrowthInputs

/-! UNCOMPILED CANDIDATE. Exact same actual m=1 E cap and eBase as the
fixed ThreeTwo SmallCertificates source. No heartbeat or memory limit increase.
The finite evaluation sees only factorial quotients, after the generic rewrite. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialCapComputation.ThreeTwo
open Math.B699.I11InitialCapComputation
open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization
open Math.B699.ElementaryFactorialBound Math.B699.I11ThreeTwoScaled

theorem actual_e_delta0 :
    actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323 := by
  rw [actualE_eq_fast]
  norm_num [coefficientPolynomial, fastECoefficient, chooseFast,
    Finset.sum_range_succ, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]

theorem e_cap_delta0 :
    2 * |actualE 23 15 0 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  rw [actual_e_delta0]
  norm_num [Math.B699.I11ThreeTwoScaled.eBase, beta, Math.B699.I11ThreeTwoScaled.eLambda]

theorem actual_e_delta1 :
    actualE 23 15 1 1 (1 / 9) = (117258057456010 : ℚ) / 4782969 := by
  rw [actualE_eq_fast]
  norm_num [coefficientPolynomial, fastECoefficient, chooseFast,
    Finset.sum_range_succ, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]

theorem e_cap_delta1 :
    2 * |actualE 23 15 1 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  rw [actual_e_delta1]
  norm_num [Math.B699.I11ThreeTwoScaled.eBase, beta, Math.B699.I11ThreeTwoScaled.eLambda]

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 23 15 (Math.B699.I11ThreeTwoScaled.rowDelta row) 1 (1 / 9)| ≤
      Math.B699.I11ThreeTwoScaled.eBase := by
  cases row
  · exact e_cap_delta1
  · exact e_cap_delta0

end Math.B699.I11InitialCapComputation.ThreeTwo

#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.actual_e_delta0
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.e_cap_delta0
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.actual_e_delta1
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.e_cap_delta1
#print axioms Math.B699.I11InitialCapComputation.ThreeTwo.fixed_initial_e_cap
