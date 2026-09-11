import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row077Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_registered :
    decide (row077.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row077_small_checked :
    coverCheck (2 * row077.height.i + 2) (row077.height.i * (row077.height.i - 1) - 1)
      (row077.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row077_layerCover_checked :
    coverCheck (row077.height.i * (row077.height.i - 1)) (row077.height.n0 - 1)
      (row077.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layerCover_checked
