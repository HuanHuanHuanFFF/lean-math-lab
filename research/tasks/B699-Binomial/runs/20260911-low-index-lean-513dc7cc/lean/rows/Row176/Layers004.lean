import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row176Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer004_checked :
    coverLayerCheck row176.height row176.goods { lower := 492800, upper := 985600, M := 4 } = true := by
  decide +kernel

theorem row176_layer005_checked :
    coverLayerCheck row176.height row176.goods { lower := 985600, upper := 1971200, M := 3 } = true := by
  decide +kernel

theorem row176_layer006_checked :
    coverLayerCheck row176.height row176.goods { lower := 1971200, upper := 3942400, M := 2 } = true := by
  decide +kernel

theorem row176_layer007_checked :
    coverLayerCheck row176.height row176.goods { lower := 3942400, upper := 7884800, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer007_checked
