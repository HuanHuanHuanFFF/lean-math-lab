import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row075Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_registered :
    decide (row075.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row075_small_checked :
    coverCheck (2 * row075.height.i + 2) (row075.height.i * (row075.height.i - 1) - 1)
      (row075.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row075_layerCover_checked :
    coverCheck (row075.height.i * (row075.height.i - 1)) (row075.height.n0 - 1)
      (row075.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layerCover_checked
