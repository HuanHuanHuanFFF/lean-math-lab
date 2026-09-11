import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row146Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_registered :
    decide (row146.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row146_small_checked :
    coverCheck (2 * row146.height.i + 2) (row146.height.i * (row146.height.i - 1) - 1)
      (row146.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row146_layerCover_checked :
    coverCheck (row146.height.i * (row146.height.i - 1)) (row146.height.n0 - 1)
      (row146.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layerCover_checked
