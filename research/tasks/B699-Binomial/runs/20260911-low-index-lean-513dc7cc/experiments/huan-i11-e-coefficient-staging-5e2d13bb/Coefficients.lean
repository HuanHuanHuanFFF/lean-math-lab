import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-e-coefficient-staging-5e2d13bb».Coeff0

/-! UNCOMPILED. Each remaining integer coefficient has its own closed proof.
Neither coefficientPolynomial nor Polynomial.eval₂ is unfolded here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ECoefficientStaging
open Math.B699.I11InitialCapComputation

theorem coefficient_1 : fastECoefficient 15 7 15 1 = (-44170896 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_2 : fastECoefficient 15 7 15 2 = (68264112 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_3 : fastECoefficient 15 7 15 3 = (-60233040 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_4 : fastECoefficient 15 7 15 4 = (32697936 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_5 : fastECoefficient 15 7 15 5 = (-10899312 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_6 : fastECoefficient 15 7 15 6 = (2062032 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_7 : fastECoefficient 15 7 15 7 = (-170544 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

end Math.B699.I11ECoefficientStaging
