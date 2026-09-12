import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row149Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer004_checked :
    coverLayerCheck row149.height row149.goods { lower := 352832, upper := 705664, M := 4 } = true := by
  decide +kernel

theorem row149_layer005_checked :
    coverLayerCheck row149.height row149.goods { lower := 705664, upper := 1411328, M := 3 } = true := by
  decide +kernel

theorem row149_layer006_checked :
    coverLayerCheck row149.height row149.goods { lower := 1411328, upper := 2822656, M := 2 } = true := by
  decide +kernel

theorem row149_layer007_checked :
    coverLayerCheck row149.height row149.goods { lower := 2822656, upper := 5645312, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer007_checked
