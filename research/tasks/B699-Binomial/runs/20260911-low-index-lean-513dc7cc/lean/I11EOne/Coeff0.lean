import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialCapComputation.ChooseFast

/-! UNCOMPILED first delta1 coefficient; no concrete Polynomial evaluation. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11EOne
open Math.B699.I11InitialCapComputation

theorem coefficient_0 : fastECoefficient 14 8 14 0 = (38608020 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

end Math.B699.I11EOne
