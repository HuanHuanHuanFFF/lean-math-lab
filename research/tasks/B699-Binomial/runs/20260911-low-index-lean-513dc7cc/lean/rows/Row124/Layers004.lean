import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row124Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer004_checked :
    coverLayerCheck row124.height row124.goods { lower := 244032, upper := 488064, M := 7 } = true := by
  decide +kernel

theorem row124_layer005_checked :
    coverLayerCheck row124.height row124.goods { lower := 488064, upper := 976128, M := 5 } = true := by
  decide +kernel

theorem row124_layer006_checked :
    coverLayerCheck row124.height row124.goods { lower := 976128, upper := 1952256, M := 4 } = true := by
  decide +kernel

theorem row124_layer007_checked :
    coverLayerCheck row124.height row124.goods { lower := 1952256, upper := 3904512, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer007_checked
