import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layers028

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layers_checked :
    row074.layers.all (coverLayerCheck row074.height row074.goods) = true := by
  change row074_layers.all (coverLayerCheck row074.height row074.goods) = true
  simp only [row074_layers, List.all_cons, List.all_nil,
    row074_layer000_checked,
    row074_layer001_checked,
    row074_layer002_checked,
    row074_layer003_checked,
    row074_layer004_checked,
    row074_layer005_checked,
    row074_layer006_checked,
    row074_layer007_checked,
    row074_layer008_checked,
    row074_layer009_checked,
    row074_layer010_checked,
    row074_layer011_checked,
    row074_layer012_checked,
    row074_layer013_checked,
    row074_layer014_checked,
    row074_layer015_checked,
    row074_layer016_checked,
    row074_layer017_checked,
    row074_layer018_checked,
    row074_layer019_checked,
    row074_layer020_checked,
    row074_layer021_checked,
    row074_layer022_checked,
    row074_layer023_checked,
    row074_layer024_checked,
    row074_layer025_checked,
    row074_layer026_checked,
    row074_layer027_checked,
    row074_layer028_checked,
    row074_layer029_checked,
    row074_layer030_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layers_checked
