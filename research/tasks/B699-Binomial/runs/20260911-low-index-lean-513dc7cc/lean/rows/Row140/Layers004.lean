import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row140Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer004_checked :
    coverLayerCheck row140.height row140.goods { lower := 311360, upper := 622720, M := 7 } = true := by
  decide +kernel

theorem row140_layer005_checked :
    coverLayerCheck row140.height row140.goods { lower := 622720, upper := 1245440, M := 6 } = true := by
  decide +kernel

theorem row140_layer006_checked :
    coverLayerCheck row140.height row140.goods { lower := 1245440, upper := 2490880, M := 5 } = true := by
  decide +kernel

theorem row140_layer007_checked :
    coverLayerCheck row140.height row140.goods { lower := 2490880, upper := 4981760, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer007_checked
