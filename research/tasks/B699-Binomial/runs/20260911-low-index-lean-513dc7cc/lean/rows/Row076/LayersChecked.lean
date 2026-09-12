import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layers_checked :
    row076.layers.all (coverLayerCheck row076.height row076.goods) = true := by
  change row076_layers.all (coverLayerCheck row076.height row076.goods) = true
  simp only [row076_layers, List.all_cons, List.all_nil,
    row076_layer000_checked,
    row076_layer001_checked,
    row076_layer002_checked,
    row076_layer003_checked,
    row076_layer004_checked,
    row076_layer005_checked,
    row076_layer006_checked,
    row076_layer007_checked,
    row076_layer008_checked,
    row076_layer009_checked,
    row076_layer010_checked,
    row076_layer011_checked,
    row076_layer012_checked,
    row076_layer013_checked,
    row076_layer014_checked,
    row076_layer015_checked,
    row076_layer016_checked,
    row076_layer017_checked,
    row076_layer018_checked,
    row076_layer019_checked,
    row076_layer020_checked,
    row076_layer021_checked,
    row076_layer022_checked,
    row076_layer023_checked,
    row076_layer024_checked,
    row076_layer025_checked,
    row076_layer026_checked,
    row076_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layers_checked
