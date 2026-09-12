import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row124Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_registered :
    decide (row124.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row124_small_checked :
    coverCheck (2 * row124.height.i + 2) (row124.height.i * (row124.height.i - 1) - 1)
      (row124.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row124_layerCover_checked :
    coverCheck (row124.height.i * (row124.height.i - 1)) (row124.height.n0 - 1)
      (row124.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layerCover_checked
