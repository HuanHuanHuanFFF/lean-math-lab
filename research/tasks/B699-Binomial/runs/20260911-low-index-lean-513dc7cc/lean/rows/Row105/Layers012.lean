import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row105Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer012_checked :
    coverLayerCheck row105.height row105.goods { lower := 44728320, upper := 89456640, M := 3 } = true := by
  decide +kernel

theorem row105_layer013_checked :
    coverLayerCheck row105.height row105.goods { lower := 89456640, upper := 178913280, M := 2 } = true := by
  decide +kernel

theorem row105_layer014_checked :
    coverLayerCheck row105.height row105.goods { lower := 178913280, upper := 357826560, M := 2 } = true := by
  decide +kernel

theorem row105_layer015_checked :
    coverLayerCheck row105.height row105.goods { lower := 357826560, upper := 715653120, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer015_checked
