import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row101Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_registered :
    decide (row101.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row101_small_checked :
    coverCheck (2 * row101.height.i + 2) (row101.height.i * (row101.height.i - 1) - 1)
      (row101.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row101_layerCover_checked :
    coverCheck (row101.height.i * (row101.height.i - 1)) (row101.height.n0 - 1)
      (row101.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layerCover_checked
