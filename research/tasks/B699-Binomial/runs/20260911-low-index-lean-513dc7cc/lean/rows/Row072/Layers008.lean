import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row072Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer008_checked :
    coverLayerCheck row072.height row072.goods { lower := 1308672, upper := 2617344, M := 11 } = true := by
  decide +kernel

theorem row072_layer009_checked :
    coverLayerCheck row072.height row072.goods { lower := 2617344, upper := 5234688, M := 10 } = true := by
  decide +kernel

theorem row072_layer010_checked :
    coverLayerCheck row072.height row072.goods { lower := 5234688, upper := 10469376, M := 9 } = true := by
  decide +kernel

theorem row072_layer011_checked :
    coverLayerCheck row072.height row072.goods { lower := 10469376, upper := 20938752, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer011_checked
