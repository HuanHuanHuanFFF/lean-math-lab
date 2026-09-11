import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer032_checked :
    coverLayerCheck row049.height row049.goods { lower := 10101763080192, upper := 20203526160384, M := 9 } = true := by
  decide +kernel

theorem row049_layer033_checked :
    coverLayerCheck row049.height row049.goods { lower := 20203526160384, upper := 40407052320768, M := 8 } = true := by
  decide +kernel

theorem row049_layer034_checked :
    coverLayerCheck row049.height row049.goods { lower := 40407052320768, upper := 80814104641536, M := 8 } = true := by
  decide +kernel

theorem row049_layer035_checked :
    coverLayerCheck row049.height row049.goods { lower := 80814104641536, upper := 161628209283072, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer035_checked
