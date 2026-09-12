import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row106Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer008_checked :
    coverLayerCheck row106.height row106.goods { lower := 2849280, upper := 5698560, M := 5 } = true := by
  decide +kernel

theorem row106_layer009_checked :
    coverLayerCheck row106.height row106.goods { lower := 5698560, upper := 11397120, M := 4 } = true := by
  decide +kernel

theorem row106_layer010_checked :
    coverLayerCheck row106.height row106.goods { lower := 11397120, upper := 22794240, M := 3 } = true := by
  decide +kernel

theorem row106_layer011_checked :
    coverLayerCheck row106.height row106.goods { lower := 22794240, upper := 45588480, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer011_checked
