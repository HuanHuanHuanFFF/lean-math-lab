import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row118Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_registered :
    decide (row118.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row118_small_checked :
    coverCheck (2 * row118.height.i + 2) (row118.height.i * (row118.height.i - 1) - 1)
      (row118.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row118_layerCover_checked :
    coverCheck (row118.height.i * (row118.height.i - 1)) (row118.height.n0 - 1)
      (row118.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layerCover_checked
