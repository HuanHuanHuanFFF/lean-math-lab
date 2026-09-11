import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row085Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer012_checked :
    coverLayerCheck row085.height row085.goods { lower := 29245440, upper := 58490880, M := 5 } = true := by
  decide +kernel

theorem row085_layer013_checked :
    coverLayerCheck row085.height row085.goods { lower := 58490880, upper := 116981760, M := 4 } = true := by
  decide +kernel

theorem row085_layer014_checked :
    coverLayerCheck row085.height row085.goods { lower := 116981760, upper := 233963520, M := 4 } = true := by
  decide +kernel

theorem row085_layer015_checked :
    coverLayerCheck row085.height row085.goods { lower := 233963520, upper := 467927040, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer015_checked
