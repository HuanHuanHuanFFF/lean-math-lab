import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.ChooseFast

/-! UNCOMPILED first numerical probe: one actual integer coefficient only.
No polynomial expression or rational sum is evaluated in this file. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ECoefficientStaging
open Math.B699.I11InitialCapComputation

theorem coefficient_0 : fastECoefficient 15 7 15 0 = (12620256 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

end Math.B699.I11ECoefficientStaging
