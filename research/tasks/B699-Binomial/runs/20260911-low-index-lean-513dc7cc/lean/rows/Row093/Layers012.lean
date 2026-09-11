import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row093Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer012_checked :
    coverLayerCheck row093.height row093.goods { lower := 35045376, upper := 70090752, M := 3 } = true := by
  decide +kernel

theorem row093_layer013_checked :
    coverLayerCheck row093.height row093.goods { lower := 70090752, upper := 140181504, M := 2 } = true := by
  decide +kernel

theorem row093_layer014_checked :
    coverLayerCheck row093.height row093.goods { lower := 140181504, upper := 280363008, M := 2 } = true := by
  decide +kernel

theorem row093_layer015_checked :
    coverLayerCheck row093.height row093.goods { lower := 280363008, upper := 560726016, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer015_checked
