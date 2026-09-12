import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row137.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row137.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row137.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layers_checked :
    row137.layers.all (coverLayerCheck row137.height row137.goods) = true := by
  change row137_layers.all (coverLayerCheck row137.height row137.goods) = true
  simp only [row137_layers, List.all_cons, List.all_nil,
    row137_layer000_checked,
    row137_layer001_checked,
    row137_layer002_checked,
    row137_layer003_checked,
    row137_layer004_checked,
    row137_layer005_checked,
    row137_layer006_checked,
    row137_layer007_checked,
    row137_layer008_checked,
    row137_layer009_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layers_checked
