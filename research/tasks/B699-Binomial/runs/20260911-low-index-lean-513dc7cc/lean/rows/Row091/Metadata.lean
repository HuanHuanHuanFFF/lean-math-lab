import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row091Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_registered :
    decide (row091.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row091_small_checked :
    coverCheck (2 * row091.height.i + 2) (row091.height.i * (row091.height.i - 1) - 1)
      (row091.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row091_layerCover_checked :
    coverCheck (row091.height.i * (row091.height.i - 1)) (row091.height.n0 - 1)
      (row091.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layerCover_checked
