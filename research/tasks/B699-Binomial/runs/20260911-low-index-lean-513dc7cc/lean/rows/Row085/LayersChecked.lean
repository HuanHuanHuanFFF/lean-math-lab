import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layers_checked :
    row085.layers.all (coverLayerCheck row085.height row085.goods) = true := by
  change row085_layers.all (coverLayerCheck row085.height row085.goods) = true
  simp only [row085_layers, List.all_cons, List.all_nil,
    row085_layer000_checked,
    row085_layer001_checked,
    row085_layer002_checked,
    row085_layer003_checked,
    row085_layer004_checked,
    row085_layer005_checked,
    row085_layer006_checked,
    row085_layer007_checked,
    row085_layer008_checked,
    row085_layer009_checked,
    row085_layer010_checked,
    row085_layer011_checked,
    row085_layer012_checked,
    row085_layer013_checked,
    row085_layer014_checked,
    row085_layer015_checked,
    row085_layer016_checked,
    row085_layer017_checked,
    row085_layer018_checked,
    row085_layer019_checked,
    row085_layer020_checked,
    row085_layer021_checked,
    row085_layer022_checked,
    row085_layer023_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layers_checked
