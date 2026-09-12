import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row063Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_registered :
    decide (row063.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row063_small_checked :
    coverCheck (2 * row063.height.i + 2) (row063.height.i * (row063.height.i - 1) - 1)
      (row063.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row063_layerCover_checked :
    coverCheck (row063.height.i * (row063.height.i - 1)) (row063.height.n0 - 1)
      (row063.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layerCover_checked
