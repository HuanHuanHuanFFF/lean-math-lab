import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row104Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer012_checked :
    coverLayerCheck row104.height row104.goods { lower := 43876352, upper := 87752704, M := 3 } = true := by
  decide +kernel

theorem row104_layer013_checked :
    coverLayerCheck row104.height row104.goods { lower := 87752704, upper := 175505408, M := 3 } = true := by
  decide +kernel

theorem row104_layer014_checked :
    coverLayerCheck row104.height row104.goods { lower := 175505408, upper := 351010816, M := 2 } = true := by
  decide +kernel

theorem row104_layer015_checked :
    coverLayerCheck row104.height row104.goods { lower := 351010816, upper := 702021632, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer015_checked
