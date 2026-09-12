import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row165.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row165.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row165.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layers_checked :
    row165.layers.all (coverLayerCheck row165.height row165.goods) = true := by
  change row165_layers.all (coverLayerCheck row165.height row165.goods) = true
  simp only [row165_layers, List.all_cons, List.all_nil,
    row165_layer000_checked,
    row165_layer001_checked,
    row165_layer002_checked,
    row165_layer003_checked,
    row165_layer004_checked,
    row165_layer005_checked,
    row165_layer006_checked,
    row165_layer007_checked,
    row165_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layers_checked
