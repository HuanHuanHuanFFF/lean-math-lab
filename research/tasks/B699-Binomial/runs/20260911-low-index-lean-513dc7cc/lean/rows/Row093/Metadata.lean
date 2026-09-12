import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row093Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_registered :
    decide (row093.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row093_small_checked :
    coverCheck (2 * row093.height.i + 2) (row093.height.i * (row093.height.i - 1) - 1)
      (row093.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row093_layerCover_checked :
    coverCheck (row093.height.i * (row093.height.i - 1)) (row093.height.n0 - 1)
      (row093.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layerCover_checked
