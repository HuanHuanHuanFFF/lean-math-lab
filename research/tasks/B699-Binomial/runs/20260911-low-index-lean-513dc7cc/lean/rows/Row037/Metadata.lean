import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_registered :
    decide (row037.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row037_small_checked :
    coverCheck (2 * row037.height.i + 2) (row037.height.i * (row037.height.i - 1) - 1)
      (row037.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row037_layerCover_checked :
    coverCheck (row037.height.i * (row037.height.i - 1)) (row037.height.n0 - 1)
      (row037.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layerCover_checked
