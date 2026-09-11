import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row115Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_registered :
    decide (row115.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row115_small_checked :
    coverCheck (2 * row115.height.i + 2) (row115.height.i * (row115.height.i - 1) - 1)
      (row115.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row115_layerCover_checked :
    coverCheck (row115.height.i * (row115.height.i - 1)) (row115.height.n0 - 1)
      (row115.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layerCover_checked
