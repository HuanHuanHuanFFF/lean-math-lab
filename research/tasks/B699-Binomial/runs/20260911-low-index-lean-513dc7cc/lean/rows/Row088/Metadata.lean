import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row088Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_registered :
    decide (row088.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row088_small_checked :
    coverCheck (2 * row088.height.i + 2) (row088.height.i * (row088.height.i - 1) - 1)
      (row088.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row088_layerCover_checked :
    coverCheck (row088.height.i * (row088.height.i - 1)) (row088.height.n0 - 1)
      (row088.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layerCover_checked
