import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row176.Layer000Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row176.Layer001Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row176Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer002_checked :
    coverLayerCheck row176.height row176.goods { lower := 123200, upper := 246400, M := 7 } = true := by
  decide +kernel

theorem row176_layer003_checked :
    coverLayerCheck row176.height row176.goods { lower := 246400, upper := 492800, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer003_checked
