import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11EOne.Actual
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11EOne.CapNums
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ECoefficientStaging.ActualEval

/-! UNCOMPILED consumer of the two actual-value theorems and pure Rat caps.
The old failed I11InitialCapComputation.ThreeTwo module is not imported. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11EOne
open Math.B699.PadeGrowthNormalization

theorem actual_e_delta0 :
    actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323 :=
  Math.B699.I11ECoefficientStaging.actual_e_delta0

theorem e_cap_delta0 :
    2 * |actualE 23 15 0 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  calc
    _ = 2 * |(13515592997264 : ℚ) / 1594323| :=
      congrArg (fun x : ℚ => 2 * |x|) actual_e_delta0
    _ ≤ Math.B699.I11ThreeTwoScaled.eBase := numeric_cap_delta0

theorem e_cap_delta1 :
    2 * |actualE 23 15 1 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  calc
    _ = 2 * |(117258057456010 : ℚ) / 4782969| :=
      congrArg (fun x : ℚ => 2 * |x|) actual_e_delta1
    _ ≤ Math.B699.I11ThreeTwoScaled.eBase := numeric_cap_delta1

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 23 15 (Math.B699.I11ThreeTwoScaled.rowDelta row) 1 (1 / 9)| ≤
      Math.B699.I11ThreeTwoScaled.eBase := by
  cases row
  · exact e_cap_delta1
  · exact e_cap_delta0

end Math.B699.I11EOne
