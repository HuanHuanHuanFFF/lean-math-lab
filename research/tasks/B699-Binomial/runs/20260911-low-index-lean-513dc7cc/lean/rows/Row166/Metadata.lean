import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row166Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_registered :
    decide (row166.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row166_small_checked :
    coverCheck (2 * row166.height.i + 2) (row166.height.i * (row166.height.i - 1) - 1)
      (row166.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row166_layerCover_checked :
    coverCheck (row166.height.i * (row166.height.i - 1)) (row166.height.n0 - 1)
      (row166.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layerCover_checked
