import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-log-separation-5e2d13bb».lean.ZeroBoundaryLogSeparation.PilotData
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-log-separation-5e2d13bb».lean.ZeroBoundaryLogSeparation.Quotient
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-log-boxes-5e2d13bb».Definitions

/-! Exact rational linkage of the outward-rounded pilot boxes to the frozen
96-term definitions. These three roots are separate from real-log soundness. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace Math.B699.ZeroBoundaryLogSeparation
open Math.B699.ZeroBoundaryLogBoxes

theorem alpha23_box_check :
    quotientBoxCheck (logLower 2) (logUpper 2) (logLower 3) (logUpper 3)
      alpha23Lower alpha23Upper = true := by
  decide +kernel

theorem betaFive_box_check :
    quotientBoxCheck (logLower 5) (logUpper 5) (logLower 3) (logUpper 3)
      betaFiveLower betaFiveUpper = true := by
  decide +kernel

theorem half_lt_logThreeLower : (1 / 2 : ℚ) < logLower 3 := by
  decide +kernel

end Math.B699.ZeroBoundaryLogSeparation

#check (Math.B699.ZeroBoundaryLogSeparation.alpha23_box_check :
  Math.B699.ZeroBoundaryLogSeparation.quotientBoxCheck
    (Math.B699.ZeroBoundaryLogBoxes.logLower 2) (Math.B699.ZeroBoundaryLogBoxes.logUpper 2)
    (Math.B699.ZeroBoundaryLogBoxes.logLower 3) (Math.B699.ZeroBoundaryLogBoxes.logUpper 3)
    Math.B699.ZeroBoundaryLogSeparation.alpha23Lower
    Math.B699.ZeroBoundaryLogSeparation.alpha23Upper = true)
#check (Math.B699.ZeroBoundaryLogSeparation.betaFive_box_check :
  Math.B699.ZeroBoundaryLogSeparation.quotientBoxCheck
    (Math.B699.ZeroBoundaryLogBoxes.logLower 5) (Math.B699.ZeroBoundaryLogBoxes.logUpper 5)
    (Math.B699.ZeroBoundaryLogBoxes.logLower 3) (Math.B699.ZeroBoundaryLogBoxes.logUpper 3)
    Math.B699.ZeroBoundaryLogSeparation.betaFiveLower
    Math.B699.ZeroBoundaryLogSeparation.betaFiveUpper = true)
#check (Math.B699.ZeroBoundaryLogSeparation.half_lt_logThreeLower :
  (1 / 2 : ℚ) < Math.B699.ZeroBoundaryLogBoxes.logLower 3)
#print axioms Math.B699.ZeroBoundaryLogSeparation.alpha23_box_check
#print axioms Math.B699.ZeroBoundaryLogSeparation.betaFive_box_check
#print axioms Math.B699.ZeroBoundaryLogSeparation.half_lt_logThreeLower