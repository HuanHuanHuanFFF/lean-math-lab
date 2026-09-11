import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row114Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_registered :
    decide (row114.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row114_small_checked :
    coverCheck (2 * row114.height.i + 2) (row114.height.i * (row114.height.i - 1) - 1)
      (row114.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row114_layerCover_checked :
    coverCheck (row114.height.i * (row114.height.i - 1)) (row114.height.n0 - 1)
      (row114.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layerCover_checked
