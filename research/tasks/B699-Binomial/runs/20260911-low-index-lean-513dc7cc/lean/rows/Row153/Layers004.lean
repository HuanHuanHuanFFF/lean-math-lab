import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row153Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layer004_checked :
    coverLayerCheck row153.height row153.goods { lower := 372096, upper := 744192, M := 5 } = true := by
  decide +kernel

theorem row153_layer005_checked :
    coverLayerCheck row153.height row153.goods { lower := 744192, upper := 1488384, M := 4 } = true := by
  decide +kernel

theorem row153_layer006_checked :
    coverLayerCheck row153.height row153.goods { lower := 1488384, upper := 2976768, M := 3 } = true := by
  decide +kernel

theorem row153_layer007_checked :
    coverLayerCheck row153.height row153.goods { lower := 2976768, upper := 5953536, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layer007_checked
