import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layers028

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layers_checked :
    row053.layers.all (coverLayerCheck row053.height row053.goods) = true := by
  change row053_layers.all (coverLayerCheck row053.height row053.goods) = true
  simp only [row053_layers, List.all_cons, List.all_nil,
    row053_layer000_checked,
    row053_layer001_checked,
    row053_layer002_checked,
    row053_layer003_checked,
    row053_layer004_checked,
    row053_layer005_checked,
    row053_layer006_checked,
    row053_layer007_checked,
    row053_layer008_checked,
    row053_layer009_checked,
    row053_layer010_checked,
    row053_layer011_checked,
    row053_layer012_checked,
    row053_layer013_checked,
    row053_layer014_checked,
    row053_layer015_checked,
    row053_layer016_checked,
    row053_layer017_checked,
    row053_layer018_checked,
    row053_layer019_checked,
    row053_layer020_checked,
    row053_layer021_checked,
    row053_layer022_checked,
    row053_layer023_checked,
    row053_layer024_checked,
    row053_layer025_checked,
    row053_layer026_checked,
    row053_layer027_checked,
    row053_layer028_checked,
    row053_layer029_checked,
    row053_layer030_checked,
    row053_layer031_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layers_checked
