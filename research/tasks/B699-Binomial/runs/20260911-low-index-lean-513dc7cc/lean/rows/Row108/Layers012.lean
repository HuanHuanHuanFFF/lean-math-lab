import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row108Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer012_checked :
    coverLayerCheck row108.height row108.goods { lower := 47333376, upper := 94666752, M := 3 } = true := by
  decide +kernel

theorem row108_layer013_checked :
    coverLayerCheck row108.height row108.goods { lower := 94666752, upper := 189333504, M := 3 } = true := by
  decide +kernel

theorem row108_layer014_checked :
    coverLayerCheck row108.height row108.goods { lower := 189333504, upper := 378667008, M := 2 } = true := by
  decide +kernel

theorem row108_layer015_checked :
    coverLayerCheck row108.height row108.goods { lower := 378667008, upper := 757334016, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer015_checked
