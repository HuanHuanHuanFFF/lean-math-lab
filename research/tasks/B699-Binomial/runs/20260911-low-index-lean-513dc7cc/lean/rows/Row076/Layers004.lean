import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row076Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layer005Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layer007Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer004_checked :
    coverLayerCheck row076.height row076.goods { lower := 91200, upper := 182400, M := 18 } = true := by
  decide +kernel

theorem row076_layer006_checked :
    coverLayerCheck row076.height row076.goods { lower := 364800, upper := 729600, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_checked
