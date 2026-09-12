import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row130Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_registered :
    decide (row130.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row130_small_checked :
    coverCheck (2 * row130.height.i + 2) (row130.height.i * (row130.height.i - 1) - 1)
      (row130.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row130_layerCover_checked :
    coverCheck (row130.height.i * (row130.height.i - 1)) (row130.height.n0 - 1)
      (row130.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layerCover_checked
