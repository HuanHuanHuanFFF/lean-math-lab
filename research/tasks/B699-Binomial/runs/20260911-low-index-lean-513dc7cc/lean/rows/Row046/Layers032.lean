import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer032_checked :
    coverLayerCheck row046.height row046.goods { lower := 8890582302720, upper := 17781164605440, M := 7 } = true := by
  decide +kernel

theorem row046_layer033_checked :
    coverLayerCheck row046.height row046.goods { lower := 17781164605440, upper := 35562329210880, M := 7 } = true := by
  decide +kernel

theorem row046_layer034_checked :
    coverLayerCheck row046.height row046.goods { lower := 35562329210880, upper := 71124658421760, M := 7 } = true := by
  decide +kernel

theorem row046_layer035_checked :
    coverLayerCheck row046.height row046.goods { lower := 71124658421760, upper := 142249316843520, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer035_checked
