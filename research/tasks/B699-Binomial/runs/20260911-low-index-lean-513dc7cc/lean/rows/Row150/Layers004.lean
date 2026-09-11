import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row150Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer004_checked :
    coverLayerCheck row150.height row150.goods { lower := 357600, upper := 715200, M := 5 } = true := by
  decide +kernel

theorem row150_layer005_checked :
    coverLayerCheck row150.height row150.goods { lower := 715200, upper := 1430400, M := 4 } = true := by
  decide +kernel

theorem row150_layer006_checked :
    coverLayerCheck row150.height row150.goods { lower := 1430400, upper := 2860800, M := 3 } = true := by
  decide +kernel

theorem row150_layer007_checked :
    coverLayerCheck row150.height row150.goods { lower := 2860800, upper := 5721600, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer007_checked
