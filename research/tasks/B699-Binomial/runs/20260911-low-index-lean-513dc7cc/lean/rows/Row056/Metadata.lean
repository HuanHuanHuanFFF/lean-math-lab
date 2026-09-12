import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row056Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_registered :
    decide (row056.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row056_small_checked :
    coverCheck (2 * row056.height.i + 2) (row056.height.i * (row056.height.i - 1) - 1)
      (row056.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row056_layerCover_checked :
    coverCheck (row056.height.i * (row056.height.i - 1)) (row056.height.n0 - 1)
      (row056.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layerCover_checked
