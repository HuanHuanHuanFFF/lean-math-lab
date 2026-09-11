import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row069Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer012_checked :
    coverLayerCheck row069.height row069.goods { lower := 19218432, upper := 38436864, M := 6 } = true := by
  decide +kernel

theorem row069_layer013_checked :
    coverLayerCheck row069.height row069.goods { lower := 38436864, upper := 76873728, M := 5 } = true := by
  decide +kernel

theorem row069_layer014_checked :
    coverLayerCheck row069.height row069.goods { lower := 76873728, upper := 153747456, M := 5 } = true := by
  decide +kernel

theorem row069_layer015_checked :
    coverLayerCheck row069.height row069.goods { lower := 153747456, upper := 307494912, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer015_checked
