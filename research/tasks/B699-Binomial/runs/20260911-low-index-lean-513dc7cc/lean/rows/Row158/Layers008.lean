import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row158Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer008_checked :
    coverLayerCheck row158.height row158.goods { lower := 6350336, upper := 12700672, M := 2 } = true := by
  decide +kernel

theorem row158_layer009_checked :
    coverLayerCheck row158.height row158.goods { lower := 12700672, upper := 25401344, M := 2 } = true := by
  decide +kernel

theorem row158_layer010_checked :
    coverLayerCheck row158.height row158.goods { lower := 25401344, upper := 50802688, M := 1 } = true := by
  decide +kernel

theorem row158_layer011_checked :
    coverLayerCheck row158.height row158.goods { lower := 50802688, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer011_checked
