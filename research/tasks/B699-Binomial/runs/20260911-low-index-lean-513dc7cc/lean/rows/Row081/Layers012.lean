import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row081Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer012_checked :
    coverLayerCheck row081.height row081.goods { lower := 26542080, upper := 53084160, M := 5 } = true := by
  decide +kernel

theorem row081_layer013_checked :
    coverLayerCheck row081.height row081.goods { lower := 53084160, upper := 106168320, M := 4 } = true := by
  decide +kernel

theorem row081_layer014_checked :
    coverLayerCheck row081.height row081.goods { lower := 106168320, upper := 212336640, M := 4 } = true := by
  decide +kernel

theorem row081_layer015_checked :
    coverLayerCheck row081.height row081.goods { lower := 212336640, upper := 424673280, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer015_checked
