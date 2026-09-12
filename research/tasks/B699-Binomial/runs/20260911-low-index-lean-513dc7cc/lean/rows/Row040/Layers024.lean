import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer024_checked :
    coverLayerCheck row040.height row040.goods { lower := 26172456960, upper := 52344913920, M := 8 } = true := by
  decide +kernel

theorem row040_layer025_checked :
    coverLayerCheck row040.height row040.goods { lower := 52344913920, upper := 104689827840, M := 7 } = true := by
  decide +kernel

theorem row040_layer026_checked :
    coverLayerCheck row040.height row040.goods { lower := 104689827840, upper := 209379655680, M := 7 } = true := by
  decide +kernel

theorem row040_layer027_checked :
    coverLayerCheck row040.height row040.goods { lower := 209379655680, upper := 418759311360, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer027_checked
