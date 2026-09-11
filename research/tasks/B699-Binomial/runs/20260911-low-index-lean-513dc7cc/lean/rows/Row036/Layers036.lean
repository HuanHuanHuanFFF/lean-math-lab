import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer036_checked :
    coverLayerCheck row036.height row036.goods { lower := 86586540687360, upper := 173173081374720, M := 7 } = true := by
  decide +kernel

theorem row036_layer037_checked :
    coverLayerCheck row036.height row036.goods { lower := 173173081374720, upper := 346346162749440, M := 6 } = true := by
  decide +kernel

theorem row036_layer038_checked :
    coverLayerCheck row036.height row036.goods { lower := 346346162749440, upper := 692692325498880, M := 6 } = true := by
  decide +kernel

theorem row036_layer039_checked :
    coverLayerCheck row036.height row036.goods { lower := 692692325498880, upper := 1385384650997760, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer039_checked
