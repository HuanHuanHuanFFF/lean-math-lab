import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row153Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_registered :
    decide (row153.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row153_small_checked :
    coverCheck (2 * row153.height.i + 2) (row153.height.i * (row153.height.i - 1) - 1)
      (row153.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row153_layerCover_checked :
    coverCheck (row153.height.i * (row153.height.i - 1)) (row153.height.n0 - 1)
      (row153.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layerCover_checked
