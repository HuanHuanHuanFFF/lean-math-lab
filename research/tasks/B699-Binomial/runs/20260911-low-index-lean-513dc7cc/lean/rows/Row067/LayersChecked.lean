import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layers_checked :
    row067.layers.all (coverLayerCheck row067.height row067.goods) = true := by
  change row067_layers.all (coverLayerCheck row067.height row067.goods) = true
  simp only [row067_layers, List.all_cons, List.all_nil,
    row067_layer000_checked,
    row067_layer001_checked,
    row067_layer002_checked,
    row067_layer003_checked,
    row067_layer004_checked,
    row067_layer005_checked,
    row067_layer006_checked,
    row067_layer007_checked,
    row067_layer008_checked,
    row067_layer009_checked,
    row067_layer010_checked,
    row067_layer011_checked,
    row067_layer012_checked,
    row067_layer013_checked,
    row067_layer014_checked,
    row067_layer015_checked,
    row067_layer016_checked,
    row067_layer017_checked,
    row067_layer018_checked,
    row067_layer019_checked,
    row067_layer020_checked,
    row067_layer021_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layers_checked
