import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row091.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row091.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row091.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row091.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row091.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row091.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layers_checked :
    row091.layers.all (coverLayerCheck row091.height row091.goods) = true := by
  change row091_layers.all (coverLayerCheck row091.height row091.goods) = true
  simp only [row091_layers, List.all_cons, List.all_nil,
    row091_layer000_checked,
    row091_layer001_checked,
    row091_layer002_checked,
    row091_layer003_checked,
    row091_layer004_checked,
    row091_layer005_checked,
    row091_layer006_checked,
    row091_layer007_checked,
    row091_layer008_checked,
    row091_layer009_checked,
    row091_layer010_checked,
    row091_layer011_checked,
    row091_layer012_checked,
    row091_layer013_checked,
    row091_layer014_checked,
    row091_layer015_checked,
    row091_layer016_checked,
    row091_layer017_checked,
    row091_layer018_checked,
    row091_layer019_checked,
    row091_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layers_checked
