import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row161Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer004_checked :
    coverLayerCheck row161.height row161.goods { lower := 412160, upper := 824320, M := 4 } = true := by
  decide +kernel

theorem row161_layer005_checked :
    coverLayerCheck row161.height row161.goods { lower := 824320, upper := 1648640, M := 3 } = true := by
  decide +kernel

theorem row161_layer006_checked :
    coverLayerCheck row161.height row161.goods { lower := 1648640, upper := 3297280, M := 3 } = true := by
  decide +kernel

theorem row161_layer007_checked :
    coverLayerCheck row161.height row161.goods { lower := 3297280, upper := 6594560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer007_checked
