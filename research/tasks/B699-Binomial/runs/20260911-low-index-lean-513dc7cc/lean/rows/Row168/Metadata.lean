import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row168Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_registered :
    decide (row168.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row168_small_checked :
    coverCheck (2 * row168.height.i + 2) (row168.height.i * (row168.height.i - 1) - 1)
      (row168.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row168_layerCover_checked :
    coverCheck (row168.height.i * (row168.height.i - 1)) (row168.height.n0 - 1)
      (row168.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layerCover_checked
