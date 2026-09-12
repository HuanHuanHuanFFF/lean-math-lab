import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row084Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer008_checked :
    coverLayerCheck row084.height row084.goods { lower := 1784832, upper := 3569664, M := 10 } = true := by
  decide +kernel

theorem row084_layer009_checked :
    coverLayerCheck row084.height row084.goods { lower := 3569664, upper := 7139328, M := 9 } = true := by
  decide +kernel

theorem row084_layer010_checked :
    coverLayerCheck row084.height row084.goods { lower := 7139328, upper := 14278656, M := 8 } = true := by
  decide +kernel

theorem row084_layer011_checked :
    coverLayerCheck row084.height row084.goods { lower := 14278656, upper := 28557312, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer011_checked
