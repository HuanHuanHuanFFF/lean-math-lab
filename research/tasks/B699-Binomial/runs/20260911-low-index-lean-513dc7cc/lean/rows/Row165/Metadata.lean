import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row165Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_registered :
    decide (row165.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row165_small_checked :
    coverCheck (2 * row165.height.i + 2) (row165.height.i * (row165.height.i - 1) - 1)
      (row165.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row165_layerCover_checked :
    coverCheck (row165.height.i * (row165.height.i - 1)) (row165.height.n0 - 1)
      (row165.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layerCover_checked
