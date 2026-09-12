import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row133Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer008_checked :
    coverLayerCheck row133.height row133.goods { lower := 4494336, upper := 8988672, M := 3 } = true := by
  decide +kernel

theorem row133_layer009_checked :
    coverLayerCheck row133.height row133.goods { lower := 8988672, upper := 17977344, M := 2 } = true := by
  decide +kernel

theorem row133_layer010_checked :
    coverLayerCheck row133.height row133.goods { lower := 17977344, upper := 35954688, M := 2 } = true := by
  decide +kernel

theorem row133_layer011_checked :
    coverLayerCheck row133.height row133.goods { lower := 35954688, upper := 71909376, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer011_checked
