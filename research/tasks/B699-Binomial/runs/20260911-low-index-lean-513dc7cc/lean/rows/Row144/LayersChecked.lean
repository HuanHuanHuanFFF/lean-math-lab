import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row144.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row144.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row144.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row144.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layers_checked :
    row144.layers.all (coverLayerCheck row144.height row144.goods) = true := by
  change row144_layers.all (coverLayerCheck row144.height row144.goods) = true
  simp only [row144_layers, List.all_cons, List.all_nil,
    row144_layer000_checked,
    row144_layer001_checked,
    row144_layer002_checked,
    row144_layer003_checked,
    row144_layer004_checked,
    row144_layer005_checked,
    row144_layer006_checked,
    row144_layer007_checked,
    row144_layer008_checked,
    row144_layer009_checked,
    row144_layer010_checked,
    row144_layer011_checked,
    row144_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layers_checked
