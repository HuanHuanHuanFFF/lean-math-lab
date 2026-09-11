import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layers036

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layers_checked :
    row062.layers.all (coverLayerCheck row062.height row062.goods) = true := by
  change row062_layers.all (coverLayerCheck row062.height row062.goods) = true
  simp only [row062_layers, List.all_cons, List.all_nil,
    row062_layer000_checked,
    row062_layer001_checked,
    row062_layer002_checked,
    row062_layer003_checked,
    row062_layer004_checked,
    row062_layer005_checked,
    row062_layer006_checked,
    row062_layer007_checked,
    row062_layer008_checked,
    row062_layer009_checked,
    row062_layer010_checked,
    row062_layer011_checked,
    row062_layer012_checked,
    row062_layer013_checked,
    row062_layer014_checked,
    row062_layer015_checked,
    row062_layer016_checked,
    row062_layer017_checked,
    row062_layer018_checked,
    row062_layer019_checked,
    row062_layer020_checked,
    row062_layer021_checked,
    row062_layer022_checked,
    row062_layer023_checked,
    row062_layer024_checked,
    row062_layer025_checked,
    row062_layer026_checked,
    row062_layer027_checked,
    row062_layer028_checked,
    row062_layer029_checked,
    row062_layer030_checked,
    row062_layer031_checked,
    row062_layer032_checked,
    row062_layer033_checked,
    row062_layer034_checked,
    row062_layer035_checked,
    row062_layer036_checked,
    row062_layer037_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layers_checked
