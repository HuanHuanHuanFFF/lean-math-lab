import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row139Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer004_checked :
    coverLayerCheck row139.height row139.goods { lower := 306912, upper := 613824, M := 6 } = true := by
  decide +kernel

theorem row139_layer005_checked :
    coverLayerCheck row139.height row139.goods { lower := 613824, upper := 1227648, M := 4 } = true := by
  decide +kernel

theorem row139_layer006_checked :
    coverLayerCheck row139.height row139.goods { lower := 1227648, upper := 2455296, M := 4 } = true := by
  decide +kernel

theorem row139_layer007_checked :
    coverLayerCheck row139.height row139.goods { lower := 2455296, upper := 4910592, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer007_checked
