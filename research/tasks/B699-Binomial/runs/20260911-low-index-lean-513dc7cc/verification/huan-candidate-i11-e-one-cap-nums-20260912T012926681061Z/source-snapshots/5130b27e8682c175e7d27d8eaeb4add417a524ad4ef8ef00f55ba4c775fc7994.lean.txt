import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoEdge.GrowthInputs

/-! UNCOMPILED. Both cap checks involve only the fixed rational values and
existing eBase=beta23,15*eLambda. No actualE expression is evaluated here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11EOne
open Math.B699.ElementaryFactorialBound

theorem numeric_cap_delta0 :
    2 * |(13515592997264 : ℚ) / 1594323| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  norm_num [Math.B699.I11ThreeTwoScaled.eBase, beta,
    Math.B699.I11ThreeTwoScaled.eLambda]

theorem numeric_cap_delta1 :
    2 * |(117258057456010 : ℚ) / 4782969| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  norm_num [Math.B699.I11ThreeTwoScaled.eBase, beta,
    Math.B699.I11ThreeTwoScaled.eLambda]

end Math.B699.I11EOne
