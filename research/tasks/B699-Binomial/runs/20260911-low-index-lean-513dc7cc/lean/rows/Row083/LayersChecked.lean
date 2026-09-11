import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layers_checked :
    row083.layers.all (coverLayerCheck row083.height row083.goods) = true := by
  change row083_layers.all (coverLayerCheck row083.height row083.goods) = true
  simp only [row083_layers, List.all_cons, List.all_nil,
    row083_layer000_checked,
    row083_layer001_checked,
    row083_layer002_checked,
    row083_layer003_checked,
    row083_layer004_checked,
    row083_layer005_checked,
    row083_layer006_checked,
    row083_layer007_checked,
    row083_layer008_checked,
    row083_layer009_checked,
    row083_layer010_checked,
    row083_layer011_checked,
    row083_layer012_checked,
    row083_layer013_checked,
    row083_layer014_checked,
    row083_layer015_checked,
    row083_layer016_checked,
    row083_layer017_checked,
    row083_layer018_checked,
    row083_layer019_checked,
    row083_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layers_checked
