import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row056Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer024_checked :
    coverLayerCheck row056.height row056.goods { lower := 51673825280, upper := 103347650560, M := 3 } = true := by
  decide +kernel

theorem row056_layer025_checked :
    coverLayerCheck row056.height row056.goods { lower := 103347650560, upper := 206695301120, M := 3 } = true := by
  decide +kernel

theorem row056_layer026_checked :
    coverLayerCheck row056.height row056.goods { lower := 206695301120, upper := 413390602240, M := 2 } = true := by
  decide +kernel

theorem row056_layer027_checked :
    coverLayerCheck row056.height row056.goods { lower := 413390602240, upper := 826781204480, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer027_checked
