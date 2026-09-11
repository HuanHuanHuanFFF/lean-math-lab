import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layers_checked :
    row069.layers.all (coverLayerCheck row069.height row069.goods) = true := by
  change row069_layers.all (coverLayerCheck row069.height row069.goods) = true
  simp only [row069_layers, List.all_cons, List.all_nil,
    row069_layer000_checked,
    row069_layer001_checked,
    row069_layer002_checked,
    row069_layer003_checked,
    row069_layer004_checked,
    row069_layer005_checked,
    row069_layer006_checked,
    row069_layer007_checked,
    row069_layer008_checked,
    row069_layer009_checked,
    row069_layer010_checked,
    row069_layer011_checked,
    row069_layer012_checked,
    row069_layer013_checked,
    row069_layer014_checked,
    row069_layer015_checked,
    row069_layer016_checked,
    row069_layer017_checked,
    row069_layer018_checked,
    row069_layer019_checked,
    row069_layer020_checked,
    row069_layer021_checked,
    row069_layer022_checked,
    row069_layer023_checked,
    row069_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layers_checked
