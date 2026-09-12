import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row107Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer012_checked :
    coverLayerCheck row107.height row107.goods { lower := 46456832, upper := 92913664, M := 2 } = true := by
  decide +kernel

theorem row107_layer013_checked :
    coverLayerCheck row107.height row107.goods { lower := 92913664, upper := 185827328, M := 2 } = true := by
  decide +kernel

theorem row107_layer014_checked :
    coverLayerCheck row107.height row107.goods { lower := 185827328, upper := 371654656, M := 1 } = true := by
  decide +kernel

theorem row107_layer015_checked :
    coverLayerCheck row107.height row107.goods { lower := 371654656, upper := 743309312, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer015_checked
