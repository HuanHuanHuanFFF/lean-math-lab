import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layers_checked :
    row068.layers.all (coverLayerCheck row068.height row068.goods) = true := by
  change row068_layers.all (coverLayerCheck row068.height row068.goods) = true
  simp only [row068_layers, List.all_cons, List.all_nil,
    row068_layer000_checked,
    row068_layer001_checked,
    row068_layer002_checked,
    row068_layer003_checked,
    row068_layer004_checked,
    row068_layer005_checked,
    row068_layer006_checked,
    row068_layer007_checked,
    row068_layer008_checked,
    row068_layer009_checked,
    row068_layer010_checked,
    row068_layer011_checked,
    row068_layer012_checked,
    row068_layer013_checked,
    row068_layer014_checked,
    row068_layer015_checked,
    row068_layer016_checked,
    row068_layer017_checked,
    row068_layer018_checked,
    row068_layer019_checked,
    row068_layer020_checked,
    row068_layer021_checked,
    row068_layer022_checked,
    row068_layer023_checked,
    row068_layer024_checked,
    row068_layer025_checked,
    row068_layer026_checked,
    row068_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layers_checked
