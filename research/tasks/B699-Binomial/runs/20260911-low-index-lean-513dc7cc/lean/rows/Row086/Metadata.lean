import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row086Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_registered :
    decide (row086.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row086_small_checked :
    coverCheck (2 * row086.height.i + 2) (row086.height.i * (row086.height.i - 1) - 1)
      (row086.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row086_layerCover_checked :
    coverCheck (row086.height.i * (row086.height.i - 1)) (row086.height.n0 - 1)
      (row086.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layerCover_checked
