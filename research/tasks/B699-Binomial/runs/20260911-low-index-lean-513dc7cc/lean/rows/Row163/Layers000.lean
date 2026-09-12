import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row163.Layer000Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row163.Layer001Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row163Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer002_checked :
    coverLayerCheck row163.height row163.goods { lower := 105624, upper := 211248, M := 7 } = true := by
  decide +kernel

theorem row163_layer003_checked :
    coverLayerCheck row163.height row163.goods { lower := 211248, upper := 422496, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer003_checked
