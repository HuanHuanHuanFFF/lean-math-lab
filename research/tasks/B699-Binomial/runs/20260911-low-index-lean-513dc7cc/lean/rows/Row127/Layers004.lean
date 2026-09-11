import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row127Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer004_checked :
    coverLayerCheck row127.height row127.goods { lower := 256032, upper := 512064, M := 5 } = true := by
  decide +kernel

theorem row127_layer005_checked :
    coverLayerCheck row127.height row127.goods { lower := 512064, upper := 1024128, M := 4 } = true := by
  decide +kernel

theorem row127_layer006_checked :
    coverLayerCheck row127.height row127.goods { lower := 1024128, upper := 2048256, M := 3 } = true := by
  decide +kernel

theorem row127_layer007_checked :
    coverLayerCheck row127.height row127.goods { lower := 2048256, upper := 4096512, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer007_checked
