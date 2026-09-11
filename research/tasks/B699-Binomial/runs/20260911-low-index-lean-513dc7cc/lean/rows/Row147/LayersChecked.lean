import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row147.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row147.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row147.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layers_checked :
    row147.layers.all (coverLayerCheck row147.height row147.goods) = true := by
  change row147_layers.all (coverLayerCheck row147.height row147.goods) = true
  simp only [row147_layers, List.all_cons, List.all_nil,
    row147_layer000_checked,
    row147_layer001_checked,
    row147_layer002_checked,
    row147_layer003_checked,
    row147_layer004_checked,
    row147_layer005_checked,
    row147_layer006_checked,
    row147_layer007_checked,
    row147_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layers_checked
