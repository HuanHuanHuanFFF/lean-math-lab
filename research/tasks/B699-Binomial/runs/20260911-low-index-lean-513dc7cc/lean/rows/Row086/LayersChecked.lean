import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layers_checked :
    row086.layers.all (coverLayerCheck row086.height row086.goods) = true := by
  change row086_layers.all (coverLayerCheck row086.height row086.goods) = true
  simp only [row086_layers, List.all_cons, List.all_nil,
    row086_layer000_checked,
    row086_layer001_checked,
    row086_layer002_checked,
    row086_layer003_checked,
    row086_layer004_checked,
    row086_layer005_checked,
    row086_layer006_checked,
    row086_layer007_checked,
    row086_layer008_checked,
    row086_layer009_checked,
    row086_layer010_checked,
    row086_layer011_checked,
    row086_layer012_checked,
    row086_layer013_checked,
    row086_layer014_checked,
    row086_layer015_checked,
    row086_layer016_checked,
    row086_layer017_checked,
    row086_layer018_checked,
    row086_layer019_checked,
    row086_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layers_checked
