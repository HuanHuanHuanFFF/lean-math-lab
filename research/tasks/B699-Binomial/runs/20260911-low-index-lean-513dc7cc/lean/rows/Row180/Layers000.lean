import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row180.Layer000Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row180.Layer001Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row180Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer002_checked :
    coverLayerCheck row180.height row180.goods { lower := 128880, upper := 257760, M := 7 } = true := by
  decide +kernel

theorem row180_layer003_checked :
    coverLayerCheck row180.height row180.goods { lower := 257760, upper := 515520, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer003_checked
