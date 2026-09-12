import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row073Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_registered :
    decide (row073.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row073_small_checked :
    coverCheck (2 * row073.height.i + 2) (row073.height.i * (row073.height.i - 1) - 1)
      (row073.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row073_layerCover_checked :
    coverCheck (row073.height.i * (row073.height.i - 1)) (row073.height.n0 - 1)
      (row073.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layerCover_checked
