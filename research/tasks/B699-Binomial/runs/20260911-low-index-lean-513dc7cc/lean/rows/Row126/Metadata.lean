import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row126Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_registered :
    decide (row126.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row126_small_checked :
    coverCheck (2 * row126.height.i + 2) (row126.height.i * (row126.height.i - 1) - 1)
      (row126.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row126_layerCover_checked :
    coverCheck (row126.height.i * (row126.height.i - 1)) (row126.height.n0 - 1)
      (row126.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layerCover_checked
