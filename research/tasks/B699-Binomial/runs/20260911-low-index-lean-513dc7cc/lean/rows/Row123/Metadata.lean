import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row123Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_registered :
    decide (row123.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row123_small_checked :
    coverCheck (2 * row123.height.i + 2) (row123.height.i * (row123.height.i - 1) - 1)
      (row123.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row123_layerCover_checked :
    coverCheck (row123.height.i * (row123.height.i - 1)) (row123.height.n0 - 1)
      (row123.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layerCover_checked
