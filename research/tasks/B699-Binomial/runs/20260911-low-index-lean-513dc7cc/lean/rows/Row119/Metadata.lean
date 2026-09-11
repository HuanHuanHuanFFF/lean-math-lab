import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row119Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_registered :
    decide (row119.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row119_small_checked :
    coverCheck (2 * row119.height.i + 2) (row119.height.i * (row119.height.i - 1) - 1)
      (row119.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row119_layerCover_checked :
    coverCheck (row119.height.i * (row119.height.i - 1)) (row119.height.n0 - 1)
      (row119.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layerCover_checked
