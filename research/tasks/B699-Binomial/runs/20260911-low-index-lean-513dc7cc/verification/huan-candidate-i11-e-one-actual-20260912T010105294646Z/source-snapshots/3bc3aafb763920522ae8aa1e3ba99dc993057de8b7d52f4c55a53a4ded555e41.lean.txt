import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11EOne.Closed

/-! UNCOMPILED. Restore the actual delta1 source via accepted actualE_eq_fast.
No rewriting or numerical tactic is applied to the concrete actualE term. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11EOne
open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization
open Math.B699.I11InitialCapComputation

theorem actual_e_delta1 :
    actualE 23 15 1 1 (1 / 9) = (117258057456010 : ℚ) / 4782969 := by
  have hfast : actualE 23 15 1 1 (1 / 9) =
      (coefficientPolynomial 8 (fastECoefficient 14 8 14)).eval₂
        (Int.castRingHom ℚ) (1 / 9) :=
    Math.B699.I11InitialCapComputation.actualE_eq_fast 23 15 1 1 (1 / 9)
  exact Eq.trans hfast closed_e_delta1

end Math.B699.I11EOne
