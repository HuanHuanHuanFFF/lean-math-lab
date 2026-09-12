import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row085Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer020_checked :
    coverLayerCheck row085.height row085.goods { lower := 7486832640, upper := 14973665280, M := 2 } = true := by
  decide +kernel

theorem row085_layer021_checked :
    coverLayerCheck row085.height row085.goods { lower := 14973665280, upper := 29947330560, M := 2 } = true := by
  decide +kernel

theorem row085_layer022_checked :
    coverLayerCheck row085.height row085.goods { lower := 29947330560, upper := 59894661120, M := 1 } = true := by
  decide +kernel

theorem row085_layer023_checked :
    coverLayerCheck row085.height row085.goods { lower := 59894661120, upper := 100000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer023_checked
