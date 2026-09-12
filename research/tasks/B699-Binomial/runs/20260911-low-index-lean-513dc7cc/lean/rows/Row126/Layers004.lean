import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row126Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer004_checked :
    coverLayerCheck row126.height row126.goods { lower := 252000, upper := 504000, M := 6 } = true := by
  decide +kernel

theorem row126_layer005_checked :
    coverLayerCheck row126.height row126.goods { lower := 504000, upper := 1008000, M := 4 } = true := by
  decide +kernel

theorem row126_layer006_checked :
    coverLayerCheck row126.height row126.goods { lower := 1008000, upper := 2016000, M := 3 } = true := by
  decide +kernel

theorem row126_layer007_checked :
    coverLayerCheck row126.height row126.goods { lower := 2016000, upper := 4032000, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer007_checked
