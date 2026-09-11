import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083.Layer004Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row083Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer005_checked :
    coverLayerCheck row083.height row083.goods { lower := 217792, upper := 435584, M := 11 } = true := by
  decide +kernel

theorem row083_layer006_checked :
    coverLayerCheck row083.height row083.goods { lower := 435584, upper := 871168, M := 9 } = true := by
  decide +kernel

theorem row083_layer007_checked :
    coverLayerCheck row083.height row083.goods { lower := 871168, upper := 1742336, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer007_checked
