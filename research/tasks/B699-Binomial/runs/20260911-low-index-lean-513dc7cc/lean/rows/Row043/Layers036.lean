import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer036_checked :
    coverLayerCheck row043.height row043.goods { lower := 124107374985216, upper := 248214749970432, M := 5 } = true := by
  decide +kernel

theorem row043_layer037_checked :
    coverLayerCheck row043.height row043.goods { lower := 248214749970432, upper := 496429499940864, M := 5 } = true := by
  decide +kernel

theorem row043_layer038_checked :
    coverLayerCheck row043.height row043.goods { lower := 496429499940864, upper := 992858999881728, M := 4 } = true := by
  decide +kernel

theorem row043_layer039_checked :
    coverLayerCheck row043.height row043.goods { lower := 992858999881728, upper := 1985717999763456, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer039_checked
