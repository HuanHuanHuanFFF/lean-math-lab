import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row158Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_registered :
    decide (row158.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row158_small_checked :
    coverCheck (2 * row158.height.i + 2) (row158.height.i * (row158.height.i - 1) - 1)
      (row158.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row158_layerCover_checked :
    coverCheck (row158.height.i * (row158.height.i - 1)) (row158.height.n0 - 1)
      (row158.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layerCover_checked
