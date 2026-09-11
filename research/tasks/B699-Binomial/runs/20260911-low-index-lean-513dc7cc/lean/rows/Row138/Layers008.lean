import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row138Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer008_checked :
    coverLayerCheck row138.height row138.goods { lower := 4839936, upper := 9679872, M := 2 } = true := by
  decide +kernel

theorem row138_layer009_checked :
    coverLayerCheck row138.height row138.goods { lower := 9679872, upper := 19359744, M := 2 } = true := by
  decide +kernel

theorem row138_layer010_checked :
    coverLayerCheck row138.height row138.goods { lower := 19359744, upper := 38719488, M := 2 } = true := by
  decide +kernel

theorem row138_layer011_checked :
    coverLayerCheck row138.height row138.goods { lower := 38719488, upper := 77438976, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer011_checked
