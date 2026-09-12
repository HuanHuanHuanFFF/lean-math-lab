import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layers_checked :
    row084.layers.all (coverLayerCheck row084.height row084.goods) = true := by
  change row084_layers.all (coverLayerCheck row084.height row084.goods) = true
  simp only [row084_layers, List.all_cons, List.all_nil,
    row084_layer000_checked,
    row084_layer001_checked,
    row084_layer002_checked,
    row084_layer003_checked,
    row084_layer004_checked,
    row084_layer005_checked,
    row084_layer006_checked,
    row084_layer007_checked,
    row084_layer008_checked,
    row084_layer009_checked,
    row084_layer010_checked,
    row084_layer011_checked,
    row084_layer012_checked,
    row084_layer013_checked,
    row084_layer014_checked,
    row084_layer015_checked,
    row084_layer016_checked,
    row084_layer017_checked,
    row084_layer018_checked,
    row084_layer019_checked,
    row084_layer020_checked,
    row084_layer021_checked,
    row084_layer022_checked,
    row084_layer023_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layers_checked
