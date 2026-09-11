import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row090Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_registered :
    decide (row090.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row090_small_checked :
    coverCheck (2 * row090.height.i + 2) (row090.height.i * (row090.height.i - 1) - 1)
      (row090.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row090_layerCover_checked :
    coverCheck (row090.height.i * (row090.height.i - 1)) (row090.height.n0 - 1)
      (row090.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layerCover_checked
