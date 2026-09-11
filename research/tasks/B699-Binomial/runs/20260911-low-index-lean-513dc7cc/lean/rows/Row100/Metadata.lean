import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row100Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_registered :
    decide (row100.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row100_small_checked :
    coverCheck (2 * row100.height.i + 2) (row100.height.i * (row100.height.i - 1) - 1)
      (row100.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row100_layerCover_checked :
    coverCheck (row100.height.i * (row100.height.i - 1)) (row100.height.n0 - 1)
      (row100.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layerCover_checked
