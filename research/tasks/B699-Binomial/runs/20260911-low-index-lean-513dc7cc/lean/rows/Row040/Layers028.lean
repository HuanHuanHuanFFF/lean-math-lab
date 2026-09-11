import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer028_checked :
    coverLayerCheck row040.height row040.goods { lower := 418759311360, upper := 837518622720, M := 6 } = true := by
  decide +kernel

theorem row040_layer029_checked :
    coverLayerCheck row040.height row040.goods { lower := 837518622720, upper := 1675037245440, M := 6 } = true := by
  decide +kernel

theorem row040_layer030_checked :
    coverLayerCheck row040.height row040.goods { lower := 1675037245440, upper := 3350074490880, M := 5 } = true := by
  decide +kernel

theorem row040_layer031_checked :
    coverLayerCheck row040.height row040.goods { lower := 3350074490880, upper := 6700148981760, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer031_checked
