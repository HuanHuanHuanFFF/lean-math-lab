import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_registered :
    decide (row042.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row042_small_checked :
    coverCheck (2 * row042.height.i + 2) (row042.height.i * (row042.height.i - 1) - 1)
      (row042.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row042_layerCover_checked :
    coverCheck (row042.height.i * (row042.height.i - 1)) (row042.height.n0 - 1)
      (row042.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layerCover_checked
