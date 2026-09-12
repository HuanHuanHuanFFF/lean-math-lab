import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row178.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row178.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row178.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layers_checked :
    row178.layers.all (coverLayerCheck row178.height row178.goods) = true := by
  change row178_layers.all (coverLayerCheck row178.height row178.goods) = true
  simp only [row178_layers, List.all_cons, List.all_nil,
    row178_layer000_checked,
    row178_layer001_checked,
    row178_layer002_checked,
    row178_layer003_checked,
    row178_layer004_checked,
    row178_layer005_checked,
    row178_layer006_checked,
    row178_layer007_checked,
    row178_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layers_checked
