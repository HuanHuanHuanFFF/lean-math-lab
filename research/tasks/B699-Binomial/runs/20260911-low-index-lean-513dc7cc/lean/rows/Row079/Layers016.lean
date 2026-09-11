import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row079Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer016_checked :
    coverLayerCheck row079.height row079.goods { lower := 403832832, upper := 807665664, M := 2 } = true := by
  decide +kernel

theorem row079_layer017_checked :
    coverLayerCheck row079.height row079.goods { lower := 807665664, upper := 1615331328, M := 2 } = true := by
  decide +kernel

theorem row079_layer018_checked :
    coverLayerCheck row079.height row079.goods { lower := 1615331328, upper := 3230662656, M := 2 } = true := by
  decide +kernel

theorem row079_layer019_checked :
    coverLayerCheck row079.height row079.goods { lower := 3230662656, upper := 6461325312, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer019_checked
