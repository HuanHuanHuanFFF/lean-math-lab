import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.ChooseFast
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenEdge.GrowthInputs

/-! UNCOMPILED CANDIDATE. Exact same actual m=1 E cap and eBase as the
fixed FiveSeven SmallCertificates source. No heartbeat or memory limit increase.
The finite evaluation sees only factorial quotients, after the generic rewrite. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialCapComputation.FiveSeven
open Math.B699.I11InitialCapComputation
open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization
open Math.B699.ElementaryFactorialBound Math.B699.I11FiveSevenScaled

theorem actual_e_delta0 :
    actualE 11 7 0 1 (1 / 50) = (2474307 : ℚ) / 3125 := by
  rw [actualE_eq_fast]
  norm_num [coefficientPolynomial, fastECoefficient, chooseFast,
    Finset.sum_range_succ, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]

theorem e_cap_delta0 :
    2 * |actualE 11 7 0 1 (1 / 50)| ≤ Math.B699.I11FiveSevenScaled.eBase := by
  rw [actual_e_delta0]
  norm_num [Math.B699.I11FiveSevenScaled.eBase, beta, Math.B699.I11FiveSevenScaled.eLambda]

theorem actual_e_delta1 :
    actualE 11 7 1 1 (1 / 50) = (1428944881 : ℚ) / 625000 := by
  rw [actualE_eq_fast]
  norm_num [coefficientPolynomial, fastECoefficient, chooseFast,
    Finset.sum_range_succ, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]

theorem e_cap_delta1 :
    2 * |actualE 11 7 1 1 (1 / 50)| ≤ Math.B699.I11FiveSevenScaled.eBase := by
  rw [actual_e_delta1]
  norm_num [Math.B699.I11FiveSevenScaled.eBase, beta, Math.B699.I11FiveSevenScaled.eLambda]

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 11 7 (Math.B699.I11FiveSevenScaled.rowDelta row) 1 (1 / 50)| ≤
      Math.B699.I11FiveSevenScaled.eBase := by
  cases row
  · exact e_cap_delta1
  · exact e_cap_delta0

end Math.B699.I11InitialCapComputation.FiveSeven

#print axioms Math.B699.I11InitialCapComputation.FiveSeven.actual_e_delta0
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.e_cap_delta0
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.actual_e_delta1
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.e_cap_delta1
#print axioms Math.B699.I11InitialCapComputation.FiveSeven.fixed_initial_e_cap
