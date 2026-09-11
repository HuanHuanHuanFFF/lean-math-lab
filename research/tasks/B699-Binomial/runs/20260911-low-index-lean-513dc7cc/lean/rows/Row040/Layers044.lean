import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer044_checked :
    coverLayerCheck row040.height row040.goods { lower := 27443810229288960, upper := 54887620458577920, M := 2 } = true := by
  decide +kernel

theorem row040_layer045_checked :
    coverLayerCheck row040.height row040.goods { lower := 54887620458577920, upper := 109775240917155840, M := 2 } = true := by
  decide +kernel

theorem row040_layer046_checked :
    coverLayerCheck row040.height row040.goods { lower := 109775240917155840, upper := 219550481834311680, M := 2 } = true := by
  decide +kernel

theorem row040_layer047_checked :
    coverLayerCheck row040.height row040.goods { lower := 219550481834311680, upper := 439100963668623360, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer047_checked
