import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row039Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row039_registered :
    decide (row039.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row039_small_checked :
    coverCheck (2 * row039.height.i + 2) (row039.height.i * (row039.height.i - 1) - 1)
      (row039.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row039_layerCover_checked :
    coverCheck (row039.height.i * (row039.height.i - 1)) (row039.height.n0 - 1)
      (row039.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layerCover_checked
