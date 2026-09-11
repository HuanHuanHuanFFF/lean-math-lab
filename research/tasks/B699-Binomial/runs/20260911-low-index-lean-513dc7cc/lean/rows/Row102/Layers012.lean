import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row102Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer012_checked :
    coverLayerCheck row102.height row102.goods { lower := 42196992, upper := 84393984, M := 2 } = true := by
  decide +kernel

theorem row102_layer013_checked :
    coverLayerCheck row102.height row102.goods { lower := 84393984, upper := 168787968, M := 2 } = true := by
  decide +kernel

theorem row102_layer014_checked :
    coverLayerCheck row102.height row102.goods { lower := 168787968, upper := 337575936, M := 2 } = true := by
  decide +kernel

theorem row102_layer015_checked :
    coverLayerCheck row102.height row102.goods { lower := 337575936, upper := 675151872, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer015_checked
