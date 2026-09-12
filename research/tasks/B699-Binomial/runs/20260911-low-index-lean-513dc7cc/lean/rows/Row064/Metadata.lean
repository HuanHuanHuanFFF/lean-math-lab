import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row064Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_registered :
    decide (row064.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row064_small_checked :
    coverCheck (2 * row064.height.i + 2) (row064.height.i * (row064.height.i - 1) - 1)
      (row064.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row064_layerCover_checked :
    coverCheck (row064.height.i * (row064.height.i - 1)) (row064.height.n0 - 1)
      (row064.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layerCover_checked
