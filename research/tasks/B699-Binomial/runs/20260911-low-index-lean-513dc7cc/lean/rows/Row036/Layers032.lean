import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer032_checked :
    coverLayerCheck row036.height row036.goods { lower := 5411658792960, upper := 10823317585920, M := 8 } = true := by
  decide +kernel

theorem row036_layer033_checked :
    coverLayerCheck row036.height row036.goods { lower := 10823317585920, upper := 21646635171840, M := 8 } = true := by
  decide +kernel

theorem row036_layer034_checked :
    coverLayerCheck row036.height row036.goods { lower := 21646635171840, upper := 43293270343680, M := 7 } = true := by
  decide +kernel

theorem row036_layer035_checked :
    coverLayerCheck row036.height row036.goods { lower := 43293270343680, upper := 86586540687360, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer035_checked
