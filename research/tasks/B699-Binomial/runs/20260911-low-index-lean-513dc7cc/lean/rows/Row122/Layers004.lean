import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row122Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer004_checked :
    coverLayerCheck row122.height row122.goods { lower := 236192, upper := 472384, M := 8 } = true := by
  decide +kernel

theorem row122_layer005_checked :
    coverLayerCheck row122.height row122.goods { lower := 472384, upper := 944768, M := 6 } = true := by
  decide +kernel

theorem row122_layer006_checked :
    coverLayerCheck row122.height row122.goods { lower := 944768, upper := 1889536, M := 5 } = true := by
  decide +kernel

theorem row122_layer007_checked :
    coverLayerCheck row122.height row122.goods { lower := 1889536, upper := 3779072, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer007_checked
