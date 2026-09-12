import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layers028

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layers_checked :
    row057.layers.all (coverLayerCheck row057.height row057.goods) = true := by
  change row057_layers.all (coverLayerCheck row057.height row057.goods) = true
  simp only [row057_layers, List.all_cons, List.all_nil,
    row057_layer000_checked,
    row057_layer001_checked,
    row057_layer002_checked,
    row057_layer003_checked,
    row057_layer004_checked,
    row057_layer005_checked,
    row057_layer006_checked,
    row057_layer007_checked,
    row057_layer008_checked,
    row057_layer009_checked,
    row057_layer010_checked,
    row057_layer011_checked,
    row057_layer012_checked,
    row057_layer013_checked,
    row057_layer014_checked,
    row057_layer015_checked,
    row057_layer016_checked,
    row057_layer017_checked,
    row057_layer018_checked,
    row057_layer019_checked,
    row057_layer020_checked,
    row057_layer021_checked,
    row057_layer022_checked,
    row057_layer023_checked,
    row057_layer024_checked,
    row057_layer025_checked,
    row057_layer026_checked,
    row057_layer027_checked,
    row057_layer028_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layers_checked
