import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layers052

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layers_checked :
    row050.layers.all (coverLayerCheck row050.height row050.goods) = true := by
  change row050_layers.all (coverLayerCheck row050.height row050.goods) = true
  simp only [row050_layers, List.all_cons, List.all_nil,
    row050_layer000_checked,
    row050_layer001_checked,
    row050_layer002_checked,
    row050_layer003_checked,
    row050_layer004_checked,
    row050_layer005_checked,
    row050_layer006_checked,
    row050_layer007_checked,
    row050_layer008_checked,
    row050_layer009_checked,
    row050_layer010_checked,
    row050_layer011_checked,
    row050_layer012_checked,
    row050_layer013_checked,
    row050_layer014_checked,
    row050_layer015_checked,
    row050_layer016_checked,
    row050_layer017_checked,
    row050_layer018_checked,
    row050_layer019_checked,
    row050_layer020_checked,
    row050_layer021_checked,
    row050_layer022_checked,
    row050_layer023_checked,
    row050_layer024_checked,
    row050_layer025_checked,
    row050_layer026_checked,
    row050_layer027_checked,
    row050_layer028_checked,
    row050_layer029_checked,
    row050_layer030_checked,
    row050_layer031_checked,
    row050_layer032_checked,
    row050_layer033_checked,
    row050_layer034_checked,
    row050_layer035_checked,
    row050_layer036_checked,
    row050_layer037_checked,
    row050_layer038_checked,
    row050_layer039_checked,
    row050_layer040_checked,
    row050_layer041_checked,
    row050_layer042_checked,
    row050_layer043_checked,
    row050_layer044_checked,
    row050_layer045_checked,
    row050_layer046_checked,
    row050_layer047_checked,
    row050_layer048_checked,
    row050_layer049_checked,
    row050_layer050_checked,
    row050_layer051_checked,
    row050_layer052_checked,
    row050_layer053_checked,
    row050_layer054_checked,
    row050_layer055_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layers_checked
