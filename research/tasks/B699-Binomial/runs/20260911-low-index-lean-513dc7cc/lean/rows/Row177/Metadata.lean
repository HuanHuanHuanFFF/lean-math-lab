import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row177Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_registered :
    decide (row177.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row177_small_checked :
    coverCheck (2 * row177.height.i + 2) (row177.height.i * (row177.height.i - 1) - 1)
      (row177.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row177_layerCover_checked :
    coverCheck (row177.height.i * (row177.height.i - 1)) (row177.height.n0 - 1)
      (row177.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layerCover_checked
