import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row152Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_registered :
    decide (row152.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row152_small_checked :
    coverCheck (2 * row152.height.i + 2) (row152.height.i * (row152.height.i - 1) - 1)
      (row152.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row152_layerCover_checked :
    coverCheck (row152.height.i * (row152.height.i - 1)) (row152.height.n0 - 1)
      (row152.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layerCover_checked
