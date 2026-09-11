import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row180Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer004_checked :
    coverLayerCheck row180.height row180.goods { lower := 515520, upper := 1031040, M := 4 } = true := by
  decide +kernel

theorem row180_layer005_checked :
    coverLayerCheck row180.height row180.goods { lower := 1031040, upper := 2062080, M := 3 } = true := by
  decide +kernel

theorem row180_layer006_checked :
    coverLayerCheck row180.height row180.goods { lower := 2062080, upper := 4124160, M := 2 } = true := by
  decide +kernel

theorem row180_layer007_checked :
    coverLayerCheck row180.height row180.goods { lower := 4124160, upper := 8248320, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer007_checked
