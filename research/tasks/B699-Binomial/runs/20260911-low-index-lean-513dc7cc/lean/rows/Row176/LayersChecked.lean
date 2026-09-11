import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row176.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row176.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row176.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layers_checked :
    row176.layers.all (coverLayerCheck row176.height row176.goods) = true := by
  change row176_layers.all (coverLayerCheck row176.height row176.goods) = true
  simp only [row176_layers, List.all_cons, List.all_nil,
    row176_layer000_checked,
    row176_layer001_checked,
    row176_layer002_checked,
    row176_layer003_checked,
    row176_layer004_checked,
    row176_layer005_checked,
    row176_layer006_checked,
    row176_layer007_checked,
    row176_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layers_checked
