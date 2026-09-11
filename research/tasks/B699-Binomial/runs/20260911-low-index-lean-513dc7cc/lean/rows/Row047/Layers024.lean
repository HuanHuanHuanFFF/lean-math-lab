import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row047Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer024_checked :
    coverLayerCheck row047.height row047.goods { lower := 36272340992, upper := 72544681984, M := 7 } = true := by
  decide +kernel

theorem row047_layer025_checked :
    coverLayerCheck row047.height row047.goods { lower := 72544681984, upper := 145089363968, M := 6 } = true := by
  decide +kernel

theorem row047_layer026_checked :
    coverLayerCheck row047.height row047.goods { lower := 145089363968, upper := 290178727936, M := 6 } = true := by
  decide +kernel

theorem row047_layer027_checked :
    coverLayerCheck row047.height row047.goods { lower := 290178727936, upper := 580357455872, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer027_checked
