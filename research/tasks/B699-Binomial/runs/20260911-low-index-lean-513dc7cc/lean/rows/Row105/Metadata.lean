import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row105Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_registered :
    decide (row105.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row105_small_checked :
    coverCheck (2 * row105.height.i + 2) (row105.height.i * (row105.height.i - 1) - 1)
      (row105.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row105_layerCover_checked :
    coverCheck (row105.height.i * (row105.height.i - 1)) (row105.height.n0 - 1)
      (row105.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layerCover_checked
