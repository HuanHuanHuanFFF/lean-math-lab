import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11EOne.Eval
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11EOne.Coeffs
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11EOne.RatSum

/-! UNCOMPILED. Only theorem instantiation and equality transitivity operate
on the concrete coefficientPolynomial. All numerical work was staged above. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11EOne
open Math.B699.PadeConstruction Math.B699.I11InitialCapComputation

theorem closed_e_delta1 :
    (coefficientPolynomial 8 (fastECoefficient 14 8 14)).eval₂
      (Int.castRingHom ℚ) (1 / 9) = (117258057456010 : ℚ) / 4782969 := by
  have hstage :
      (coefficientPolynomial 8 (fastECoefficient 14 8 14)).eval₂
        (Int.castRingHom ℚ) (1 / 9) = rationalDelta1Sum :=
    coefficientPolynomial_eval_eight_of_coeffs
      (fastECoefficient 14 8 14) (Int.castRingHom ℚ) (1 / 9)
      38608020 (-154432080) 278974080 (-296409960) 202097700 (-90349560) 25814160 (-4302360) 319770
      coefficient_0 coefficient_1 coefficient_2 coefficient_3 coefficient_4 coefficient_5 coefficient_6 coefficient_7 coefficient_8
  exact Eq.trans hstage rational_delta1_sum_value

end Math.B699.I11EOne
