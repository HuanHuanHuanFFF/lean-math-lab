import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row148Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer004_checked :
    coverLayerCheck row148.height row148.goods { lower := 348096, upper := 696192, M := 4 } = true := by
  decide +kernel

theorem row148_layer005_checked :
    coverLayerCheck row148.height row148.goods { lower := 696192, upper := 1392384, M := 3 } = true := by
  decide +kernel

theorem row148_layer006_checked :
    coverLayerCheck row148.height row148.goods { lower := 1392384, upper := 2784768, M := 2 } = true := by
  decide +kernel

theorem row148_layer007_checked :
    coverLayerCheck row148.height row148.goods { lower := 2784768, upper := 5569536, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer007_checked
