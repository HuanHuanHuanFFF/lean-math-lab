import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer072_checked :
    coverLayerCheck row049.height row049.goods { lower := 11107005967709405542612992, upper := 22214011935418811085225984, M := 2 } = true := by
  decide +kernel

theorem row049_layer073_checked :
    coverLayerCheck row049.height row049.goods { lower := 22214011935418811085225984, upper := 44428023870837622170451968, M := 2 } = true := by
  decide +kernel

theorem row049_layer074_checked :
    coverLayerCheck row049.height row049.goods { lower := 44428023870837622170451968, upper := 88856047741675244340903936, M := 2 } = true := by
  decide +kernel

theorem row049_layer075_checked :
    coverLayerCheck row049.height row049.goods { lower := 88856047741675244340903936, upper := 100000000000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer075_checked
