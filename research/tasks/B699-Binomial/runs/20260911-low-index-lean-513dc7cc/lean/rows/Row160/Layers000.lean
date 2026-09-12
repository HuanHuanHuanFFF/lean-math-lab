import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row160.Layer000Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row160.Layer001Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row160Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer002_checked :
    coverLayerCheck row160.height row160.goods { lower := 101760, upper := 203520, M := 8 } = true := by
  decide +kernel

theorem row160_layer003_checked :
    coverLayerCheck row160.height row160.goods { lower := 203520, upper := 407040, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer003_checked
