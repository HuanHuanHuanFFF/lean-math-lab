import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row087Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_registered :
    decide (row087.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row087_small_checked :
    coverCheck (2 * row087.height.i + 2) (row087.height.i * (row087.height.i - 1) - 1)
      (row087.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row087_layerCover_checked :
    coverCheck (row087.height.i * (row087.height.i - 1)) (row087.height.n0 - 1)
      (row087.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layerCover_checked
