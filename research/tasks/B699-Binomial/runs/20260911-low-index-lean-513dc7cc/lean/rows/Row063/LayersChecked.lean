import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layers032

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layers_checked :
    row063.layers.all (coverLayerCheck row063.height row063.goods) = true := by
  change row063_layers.all (coverLayerCheck row063.height row063.goods) = true
  simp only [row063_layers, List.all_cons, List.all_nil,
    row063_layer000_checked,
    row063_layer001_checked,
    row063_layer002_checked,
    row063_layer003_checked,
    row063_layer004_checked,
    row063_layer005_checked,
    row063_layer006_checked,
    row063_layer007_checked,
    row063_layer008_checked,
    row063_layer009_checked,
    row063_layer010_checked,
    row063_layer011_checked,
    row063_layer012_checked,
    row063_layer013_checked,
    row063_layer014_checked,
    row063_layer015_checked,
    row063_layer016_checked,
    row063_layer017_checked,
    row063_layer018_checked,
    row063_layer019_checked,
    row063_layer020_checked,
    row063_layer021_checked,
    row063_layer022_checked,
    row063_layer023_checked,
    row063_layer024_checked,
    row063_layer025_checked,
    row063_layer026_checked,
    row063_layer027_checked,
    row063_layer028_checked,
    row063_layer029_checked,
    row063_layer030_checked,
    row063_layer031_checked,
    row063_layer032_checked,
    row063_layer033_checked,
    row063_layer034_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layers_checked
