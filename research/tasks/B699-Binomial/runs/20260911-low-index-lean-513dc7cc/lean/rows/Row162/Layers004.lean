import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row162Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer004_checked :
    coverLayerCheck row162.height row162.goods { lower := 417312, upper := 834624, M := 4 } = true := by
  decide +kernel

theorem row162_layer005_checked :
    coverLayerCheck row162.height row162.goods { lower := 834624, upper := 1669248, M := 3 } = true := by
  decide +kernel

theorem row162_layer006_checked :
    coverLayerCheck row162.height row162.goods { lower := 1669248, upper := 3338496, M := 2 } = true := by
  decide +kernel

theorem row162_layer007_checked :
    coverLayerCheck row162.height row162.goods { lower := 3338496, upper := 6676992, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer007_checked
