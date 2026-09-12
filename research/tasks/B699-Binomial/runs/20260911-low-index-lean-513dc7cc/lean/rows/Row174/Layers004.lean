import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row174Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layer004_checked :
    coverLayerCheck row174.height row174.goods { lower := 481632, upper := 963264, M := 5 } = true := by
  decide +kernel

theorem row174_layer005_checked :
    coverLayerCheck row174.height row174.goods { lower := 963264, upper := 1926528, M := 3 } = true := by
  decide +kernel

theorem row174_layer006_checked :
    coverLayerCheck row174.height row174.goods { lower := 1926528, upper := 3853056, M := 3 } = true := by
  decide +kernel

theorem row174_layer007_checked :
    coverLayerCheck row174.height row174.goods { lower := 3853056, upper := 7706112, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layer007_checked
