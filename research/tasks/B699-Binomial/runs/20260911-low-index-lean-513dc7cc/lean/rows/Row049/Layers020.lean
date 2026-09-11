import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer020_checked :
    coverLayerCheck row049.height row049.goods { lower := 2466250752, upper := 4932501504, M := 15 } = true := by
  decide +kernel

theorem row049_layer021_checked :
    coverLayerCheck row049.height row049.goods { lower := 4932501504, upper := 9865003008, M := 15 } = true := by
  decide +kernel

theorem row049_layer022_checked :
    coverLayerCheck row049.height row049.goods { lower := 9865003008, upper := 19730006016, M := 14 } = true := by
  decide +kernel

theorem row049_layer023_checked :
    coverLayerCheck row049.height row049.goods { lower := 19730006016, upper := 39460012032, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer023_checked
