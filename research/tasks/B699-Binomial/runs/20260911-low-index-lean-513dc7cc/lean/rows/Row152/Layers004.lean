import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row152Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer004_checked :
    coverLayerCheck row152.height row152.goods { lower := 367232, upper := 734464, M := 6 } = true := by
  decide +kernel

theorem row152_layer005_checked :
    coverLayerCheck row152.height row152.goods { lower := 734464, upper := 1468928, M := 5 } = true := by
  decide +kernel

theorem row152_layer006_checked :
    coverLayerCheck row152.height row152.goods { lower := 1468928, upper := 2937856, M := 4 } = true := by
  decide +kernel

theorem row152_layer007_checked :
    coverLayerCheck row152.height row152.goods { lower := 2937856, upper := 5875712, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer007_checked
