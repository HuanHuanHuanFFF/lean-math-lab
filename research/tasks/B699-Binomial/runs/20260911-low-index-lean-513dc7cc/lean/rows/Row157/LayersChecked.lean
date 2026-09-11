import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row157.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row157.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row157.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layers_checked :
    row157.layers.all (coverLayerCheck row157.height row157.goods) = true := by
  change row157_layers.all (coverLayerCheck row157.height row157.goods) = true
  simp only [row157_layers, List.all_cons, List.all_nil,
    row157_layer000_checked,
    row157_layer001_checked,
    row157_layer002_checked,
    row157_layer003_checked,
    row157_layer004_checked,
    row157_layer005_checked,
    row157_layer006_checked,
    row157_layer007_checked,
    row157_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layers_checked
