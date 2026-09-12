import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row137Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer008_checked :
    coverLayerCheck row137.height row137.goods { lower := 4769792, upper := 9539584, M := 2 } = true := by
  decide +kernel

theorem row137_layer009_checked :
    coverLayerCheck row137.height row137.goods { lower := 9539584, upper := 10000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer009_checked
