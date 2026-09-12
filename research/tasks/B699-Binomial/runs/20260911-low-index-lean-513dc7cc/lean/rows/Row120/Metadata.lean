import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row120Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_registered :
    decide (row120.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row120_small_checked :
    coverCheck (2 * row120.height.i + 2) (row120.height.i * (row120.height.i - 1) - 1)
      (row120.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row120_layerCover_checked :
    coverCheck (row120.height.i * (row120.height.i - 1)) (row120.height.n0 - 1)
      (row120.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layerCover_checked
