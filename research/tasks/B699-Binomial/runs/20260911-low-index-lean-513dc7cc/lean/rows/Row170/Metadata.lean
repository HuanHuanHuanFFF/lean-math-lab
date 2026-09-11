import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row170Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_registered :
    decide (row170.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row170_small_checked :
    coverCheck (2 * row170.height.i + 2) (row170.height.i * (row170.height.i - 1) - 1)
      (row170.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row170_layerCover_checked :
    coverCheck (row170.height.i * (row170.height.i - 1)) (row170.height.n0 - 1)
      (row170.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layerCover_checked
