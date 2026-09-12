import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row093Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer008_checked :
    coverLayerCheck row093.height row093.goods { lower := 2190336, upper := 4380672, M := 5 } = true := by
  decide +kernel

theorem row093_layer009_checked :
    coverLayerCheck row093.height row093.goods { lower := 4380672, upper := 8761344, M := 4 } = true := by
  decide +kernel

theorem row093_layer010_checked :
    coverLayerCheck row093.height row093.goods { lower := 8761344, upper := 17522688, M := 4 } = true := by
  decide +kernel

theorem row093_layer011_checked :
    coverLayerCheck row093.height row093.goods { lower := 17522688, upper := 35045376, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer011_checked
