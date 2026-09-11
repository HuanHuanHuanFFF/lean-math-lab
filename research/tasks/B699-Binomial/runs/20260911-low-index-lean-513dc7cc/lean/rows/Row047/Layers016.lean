import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row047Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer016_checked :
    coverLayerCheck row047.height row047.goods { lower := 141688832, upper := 283377664, M := 11 } = true := by
  decide +kernel

theorem row047_layer017_checked :
    coverLayerCheck row047.height row047.goods { lower := 283377664, upper := 566755328, M := 11 } = true := by
  decide +kernel

theorem row047_layer018_checked :
    coverLayerCheck row047.height row047.goods { lower := 566755328, upper := 1133510656, M := 10 } = true := by
  decide +kernel

theorem row047_layer019_checked :
    coverLayerCheck row047.height row047.goods { lower := 1133510656, upper := 2267021312, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer019_checked
