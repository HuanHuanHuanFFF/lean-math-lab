import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row060.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row060.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row060.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row060.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row060.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row060.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row060.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row060.Layers028

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layers_checked :
    row060.layers.all (coverLayerCheck row060.height row060.goods) = true := by
  change row060_layers.all (coverLayerCheck row060.height row060.goods) = true
  simp only [row060_layers, List.all_cons, List.all_nil,
    row060_layer000_checked,
    row060_layer001_checked,
    row060_layer002_checked,
    row060_layer003_checked,
    row060_layer004_checked,
    row060_layer005_checked,
    row060_layer006_checked,
    row060_layer007_checked,
    row060_layer008_checked,
    row060_layer009_checked,
    row060_layer010_checked,
    row060_layer011_checked,
    row060_layer012_checked,
    row060_layer013_checked,
    row060_layer014_checked,
    row060_layer015_checked,
    row060_layer016_checked,
    row060_layer017_checked,
    row060_layer018_checked,
    row060_layer019_checked,
    row060_layer020_checked,
    row060_layer021_checked,
    row060_layer022_checked,
    row060_layer023_checked,
    row060_layer024_checked,
    row060_layer025_checked,
    row060_layer026_checked,
    row060_layer027_checked,
    row060_layer028_checked,
    row060_layer029_checked,
    row060_layer030_checked,
    row060_layer031_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layers_checked
