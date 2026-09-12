import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061.Layers028

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layers_checked :
    row061.layers.all (coverLayerCheck row061.height row061.goods) = true := by
  change row061_layers.all (coverLayerCheck row061.height row061.goods) = true
  simp only [row061_layers, List.all_cons, List.all_nil,
    row061_layer000_checked,
    row061_layer001_checked,
    row061_layer002_checked,
    row061_layer003_checked,
    row061_layer004_checked,
    row061_layer005_checked,
    row061_layer006_checked,
    row061_layer007_checked,
    row061_layer008_checked,
    row061_layer009_checked,
    row061_layer010_checked,
    row061_layer011_checked,
    row061_layer012_checked,
    row061_layer013_checked,
    row061_layer014_checked,
    row061_layer015_checked,
    row061_layer016_checked,
    row061_layer017_checked,
    row061_layer018_checked,
    row061_layer019_checked,
    row061_layer020_checked,
    row061_layer021_checked,
    row061_layer022_checked,
    row061_layer023_checked,
    row061_layer024_checked,
    row061_layer025_checked,
    row061_layer026_checked,
    row061_layer027_checked,
    row061_layer028_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layers_checked
