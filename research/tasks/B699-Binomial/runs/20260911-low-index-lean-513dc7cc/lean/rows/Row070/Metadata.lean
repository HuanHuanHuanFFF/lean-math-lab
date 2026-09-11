import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row070Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_registered :
    decide (row070.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row070_small_checked :
    coverCheck (2 * row070.height.i + 2) (row070.height.i * (row070.height.i - 1) - 1)
      (row070.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row070_layerCover_checked :
    coverCheck (row070.height.i * (row070.height.i - 1)) (row070.height.n0 - 1)
      (row070.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layerCover_checked
