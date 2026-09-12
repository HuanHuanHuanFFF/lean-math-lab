import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row081Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer020_checked :
    coverLayerCheck row081.height row081.goods { lower := 6794772480, upper := 13589544960, M := 2 } = true := by
  decide +kernel

theorem row081_layer021_checked :
    coverLayerCheck row081.height row081.goods { lower := 13589544960, upper := 27179089920, M := 2 } = true := by
  decide +kernel

theorem row081_layer022_checked :
    coverLayerCheck row081.height row081.goods { lower := 27179089920, upper := 54358179840, M := 2 } = true := by
  decide +kernel

theorem row081_layer023_checked :
    coverLayerCheck row081.height row081.goods { lower := 54358179840, upper := 100000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer023_checked
