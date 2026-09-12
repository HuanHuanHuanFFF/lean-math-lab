import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row104Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_registered :
    decide (row104.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row104_small_checked :
    coverCheck (2 * row104.height.i + 2) (row104.height.i * (row104.height.i - 1) - 1)
      (row104.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row104_layerCover_checked :
    coverCheck (row104.height.i * (row104.height.i - 1)) (row104.height.n0 - 1)
      (row104.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layerCover_checked
