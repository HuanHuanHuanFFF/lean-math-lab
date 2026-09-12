import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_registered :
    decide (row051.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row051_small_checked :
    coverCheck (2 * row051.height.i + 2) (row051.height.i * (row051.height.i - 1) - 1)
      (row051.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row051_layerCover_checked :
    coverCheck (row051.height.i * (row051.height.i - 1)) (row051.height.n0 - 1)
      (row051.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layerCover_checked
