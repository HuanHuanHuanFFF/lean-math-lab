import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-e-coefficient-staging-5e2d13bb».ClosedEval

/-! UNCOMPILED. Restore the unchanged actualE target using the already proved
generic fast-coefficient identity. No actualE evaluation occurs in this bridge. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ECoefficientStaging
open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization
open Math.B699.I11InitialCapComputation

theorem actual_e_delta0 :
    actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323 := by
  have hfast : actualE 23 15 0 1 (1 / 9) =
      (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
        (Int.castRingHom ℚ) (1 / 9) :=
    Math.B699.I11InitialCapComputation.actualE_eq_fast 23 15 0 1 (1 / 9)
  exact Eq.trans hfast closed_e_delta0

end Math.B699.I11ECoefficientStaging
