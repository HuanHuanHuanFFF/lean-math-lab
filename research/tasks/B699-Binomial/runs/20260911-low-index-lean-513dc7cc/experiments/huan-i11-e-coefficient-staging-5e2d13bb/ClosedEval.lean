import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-e-coefficient-staging-5e2d13bb».EvalBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-e-coefficient-staging-5e2d13bb».Coefficients
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-e-coefficient-staging-5e2d13bb».RatSum

/-! UNCOMPILED. The original ClosedEval target, connected without running a
rewriter or numerical tactic on any concrete Polynomial expression. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ECoefficientStaging
open Math.B699.PadeConstruction Math.B699.I11InitialCapComputation

theorem closed_e_delta0 :
    (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
      (Int.castRingHom ℚ) (1 / 9) = (13515592997264 : ℚ) / 1594323 := by
  have hstage :
      (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
        (Int.castRingHom ℚ) (1 / 9) = rationalDelta0Sum :=
    coefficientPolynomial_eval_seven_of_coeffs
      (fastECoefficient 15 7 15) (Int.castRingHom ℚ) (1 / 9)
      12620256 (-44170896) 68264112 (-60233040) 32697936 (-10899312) 2062032 (-170544)
      coefficient_0 coefficient_1 coefficient_2 coefficient_3 coefficient_4 coefficient_5 coefficient_6 coefficient_7
  exact Eq.trans hstage rational_delta0_sum_value

end Math.B699.I11ECoefficientStaging
