import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row047Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_registered :
    decide (row047.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row047_small_checked :
    coverCheck (2 * row047.height.i + 2) (row047.height.i * (row047.height.i - 1) - 1)
      (row047.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row047_layerCover_checked :
    coverCheck (row047.height.i * (row047.height.i - 1)) (row047.height.n0 - 1)
      (row047.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layerCover_checked
