import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layers_checked :
    row064.layers.all (coverLayerCheck row064.height row064.goods) = true := by
  change row064_layers.all (coverLayerCheck row064.height row064.goods) = true
  simp only [row064_layers, List.all_cons, List.all_nil,
    row064_layer000_checked,
    row064_layer001_checked,
    row064_layer002_checked,
    row064_layer003_checked,
    row064_layer004_checked,
    row064_layer005_checked,
    row064_layer006_checked,
    row064_layer007_checked,
    row064_layer008_checked,
    row064_layer009_checked,
    row064_layer010_checked,
    row064_layer011_checked,
    row064_layer012_checked,
    row064_layer013_checked,
    row064_layer014_checked,
    row064_layer015_checked,
    row064_layer016_checked,
    row064_layer017_checked,
    row064_layer018_checked,
    row064_layer019_checked,
    row064_layer020_checked,
    row064_layer021_checked,
    row064_layer022_checked,
    row064_layer023_checked,
    row064_layer024_checked,
    row064_layer025_checked,
    row064_layer026_checked,
    row064_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layers_checked
