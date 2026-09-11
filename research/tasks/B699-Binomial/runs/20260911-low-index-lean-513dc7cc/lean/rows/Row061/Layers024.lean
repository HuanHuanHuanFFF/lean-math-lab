import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row061Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer024_checked :
    coverLayerCheck row061.height row061.goods { lower := 61404610560, upper := 122809221120, M := 2 } = true := by
  decide +kernel

theorem row061_layer025_checked :
    coverLayerCheck row061.height row061.goods { lower := 122809221120, upper := 245618442240, M := 2 } = true := by
  decide +kernel

theorem row061_layer026_checked :
    coverLayerCheck row061.height row061.goods { lower := 245618442240, upper := 491236884480, M := 1 } = true := by
  decide +kernel

theorem row061_layer027_checked :
    coverLayerCheck row061.height row061.goods { lower := 491236884480, upper := 982473768960, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer027_checked
