import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row126.Layer000Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row126.Layer001Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row126Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer002_checked :
    coverLayerCheck row126.height row126.goods { lower := 63000, upper := 126000, M := 9 } = true := by
  decide +kernel

theorem row126_layer003_checked :
    coverLayerCheck row126.height row126.goods { lower := 126000, upper := 252000, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer003_checked
