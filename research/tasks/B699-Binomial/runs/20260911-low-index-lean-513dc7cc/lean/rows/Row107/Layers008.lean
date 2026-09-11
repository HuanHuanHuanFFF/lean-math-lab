import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row107Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer008_checked :
    coverLayerCheck row107.height row107.goods { lower := 2903552, upper := 5807104, M := 4 } = true := by
  decide +kernel

theorem row107_layer009_checked :
    coverLayerCheck row107.height row107.goods { lower := 5807104, upper := 11614208, M := 3 } = true := by
  decide +kernel

theorem row107_layer010_checked :
    coverLayerCheck row107.height row107.goods { lower := 11614208, upper := 23228416, M := 3 } = true := by
  decide +kernel

theorem row107_layer011_checked :
    coverLayerCheck row107.height row107.goods { lower := 23228416, upper := 46456832, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer011_checked
