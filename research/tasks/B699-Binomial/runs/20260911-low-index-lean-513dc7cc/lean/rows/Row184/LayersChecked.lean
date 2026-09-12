import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row184.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row184.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row184.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layers_checked :
    row184.layers.all (coverLayerCheck row184.height row184.goods) = true := by
  change row184_layers.all (coverLayerCheck row184.height row184.goods) = true
  simp only [row184_layers, List.all_cons, List.all_nil,
    row184_layer000_checked,
    row184_layer001_checked,
    row184_layer002_checked,
    row184_layer003_checked,
    row184_layer004_checked,
    row184_layer005_checked,
    row184_layer006_checked,
    row184_layer007_checked,
    row184_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layers_checked
