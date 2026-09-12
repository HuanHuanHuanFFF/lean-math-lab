import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row144Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_registered :
    decide (row144.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row144_small_checked :
    coverCheck (2 * row144.height.i + 2) (row144.height.i * (row144.height.i - 1) - 1)
      (row144.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row144_layerCover_checked :
    coverCheck (row144.height.i * (row144.height.i - 1)) (row144.height.n0 - 1)
      (row144.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layerCover_checked
