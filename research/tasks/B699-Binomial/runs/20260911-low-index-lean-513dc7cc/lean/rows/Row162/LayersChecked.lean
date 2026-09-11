import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row162.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row162.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row162.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layers_checked :
    row162.layers.all (coverLayerCheck row162.height row162.goods) = true := by
  change row162_layers.all (coverLayerCheck row162.height row162.goods) = true
  simp only [row162_layers, List.all_cons, List.all_nil,
    row162_layer000_checked,
    row162_layer001_checked,
    row162_layer002_checked,
    row162_layer003_checked,
    row162_layer004_checked,
    row162_layer005_checked,
    row162_layer006_checked,
    row162_layer007_checked,
    row162_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layers_checked
