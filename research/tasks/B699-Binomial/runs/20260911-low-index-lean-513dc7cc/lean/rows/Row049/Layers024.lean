import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer024_checked :
    coverLayerCheck row049.height row049.goods { lower := 39460012032, upper := 78920024064, M := 13 } = true := by
  decide +kernel

theorem row049_layer025_checked :
    coverLayerCheck row049.height row049.goods { lower := 78920024064, upper := 157840048128, M := 12 } = true := by
  decide +kernel

theorem row049_layer026_checked :
    coverLayerCheck row049.height row049.goods { lower := 157840048128, upper := 315680096256, M := 11 } = true := by
  decide +kernel

theorem row049_layer027_checked :
    coverLayerCheck row049.height row049.goods { lower := 315680096256, upper := 631360192512, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer027_checked
