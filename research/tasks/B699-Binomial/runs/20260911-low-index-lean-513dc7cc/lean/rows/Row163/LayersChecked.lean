import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row163.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row163.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row163.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layers_checked :
    row163.layers.all (coverLayerCheck row163.height row163.goods) = true := by
  change row163_layers.all (coverLayerCheck row163.height row163.goods) = true
  simp only [row163_layers, List.all_cons, List.all_nil,
    row163_layer000_checked,
    row163_layer001_checked,
    row163_layer002_checked,
    row163_layer003_checked,
    row163_layer004_checked,
    row163_layer005_checked,
    row163_layer006_checked,
    row163_layer007_checked,
    row163_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layers_checked
