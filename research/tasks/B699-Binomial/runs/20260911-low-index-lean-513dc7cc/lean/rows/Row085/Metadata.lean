import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row085Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_registered :
    decide (row085.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row085_small_checked :
    coverCheck (2 * row085.height.i + 2) (row085.height.i * (row085.height.i - 1) - 1)
      (row085.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row085_layerCover_checked :
    coverCheck (row085.height.i * (row085.height.i - 1)) (row085.height.n0 - 1)
      (row085.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layerCover_checked
