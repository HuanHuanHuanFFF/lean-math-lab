import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075.Layers028

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layers_checked :
    row075.layers.all (coverLayerCheck row075.height row075.goods) = true := by
  change row075_layers.all (coverLayerCheck row075.height row075.goods) = true
  simp only [row075_layers, List.all_cons, List.all_nil,
    row075_layer000_checked,
    row075_layer001_checked,
    row075_layer002_checked,
    row075_layer003_checked,
    row075_layer004_checked,
    row075_layer005_checked,
    row075_layer006_checked,
    row075_layer007_checked,
    row075_layer008_checked,
    row075_layer009_checked,
    row075_layer010_checked,
    row075_layer011_checked,
    row075_layer012_checked,
    row075_layer013_checked,
    row075_layer014_checked,
    row075_layer015_checked,
    row075_layer016_checked,
    row075_layer017_checked,
    row075_layer018_checked,
    row075_layer019_checked,
    row075_layer020_checked,
    row075_layer021_checked,
    row075_layer022_checked,
    row075_layer023_checked,
    row075_layer024_checked,
    row075_layer025_checked,
    row075_layer026_checked,
    row075_layer027_checked,
    row075_layer028_checked,
    row075_layer029_checked,
    row075_layer030_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layers_checked
