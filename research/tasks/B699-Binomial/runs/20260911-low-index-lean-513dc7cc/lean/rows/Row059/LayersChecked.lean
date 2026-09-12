import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row059.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row059.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row059.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row059.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row059.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row059.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layers_checked :
    row059.layers.all (coverLayerCheck row059.height row059.goods) = true := by
  change row059_layers.all (coverLayerCheck row059.height row059.goods) = true
  simp only [row059_layers, List.all_cons, List.all_nil,
    row059_layer000_checked,
    row059_layer001_checked,
    row059_layer002_checked,
    row059_layer003_checked,
    row059_layer004_checked,
    row059_layer005_checked,
    row059_layer006_checked,
    row059_layer007_checked,
    row059_layer008_checked,
    row059_layer009_checked,
    row059_layer010_checked,
    row059_layer011_checked,
    row059_layer012_checked,
    row059_layer013_checked,
    row059_layer014_checked,
    row059_layer015_checked,
    row059_layer016_checked,
    row059_layer017_checked,
    row059_layer018_checked,
    row059_layer019_checked,
    row059_layer020_checked,
    row059_layer021_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layers_checked
