import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row070Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer004_checked :
    coverLayerCheck row070.height row070.goods { lower := 77280, upper := 154560, M := 15 } = true := by
  decide +kernel

theorem row070_layer005_checked :
    coverLayerCheck row070.height row070.goods { lower := 154560, upper := 309120, M := 13 } = true := by
  decide +kernel

theorem row070_layer006_checked :
    coverLayerCheck row070.height row070.goods { lower := 309120, upper := 618240, M := 11 } = true := by
  decide +kernel

theorem row070_layer007_checked :
    coverLayerCheck row070.height row070.goods { lower := 618240, upper := 1236480, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer007_checked
