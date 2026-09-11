import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layer017Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layer018Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer016_checked :
    coverLayerCheck row042.height row042.goods { lower := 112852992, upper := 225705984, M := 21 } = true := by
  decide +kernel

theorem row042_layer019_checked :
    coverLayerCheck row042.height row042.goods { lower := 902823936, upper := 1805647872, M := 19 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer019_checked
