import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row055Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_registered :
    decide (row055.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row055_small_checked :
    coverCheck (2 * row055.height.i + 2) (row055.height.i * (row055.height.i - 1) - 1)
      (row055.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row055_layerCover_checked :
    coverCheck (row055.height.i * (row055.height.i - 1)) (row055.height.n0 - 1)
      (row055.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layerCover_checked
