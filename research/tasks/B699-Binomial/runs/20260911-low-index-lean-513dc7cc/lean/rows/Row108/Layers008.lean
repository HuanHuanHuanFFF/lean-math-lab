import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row108Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer008_checked :
    coverLayerCheck row108.height row108.goods { lower := 2958336, upper := 5916672, M := 6 } = true := by
  decide +kernel

theorem row108_layer009_checked :
    coverLayerCheck row108.height row108.goods { lower := 5916672, upper := 11833344, M := 5 } = true := by
  decide +kernel

theorem row108_layer010_checked :
    coverLayerCheck row108.height row108.goods { lower := 11833344, upper := 23666688, M := 4 } = true := by
  decide +kernel

theorem row108_layer011_checked :
    coverLayerCheck row108.height row108.goods { lower := 23666688, upper := 47333376, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer011_checked
