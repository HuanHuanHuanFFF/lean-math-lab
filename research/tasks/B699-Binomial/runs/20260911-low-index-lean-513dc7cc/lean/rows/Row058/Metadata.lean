import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row058Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_registered :
    decide (row058.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row058_small_checked :
    coverCheck (2 * row058.height.i + 2) (row058.height.i * (row058.height.i - 1) - 1)
      (row058.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row058_layerCover_checked :
    coverCheck (row058.height.i * (row058.height.i - 1)) (row058.height.n0 - 1)
      (row058.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layerCover_checked
