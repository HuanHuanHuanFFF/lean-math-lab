import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row107Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer004_checked :
    coverLayerCheck row107.height row107.goods { lower := 181472, upper := 362944, M := 9 } = true := by
  decide +kernel

theorem row107_layer005_checked :
    coverLayerCheck row107.height row107.goods { lower := 362944, upper := 725888, M := 8 } = true := by
  decide +kernel

theorem row107_layer006_checked :
    coverLayerCheck row107.height row107.goods { lower := 725888, upper := 1451776, M := 6 } = true := by
  decide +kernel

theorem row107_layer007_checked :
    coverLayerCheck row107.height row107.goods { lower := 1451776, upper := 2903552, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer007_checked
