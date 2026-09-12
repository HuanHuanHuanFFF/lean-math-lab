import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row089Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer008_checked :
    coverLayerCheck row089.height row089.goods { lower := 2004992, upper := 4009984, M := 5 } = true := by
  decide +kernel

theorem row089_layer009_checked :
    coverLayerCheck row089.height row089.goods { lower := 4009984, upper := 8019968, M := 4 } = true := by
  decide +kernel

theorem row089_layer010_checked :
    coverLayerCheck row089.height row089.goods { lower := 8019968, upper := 16039936, M := 4 } = true := by
  decide +kernel

theorem row089_layer011_checked :
    coverLayerCheck row089.height row089.goods { lower := 16039936, upper := 32079872, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer011_checked
