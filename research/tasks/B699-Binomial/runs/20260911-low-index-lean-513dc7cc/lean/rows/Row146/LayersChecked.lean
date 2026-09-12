import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row146.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row146.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row146.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layers_checked :
    row146.layers.all (coverLayerCheck row146.height row146.goods) = true := by
  change row146_layers.all (coverLayerCheck row146.height row146.goods) = true
  simp only [row146_layers, List.all_cons, List.all_nil,
    row146_layer000_checked,
    row146_layer001_checked,
    row146_layer002_checked,
    row146_layer003_checked,
    row146_layer004_checked,
    row146_layer005_checked,
    row146_layer006_checked,
    row146_layer007_checked,
    row146_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layers_checked
