import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row075Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer020_checked :
    coverLayerCheck row075.height row075.goods { lower := 5819596800, upper := 11639193600, M := 3 } = true := by
  decide +kernel

theorem row075_layer021_checked :
    coverLayerCheck row075.height row075.goods { lower := 11639193600, upper := 23278387200, M := 3 } = true := by
  decide +kernel

theorem row075_layer022_checked :
    coverLayerCheck row075.height row075.goods { lower := 23278387200, upper := 46556774400, M := 3 } = true := by
  decide +kernel

theorem row075_layer023_checked :
    coverLayerCheck row075.height row075.goods { lower := 46556774400, upper := 93113548800, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer023_checked
