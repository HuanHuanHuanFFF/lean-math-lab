import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layers_checked :
    row077.layers.all (coverLayerCheck row077.height row077.goods) = true := by
  change row077_layers.all (coverLayerCheck row077.height row077.goods) = true
  simp only [row077_layers, List.all_cons, List.all_nil,
    row077_layer000_checked,
    row077_layer001_checked,
    row077_layer002_checked,
    row077_layer003_checked,
    row077_layer004_checked,
    row077_layer005_checked,
    row077_layer006_checked,
    row077_layer007_checked,
    row077_layer008_checked,
    row077_layer009_checked,
    row077_layer010_checked,
    row077_layer011_checked,
    row077_layer012_checked,
    row077_layer013_checked,
    row077_layer014_checked,
    row077_layer015_checked,
    row077_layer016_checked,
    row077_layer017_checked,
    row077_layer018_checked,
    row077_layer019_checked,
    row077_layer020_checked,
    row077_layer021_checked,
    row077_layer022_checked,
    row077_layer023_checked,
    row077_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layers_checked
