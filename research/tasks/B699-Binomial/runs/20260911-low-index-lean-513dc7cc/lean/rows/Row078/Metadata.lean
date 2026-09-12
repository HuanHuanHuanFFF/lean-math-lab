import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row078Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_registered :
    decide (row078.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row078_small_checked :
    coverCheck (2 * row078.height.i + 2) (row078.height.i * (row078.height.i - 1) - 1)
      (row078.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row078_layerCover_checked :
    coverCheck (row078.height.i * (row078.height.i - 1)) (row078.height.n0 - 1)
      (row078.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layerCover_checked
