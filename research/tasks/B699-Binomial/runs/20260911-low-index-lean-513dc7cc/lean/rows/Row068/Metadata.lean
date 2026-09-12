import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row068Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_registered :
    decide (row068.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row068_small_checked :
    coverCheck (2 * row068.height.i + 2) (row068.height.i * (row068.height.i - 1) - 1)
      (row068.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row068_layerCover_checked :
    coverCheck (row068.height.i * (row068.height.i - 1)) (row068.height.n0 - 1)
      (row068.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layerCover_checked
