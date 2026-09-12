import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapRevision.ClosedEval

/-! UNCOMPILED bounded diagnostic. The generic identity is explicitly
specialized and connected by Eq.trans after the closed value is proved.
No rewrite or numerical normalization runs in this bridge. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialCapRevision
open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization
open Math.B699.I11InitialCapComputation

theorem actual_e_delta0_trans :
    actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323 := by
  have hfast : actualE 23 15 0 1 (1 / 9) =
      (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
        (Int.castRingHom ℚ) (1 / 9) :=
    Math.B699.I11InitialCapComputation.actualE_eq_fast 23 15 0 1 (1 / 9)
  exact Eq.trans hfast closed_e_delta0

end Math.B699.I11InitialCapRevision

#print axioms Math.B699.I11InitialCapRevision.actual_e_delta0_trans
