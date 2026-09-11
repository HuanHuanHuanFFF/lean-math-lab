import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row118Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer012_checked :
    coverLayerCheck row118.height row118.goods { lower := 56549376, upper := 113098752, M := 2 } = true := by
  decide +kernel

theorem row118_layer013_checked :
    coverLayerCheck row118.height row118.goods { lower := 113098752, upper := 226197504, M := 2 } = true := by
  decide +kernel

theorem row118_layer014_checked :
    coverLayerCheck row118.height row118.goods { lower := 226197504, upper := 452395008, M := 2 } = true := by
  decide +kernel

theorem row118_layer015_checked :
    coverLayerCheck row118.height row118.goods { lower := 452395008, upper := 904790016, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer015_checked
