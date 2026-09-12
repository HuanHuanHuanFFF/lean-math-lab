import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row172.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row172.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row172.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layers_checked :
    row172.layers.all (coverLayerCheck row172.height row172.goods) = true := by
  change row172_layers.all (coverLayerCheck row172.height row172.goods) = true
  simp only [row172_layers, List.all_cons, List.all_nil,
    row172_layer000_checked,
    row172_layer001_checked,
    row172_layer002_checked,
    row172_layer003_checked,
    row172_layer004_checked,
    row172_layer005_checked,
    row172_layer006_checked,
    row172_layer007_checked,
    row172_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layers_checked
