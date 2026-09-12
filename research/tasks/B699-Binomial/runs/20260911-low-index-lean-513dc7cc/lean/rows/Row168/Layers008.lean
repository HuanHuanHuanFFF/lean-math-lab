import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row168Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer008_checked :
    coverLayerCheck row168.height row168.goods { lower := 7182336, upper := 14364672, M := 2 } = true := by
  decide +kernel

theorem row168_layer009_checked :
    coverLayerCheck row168.height row168.goods { lower := 14364672, upper := 28729344, M := 1 } = true := by
  decide +kernel

theorem row168_layer010_checked :
    coverLayerCheck row168.height row168.goods { lower := 28729344, upper := 57458688, M := 1 } = true := by
  decide +kernel

theorem row168_layer011_checked :
    coverLayerCheck row168.height row168.goods { lower := 57458688, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer011_checked
