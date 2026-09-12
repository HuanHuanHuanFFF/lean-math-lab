import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row080Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row080.Layer005Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row080.Layer007Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer004_checked :
    coverLayerCheck row080.height row080.goods { lower := 101120, upper := 202240, M := 18 } = true := by
  decide +kernel

theorem row080_layer006_checked :
    coverLayerCheck row080.height row080.goods { lower := 404480, upper := 808960, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_checked
