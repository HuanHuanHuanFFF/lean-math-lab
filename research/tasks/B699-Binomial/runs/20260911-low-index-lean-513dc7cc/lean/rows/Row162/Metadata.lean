import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row162Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_registered :
    decide (row162.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row162_small_checked :
    coverCheck (2 * row162.height.i + 2) (row162.height.i * (row162.height.i - 1) - 1)
      (row162.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row162_layerCover_checked :
    coverCheck (row162.height.i * (row162.height.i - 1)) (row162.height.n0 - 1)
      (row162.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layerCover_checked
