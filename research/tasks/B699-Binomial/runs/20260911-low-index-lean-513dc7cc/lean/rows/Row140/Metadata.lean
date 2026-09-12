import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row140Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_registered :
    decide (row140.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row140_small_checked :
    coverCheck (2 * row140.height.i + 2) (row140.height.i * (row140.height.i - 1) - 1)
      (row140.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row140_layerCover_checked :
    coverCheck (row140.height.i * (row140.height.i - 1)) (row140.height.n0 - 1)
      (row140.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layerCover_checked
