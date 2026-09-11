import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row083Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_registered :
    decide (row083.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row083_small_checked :
    coverCheck (2 * row083.height.i + 2) (row083.height.i * (row083.height.i - 1) - 1)
      (row083.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row083_layerCover_checked :
    coverCheck (row083.height.i * (row083.height.i - 1)) (row083.height.n0 - 1)
      (row083.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layerCover_checked
