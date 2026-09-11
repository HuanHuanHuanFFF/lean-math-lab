import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row106Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_registered :
    decide (row106.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row106_small_checked :
    coverCheck (2 * row106.height.i + 2) (row106.height.i * (row106.height.i - 1) - 1)
      (row106.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row106_layerCover_checked :
    coverCheck (row106.height.i * (row106.height.i - 1)) (row106.height.n0 - 1)
      (row106.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layerCover_checked
