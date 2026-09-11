import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row071Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_registered :
    decide (row071.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row071_small_checked :
    coverCheck (2 * row071.height.i + 2) (row071.height.i * (row071.height.i - 1) - 1)
      (row071.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row071_layerCover_checked :
    coverCheck (row071.height.i * (row071.height.i - 1)) (row071.height.n0 - 1)
      (row071.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layerCover_checked
