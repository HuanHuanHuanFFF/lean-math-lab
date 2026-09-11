import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row118Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer004_checked :
    coverLayerCheck row118.height row118.goods { lower := 220896, upper := 441792, M := 11 } = true := by
  decide +kernel

theorem row118_layer005_checked :
    coverLayerCheck row118.height row118.goods { lower := 441792, upper := 883584, M := 9 } = true := by
  decide +kernel

theorem row118_layer006_checked :
    coverLayerCheck row118.height row118.goods { lower := 883584, upper := 1767168, M := 7 } = true := by
  decide +kernel

theorem row118_layer007_checked :
    coverLayerCheck row118.height row118.goods { lower := 1767168, upper := 3534336, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer007_checked
