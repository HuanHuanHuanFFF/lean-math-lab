import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-e-delta1-staging-5e2d13bb».Coeff0

/-! UNCOMPILED. Independent closed integer certificates for indices1 through8. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11EOne
open Math.B699.I11InitialCapComputation

theorem coefficient_1 : fastECoefficient 14 8 14 1 = (-154432080 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_2 : fastECoefficient 14 8 14 2 = (278974080 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_3 : fastECoefficient 14 8 14 3 = (-296409960 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_4 : fastECoefficient 14 8 14 4 = (202097700 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_5 : fastECoefficient 14 8 14 5 = (-90349560 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_6 : fastECoefficient 14 8 14 6 = (25814160 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_7 : fastECoefficient 14 8 14 7 = (-4302360 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

theorem coefficient_8 : fastECoefficient 14 8 14 8 = (319770 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

end Math.B699.I11EOne
