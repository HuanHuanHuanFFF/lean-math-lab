import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row121Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_registered :
    decide (row121.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row121_small_checked :
    coverCheck (2 * row121.height.i + 2) (row121.height.i * (row121.height.i - 1) - 1)
      (row121.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row121_layerCover_checked :
    coverCheck (row121.height.i * (row121.height.i - 1)) (row121.height.n0 - 1)
      (row121.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layerCover_checked
