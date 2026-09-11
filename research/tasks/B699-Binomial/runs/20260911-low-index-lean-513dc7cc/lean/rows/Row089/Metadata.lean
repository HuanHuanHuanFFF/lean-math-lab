import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row089Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_registered :
    decide (row089.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row089_small_checked :
    coverCheck (2 * row089.height.i + 2) (row089.height.i * (row089.height.i - 1) - 1)
      (row089.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row089_layerCover_checked :
    coverCheck (row089.height.i * (row089.height.i - 1)) (row089.height.n0 - 1)
      (row089.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layerCover_checked
