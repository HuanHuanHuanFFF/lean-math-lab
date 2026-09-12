import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row092Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_registered :
    decide (row092.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row092_small_checked :
    coverCheck (2 * row092.height.i + 2) (row092.height.i * (row092.height.i - 1) - 1)
      (row092.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row092_layerCover_checked :
    coverCheck (row092.height.i * (row092.height.i - 1)) (row092.height.n0 - 1)
      (row092.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layerCover_checked
