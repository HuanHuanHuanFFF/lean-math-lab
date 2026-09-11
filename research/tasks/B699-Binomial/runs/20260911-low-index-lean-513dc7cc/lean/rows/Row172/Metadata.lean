import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row172Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_registered :
    decide (row172.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row172_small_checked :
    coverCheck (2 * row172.height.i + 2) (row172.height.i * (row172.height.i - 1) - 1)
      (row172.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row172_layerCover_checked :
    coverCheck (row172.height.i * (row172.height.i - 1)) (row172.height.n0 - 1)
      (row172.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layerCover_checked
