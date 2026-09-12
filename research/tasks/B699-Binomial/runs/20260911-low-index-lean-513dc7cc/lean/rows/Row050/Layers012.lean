import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer012Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer013Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer014_checked :
    coverLayerCheck row050.height row050.goods { lower := 40140800, upper := 80281600, M := 15 } = true := by
  decide +kernel

theorem row050_layer015_checked :
    coverLayerCheck row050.height row050.goods { lower := 80281600, upper := 160563200, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer015_checked
