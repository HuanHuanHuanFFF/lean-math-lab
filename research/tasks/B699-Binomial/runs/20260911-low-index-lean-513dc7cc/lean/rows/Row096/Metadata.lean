import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row096Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_registered :
    decide (row096.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row096_small_checked :
    coverCheck (2 * row096.height.i + 2) (row096.height.i * (row096.height.i - 1) - 1)
      (row096.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row096_layerCover_checked :
    coverCheck (row096.height.i * (row096.height.i - 1)) (row096.height.n0 - 1)
      (row096.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layerCover_checked
