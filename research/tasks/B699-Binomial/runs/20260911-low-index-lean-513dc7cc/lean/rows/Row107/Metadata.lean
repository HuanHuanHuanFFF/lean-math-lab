import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row107Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_registered :
    decide (row107.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row107_small_checked :
    coverCheck (2 * row107.height.i + 2) (row107.height.i * (row107.height.i - 1) - 1)
      (row107.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row107_layerCover_checked :
    coverCheck (row107.height.i * (row107.height.i - 1)) (row107.height.n0 - 1)
      (row107.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layerCover_checked
