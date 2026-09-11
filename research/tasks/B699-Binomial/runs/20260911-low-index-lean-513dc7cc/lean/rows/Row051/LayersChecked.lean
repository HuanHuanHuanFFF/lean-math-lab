import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layers044

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layers_checked :
    row051.layers.all (coverLayerCheck row051.height row051.goods) = true := by
  change row051_layers.all (coverLayerCheck row051.height row051.goods) = true
  simp only [row051_layers, List.all_cons, List.all_nil,
    row051_layer000_checked,
    row051_layer001_checked,
    row051_layer002_checked,
    row051_layer003_checked,
    row051_layer004_checked,
    row051_layer005_checked,
    row051_layer006_checked,
    row051_layer007_checked,
    row051_layer008_checked,
    row051_layer009_checked,
    row051_layer010_checked,
    row051_layer011_checked,
    row051_layer012_checked,
    row051_layer013_checked,
    row051_layer014_checked,
    row051_layer015_checked,
    row051_layer016_checked,
    row051_layer017_checked,
    row051_layer018_checked,
    row051_layer019_checked,
    row051_layer020_checked,
    row051_layer021_checked,
    row051_layer022_checked,
    row051_layer023_checked,
    row051_layer024_checked,
    row051_layer025_checked,
    row051_layer026_checked,
    row051_layer027_checked,
    row051_layer028_checked,
    row051_layer029_checked,
    row051_layer030_checked,
    row051_layer031_checked,
    row051_layer032_checked,
    row051_layer033_checked,
    row051_layer034_checked,
    row051_layer035_checked,
    row051_layer036_checked,
    row051_layer037_checked,
    row051_layer038_checked,
    row051_layer039_checked,
    row051_layer040_checked,
    row051_layer041_checked,
    row051_layer042_checked,
    row051_layer043_checked,
    row051_layer044_checked,
    row051_layer045_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layers_checked
