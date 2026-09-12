import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row040.Layers052

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layers_checked :
    row040.layers.all (coverLayerCheck row040.height row040.goods) = true := by
  change row040_layers.all (coverLayerCheck row040.height row040.goods) = true
  simp only [row040_layers, List.all_cons, List.all_nil,
    row040_layer000_checked,
    row040_layer001_checked,
    row040_layer002_checked,
    row040_layer003_checked,
    row040_layer004_checked,
    row040_layer005_checked,
    row040_layer006_checked,
    row040_layer007_checked,
    row040_layer008_checked,
    row040_layer009_checked,
    row040_layer010_checked,
    row040_layer011_checked,
    row040_layer012_checked,
    row040_layer013_checked,
    row040_layer014_checked,
    row040_layer015_checked,
    row040_layer016_checked,
    row040_layer017_checked,
    row040_layer018_checked,
    row040_layer019_checked,
    row040_layer020_checked,
    row040_layer021_checked,
    row040_layer022_checked,
    row040_layer023_checked,
    row040_layer024_checked,
    row040_layer025_checked,
    row040_layer026_checked,
    row040_layer027_checked,
    row040_layer028_checked,
    row040_layer029_checked,
    row040_layer030_checked,
    row040_layer031_checked,
    row040_layer032_checked,
    row040_layer033_checked,
    row040_layer034_checked,
    row040_layer035_checked,
    row040_layer036_checked,
    row040_layer037_checked,
    row040_layer038_checked,
    row040_layer039_checked,
    row040_layer040_checked,
    row040_layer041_checked,
    row040_layer042_checked,
    row040_layer043_checked,
    row040_layer044_checked,
    row040_layer045_checked,
    row040_layer046_checked,
    row040_layer047_checked,
    row040_layer048_checked,
    row040_layer049_checked,
    row040_layer050_checked,
    row040_layer051_checked,
    row040_layer052_checked,
    row040_layer053_checked,
    row040_layer054_checked,
    row040_layer055_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layers_checked
