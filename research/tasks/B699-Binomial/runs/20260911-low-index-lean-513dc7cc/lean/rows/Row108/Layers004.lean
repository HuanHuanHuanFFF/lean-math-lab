import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row108Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer004_checked :
    coverLayerCheck row108.height row108.goods { lower := 184896, upper := 369792, M := 12 } = true := by
  decide +kernel

theorem row108_layer005_checked :
    coverLayerCheck row108.height row108.goods { lower := 369792, upper := 739584, M := 10 } = true := by
  decide +kernel

theorem row108_layer006_checked :
    coverLayerCheck row108.height row108.goods { lower := 739584, upper := 1479168, M := 9 } = true := by
  decide +kernel

theorem row108_layer007_checked :
    coverLayerCheck row108.height row108.goods { lower := 1479168, upper := 2958336, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer007_checked
