import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.LowIndexLean513dc7cc

/-- Assemble checked arithmetic and explicit finite data into the original checker. -/
theorem coverLayerCheck_of_parts
    {height : HeightCertificateDatum} {goods : List GoodSegment}
    {layer : CoverLayer} {intervals : List ColouredInterval} {bounds : List NatInterval}
    (hArithmetic : LayerArithmeticValid height layer)
    (hIntervals : activePowerIntervalList height.i layer.M layer.lower layer.upper = intervals)
    (hBounds : goods.map goodSegmentBounds = bounds)
    (hPairs : pairCoverCheck intervals bounds = true) :
    coverLayerCheck height goods layer = true := by
  simp only [coverLayerCheck, Bool.and_eq_true, decide_eq_true_eq, hIntervals, hBounds]
  exact ⟨hArithmetic, hPairs⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.coverLayerCheck_of_parts
