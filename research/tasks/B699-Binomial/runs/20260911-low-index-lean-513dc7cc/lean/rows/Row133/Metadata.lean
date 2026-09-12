import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row133Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_registered :
    decide (row133.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row133_small_checked :
    coverCheck (2 * row133.height.i + 2) (row133.height.i * (row133.height.i - 1) - 1)
      (row133.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row133_layerCover_checked :
    coverCheck (row133.height.i * (row133.height.i - 1)) (row133.height.n0 - 1)
      (row133.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layerCover_checked
