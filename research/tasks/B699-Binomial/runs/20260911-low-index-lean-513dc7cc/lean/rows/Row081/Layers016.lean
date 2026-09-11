import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row081Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer016_checked :
    coverLayerCheck row081.height row081.goods { lower := 424673280, upper := 849346560, M := 3 } = true := by
  decide +kernel

theorem row081_layer017_checked :
    coverLayerCheck row081.height row081.goods { lower := 849346560, upper := 1698693120, M := 3 } = true := by
  decide +kernel

theorem row081_layer018_checked :
    coverLayerCheck row081.height row081.goods { lower := 1698693120, upper := 3397386240, M := 2 } = true := by
  decide +kernel

theorem row081_layer019_checked :
    coverLayerCheck row081.height row081.goods { lower := 3397386240, upper := 6794772480, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer019_checked
