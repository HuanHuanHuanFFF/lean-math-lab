import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row180.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row180.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row180.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layers_checked :
    row180.layers.all (coverLayerCheck row180.height row180.goods) = true := by
  change row180_layers.all (coverLayerCheck row180.height row180.goods) = true
  simp only [row180_layers, List.all_cons, List.all_nil,
    row180_layer000_checked,
    row180_layer001_checked,
    row180_layer002_checked,
    row180_layer003_checked,
    row180_layer004_checked,
    row180_layer005_checked,
    row180_layer006_checked,
    row180_layer007_checked,
    row180_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layers_checked
