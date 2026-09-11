import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row131Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_registered :
    decide (row131.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row131_small_checked :
    coverCheck (2 * row131.height.i + 2) (row131.height.i * (row131.height.i - 1) - 1)
      (row131.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row131_layerCover_checked :
    coverCheck (row131.height.i * (row131.height.i - 1)) (row131.height.n0 - 1)
      (row131.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layerCover_checked
