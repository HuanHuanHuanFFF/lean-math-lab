import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_registered :
    decide (row035.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row035_small_checked :
    coverCheck (2 * row035.height.i + 2) (row035.height.i * (row035.height.i - 1) - 1)
      (row035.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row035_layerCover_checked :
    coverCheck (row035.height.i * (row035.height.i - 1)) (row035.height.n0 - 1)
      (row035.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layerCover_checked
