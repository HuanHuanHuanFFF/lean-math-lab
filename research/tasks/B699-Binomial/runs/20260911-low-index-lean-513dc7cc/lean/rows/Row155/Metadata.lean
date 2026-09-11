import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row155Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_registered :
    decide (row155.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row155_small_checked :
    coverCheck (2 * row155.height.i + 2) (row155.height.i * (row155.height.i - 1) - 1)
      (row155.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row155_layerCover_checked :
    coverCheck (row155.height.i * (row155.height.i - 1)) (row155.height.n0 - 1)
      (row155.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layerCover_checked
