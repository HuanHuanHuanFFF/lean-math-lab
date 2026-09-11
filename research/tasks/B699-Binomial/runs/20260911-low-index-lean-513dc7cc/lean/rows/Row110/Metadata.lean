import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row110Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_registered :
    decide (row110.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row110_small_checked :
    coverCheck (2 * row110.height.i + 2) (row110.height.i * (row110.height.i - 1) - 1)
      (row110.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row110_layerCover_checked :
    coverCheck (row110.height.i * (row110.height.i - 1)) (row110.height.n0 - 1)
      (row110.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layerCover_checked
