import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row116Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_registered :
    decide (row116.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row116_small_checked :
    coverCheck (2 * row116.height.i + 2) (row116.height.i * (row116.height.i - 1) - 1)
      (row116.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row116_layerCover_checked :
    coverCheck (row116.height.i * (row116.height.i - 1)) (row116.height.n0 - 1)
      (row116.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layerCover_checked
