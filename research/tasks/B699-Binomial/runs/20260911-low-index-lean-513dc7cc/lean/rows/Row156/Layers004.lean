import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row156Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer004_checked :
    coverLayerCheck row156.height row156.goods { lower := 386880, upper := 773760, M := 4 } = true := by
  decide +kernel

theorem row156_layer005_checked :
    coverLayerCheck row156.height row156.goods { lower := 773760, upper := 1547520, M := 3 } = true := by
  decide +kernel

theorem row156_layer006_checked :
    coverLayerCheck row156.height row156.goods { lower := 1547520, upper := 3095040, M := 3 } = true := by
  decide +kernel

theorem row156_layer007_checked :
    coverLayerCheck row156.height row156.goods { lower := 3095040, upper := 6190080, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer007_checked
