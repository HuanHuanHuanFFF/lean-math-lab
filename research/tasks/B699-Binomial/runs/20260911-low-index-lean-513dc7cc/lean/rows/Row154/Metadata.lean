import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row154Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_registered :
    decide (row154.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row154_small_checked :
    coverCheck (2 * row154.height.i + 2) (row154.height.i * (row154.height.i - 1) - 1)
      (row154.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row154_layerCover_checked :
    coverCheck (row154.height.i * (row154.height.i - 1)) (row154.height.n0 - 1)
      (row154.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layerCover_checked
