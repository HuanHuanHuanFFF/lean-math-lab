import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_registered :
    decide (row054.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row054_small_checked :
    coverCheck (2 * row054.height.i + 2) (row054.height.i * (row054.height.i - 1) - 1)
      (row054.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row054_layerCover_checked :
    coverCheck (row054.height.i * (row054.height.i - 1)) (row054.height.n0 - 1)
      (row054.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layerCover_checked
