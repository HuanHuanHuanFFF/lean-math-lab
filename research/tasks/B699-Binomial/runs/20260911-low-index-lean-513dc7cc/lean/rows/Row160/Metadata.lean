import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row160Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_registered :
    decide (row160.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row160_small_checked :
    coverCheck (2 * row160.height.i + 2) (row160.height.i * (row160.height.i - 1) - 1)
      (row160.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row160_layerCover_checked :
    coverCheck (row160.height.i * (row160.height.i - 1)) (row160.height.n0 - 1)
      (row160.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layerCover_checked
