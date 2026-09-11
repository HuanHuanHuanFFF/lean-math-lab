import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layers028

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layers_checked :
    row056.layers.all (coverLayerCheck row056.height row056.goods) = true := by
  change row056_layers.all (coverLayerCheck row056.height row056.goods) = true
  simp only [row056_layers, List.all_cons, List.all_nil,
    row056_layer000_checked,
    row056_layer001_checked,
    row056_layer002_checked,
    row056_layer003_checked,
    row056_layer004_checked,
    row056_layer005_checked,
    row056_layer006_checked,
    row056_layer007_checked,
    row056_layer008_checked,
    row056_layer009_checked,
    row056_layer010_checked,
    row056_layer011_checked,
    row056_layer012_checked,
    row056_layer013_checked,
    row056_layer014_checked,
    row056_layer015_checked,
    row056_layer016_checked,
    row056_layer017_checked,
    row056_layer018_checked,
    row056_layer019_checked,
    row056_layer020_checked,
    row056_layer021_checked,
    row056_layer022_checked,
    row056_layer023_checked,
    row056_layer024_checked,
    row056_layer025_checked,
    row056_layer026_checked,
    row056_layer027_checked,
    row056_layer028_checked,
    row056_layer029_checked,
    row056_layer030_checked,
    row056_layer031_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layers_checked
