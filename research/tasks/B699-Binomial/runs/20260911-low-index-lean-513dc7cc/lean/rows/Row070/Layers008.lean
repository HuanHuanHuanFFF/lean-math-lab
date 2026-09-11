import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row070Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer008_checked :
    coverLayerCheck row070.height row070.goods { lower := 1236480, upper := 2472960, M := 8 } = true := by
  decide +kernel

theorem row070_layer009_checked :
    coverLayerCheck row070.height row070.goods { lower := 2472960, upper := 4945920, M := 7 } = true := by
  decide +kernel

theorem row070_layer010_checked :
    coverLayerCheck row070.height row070.goods { lower := 4945920, upper := 9891840, M := 6 } = true := by
  decide +kernel

theorem row070_layer011_checked :
    coverLayerCheck row070.height row070.goods { lower := 9891840, upper := 19783680, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer011_checked
