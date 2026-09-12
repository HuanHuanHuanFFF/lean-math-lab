import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row167.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row167.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row167.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layers_checked :
    row167.layers.all (coverLayerCheck row167.height row167.goods) = true := by
  change row167_layers.all (coverLayerCheck row167.height row167.goods) = true
  simp only [row167_layers, List.all_cons, List.all_nil,
    row167_layer000_checked,
    row167_layer001_checked,
    row167_layer002_checked,
    row167_layer003_checked,
    row167_layer004_checked,
    row167_layer005_checked,
    row167_layer006_checked,
    row167_layer007_checked,
    row167_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layers_checked
