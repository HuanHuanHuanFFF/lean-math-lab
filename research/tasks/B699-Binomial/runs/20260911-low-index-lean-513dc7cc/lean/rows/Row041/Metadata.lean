import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_registered :
    decide (row041.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row041_small_checked :
    coverCheck (2 * row041.height.i + 2) (row041.height.i * (row041.height.i - 1) - 1)
      (row041.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row041_layerCover_checked :
    coverCheck (row041.height.i * (row041.height.i - 1)) (row041.height.n0 - 1)
      (row041.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layerCover_checked
