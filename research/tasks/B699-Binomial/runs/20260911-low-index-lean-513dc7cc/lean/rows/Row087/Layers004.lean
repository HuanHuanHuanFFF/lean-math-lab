import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row087Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer004_checked :
    coverLayerCheck row087.height row087.goods { lower := 119712, upper := 239424, M := 13 } = true := by
  decide +kernel

theorem row087_layer005_checked :
    coverLayerCheck row087.height row087.goods { lower := 239424, upper := 478848, M := 11 } = true := by
  decide +kernel

theorem row087_layer006_checked :
    coverLayerCheck row087.height row087.goods { lower := 478848, upper := 957696, M := 9 } = true := by
  decide +kernel

theorem row087_layer007_checked :
    coverLayerCheck row087.height row087.goods { lower := 957696, upper := 1915392, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer007_checked
