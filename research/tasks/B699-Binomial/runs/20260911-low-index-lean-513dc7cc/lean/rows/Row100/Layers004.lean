import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row100Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer004_checked :
    coverLayerCheck row100.height row100.goods { lower := 158400, upper := 316800, M := 8 } = true := by
  decide +kernel

theorem row100_layer005_checked :
    coverLayerCheck row100.height row100.goods { lower := 316800, upper := 633600, M := 7 } = true := by
  decide +kernel

theorem row100_layer006_checked :
    coverLayerCheck row100.height row100.goods { lower := 633600, upper := 1267200, M := 5 } = true := by
  decide +kernel

theorem row100_layer007_checked :
    coverLayerCheck row100.height row100.goods { lower := 1267200, upper := 2534400, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer007_checked
