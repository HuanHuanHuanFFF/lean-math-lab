import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row056Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layer006Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer004_checked :
    coverLayerCheck row056.height row056.goods { lower := 49280, upper := 98560, M := 21 } = true := by
  decide +kernel

theorem row056_layer005_checked :
    coverLayerCheck row056.height row056.goods { lower := 98560, upper := 197120, M := 19 } = true := by
  decide +kernel

theorem row056_layer007_checked :
    coverLayerCheck row056.height row056.goods { lower := 394240, upper := 788480, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer007_checked
