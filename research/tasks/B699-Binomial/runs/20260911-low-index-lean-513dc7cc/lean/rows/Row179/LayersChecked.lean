import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row179.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row179.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row179.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layers_checked :
    row179.layers.all (coverLayerCheck row179.height row179.goods) = true := by
  change row179_layers.all (coverLayerCheck row179.height row179.goods) = true
  simp only [row179_layers, List.all_cons, List.all_nil,
    row179_layer000_checked,
    row179_layer001_checked,
    row179_layer002_checked,
    row179_layer003_checked,
    row179_layer004_checked,
    row179_layer005_checked,
    row179_layer006_checked,
    row179_layer007_checked,
    row179_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layers_checked
