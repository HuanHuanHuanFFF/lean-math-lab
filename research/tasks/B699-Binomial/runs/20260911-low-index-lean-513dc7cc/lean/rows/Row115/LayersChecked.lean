import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layers_checked :
    row115.layers.all (coverLayerCheck row115.height row115.goods) = true := by
  change row115_layers.all (coverLayerCheck row115.height row115.goods) = true
  simp only [row115_layers, List.all_cons, List.all_nil,
    row115_layer000_checked,
    row115_layer001_checked,
    row115_layer002_checked,
    row115_layer003_checked,
    row115_layer004_checked,
    row115_layer005_checked,
    row115_layer006_checked,
    row115_layer007_checked,
    row115_layer008_checked,
    row115_layer009_checked,
    row115_layer010_checked,
    row115_layer011_checked,
    row115_layer012_checked,
    row115_layer013_checked,
    row115_layer014_checked,
    row115_layer015_checked,
    row115_layer016_checked,
    row115_layer017_checked,
    row115_layer018_checked,
    row115_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layers_checked
