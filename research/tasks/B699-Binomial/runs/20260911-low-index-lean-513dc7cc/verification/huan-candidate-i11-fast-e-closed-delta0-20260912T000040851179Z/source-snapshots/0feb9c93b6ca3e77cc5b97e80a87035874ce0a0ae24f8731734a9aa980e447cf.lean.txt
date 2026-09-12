import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.ChooseFast

/-! UNCOMPILED bounded diagnostic: only the closed factorial-based polynomial
is evaluated here. The eight terms and exact rational result are unchanged. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialCapRevision
open Math.B699.PadeConstruction Math.B699.I11InitialCapComputation

theorem closed_e_delta0 :
    (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
      (Int.castRingHom ℚ) (1 / 9) = (13515592997264 : ℚ) / 1594323 := by
  norm_num [coefficientPolynomial, fastECoefficient, chooseFast,
    Finset.sum_range_succ, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]

end Math.B699.I11InitialCapRevision

#print axioms Math.B699.I11InitialCapRevision.closed_e_delta0
