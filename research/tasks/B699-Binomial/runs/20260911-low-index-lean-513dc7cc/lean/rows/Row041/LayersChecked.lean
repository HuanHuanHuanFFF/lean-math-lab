import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row041.Layers040

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layers_checked :
    row041.layers.all (coverLayerCheck row041.height row041.goods) = true := by
  change row041_layers.all (coverLayerCheck row041.height row041.goods) = true
  simp only [row041_layers, List.all_cons, List.all_nil,
    row041_layer000_checked,
    row041_layer001_checked,
    row041_layer002_checked,
    row041_layer003_checked,
    row041_layer004_checked,
    row041_layer005_checked,
    row041_layer006_checked,
    row041_layer007_checked,
    row041_layer008_checked,
    row041_layer009_checked,
    row041_layer010_checked,
    row041_layer011_checked,
    row041_layer012_checked,
    row041_layer013_checked,
    row041_layer014_checked,
    row041_layer015_checked,
    row041_layer016_checked,
    row041_layer017_checked,
    row041_layer018_checked,
    row041_layer019_checked,
    row041_layer020_checked,
    row041_layer021_checked,
    row041_layer022_checked,
    row041_layer023_checked,
    row041_layer024_checked,
    row041_layer025_checked,
    row041_layer026_checked,
    row041_layer027_checked,
    row041_layer028_checked,
    row041_layer029_checked,
    row041_layer030_checked,
    row041_layer031_checked,
    row041_layer032_checked,
    row041_layer033_checked,
    row041_layer034_checked,
    row041_layer035_checked,
    row041_layer036_checked,
    row041_layer037_checked,
    row041_layer038_checked,
    row041_layer039_checked,
    row041_layer040_checked,
    row041_layer041_checked,
    row041_layer042_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layers_checked
