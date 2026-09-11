import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row122Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_registered :
    decide (row122.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row122_small_checked :
    coverCheck (2 * row122.height.i + 2) (row122.height.i * (row122.height.i - 1) - 1)
      (row122.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row122_layerCover_checked :
    coverCheck (row122.height.i * (row122.height.i - 1)) (row122.height.n0 - 1)
      (row122.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layerCover_checked
