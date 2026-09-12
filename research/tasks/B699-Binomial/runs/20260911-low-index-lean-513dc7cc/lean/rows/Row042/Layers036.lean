import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer036_checked :
    coverLayerCheck row042.height row042.goods { lower := 118334938939392, upper := 236669877878784, M := 10 } = true := by
  decide +kernel

theorem row042_layer037_checked :
    coverLayerCheck row042.height row042.goods { lower := 236669877878784, upper := 473339755757568, M := 10 } = true := by
  decide +kernel

theorem row042_layer038_checked :
    coverLayerCheck row042.height row042.goods { lower := 473339755757568, upper := 946679511515136, M := 9 } = true := by
  decide +kernel

theorem row042_layer039_checked :
    coverLayerCheck row042.height row042.goods { lower := 946679511515136, upper := 1893359023030272, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer039_checked
