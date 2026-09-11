import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layers_checked :
    row073.layers.all (coverLayerCheck row073.height row073.goods) = true := by
  change row073_layers.all (coverLayerCheck row073.height row073.goods) = true
  simp only [row073_layers, List.all_cons, List.all_nil,
    row073_layer000_checked,
    row073_layer001_checked,
    row073_layer002_checked,
    row073_layer003_checked,
    row073_layer004_checked,
    row073_layer005_checked,
    row073_layer006_checked,
    row073_layer007_checked,
    row073_layer008_checked,
    row073_layer009_checked,
    row073_layer010_checked,
    row073_layer011_checked,
    row073_layer012_checked,
    row073_layer013_checked,
    row073_layer014_checked,
    row073_layer015_checked,
    row073_layer016_checked,
    row073_layer017_checked,
    row073_layer018_checked,
    row073_layer019_checked,
    row073_layer020_checked,
    row073_layer021_checked,
    row073_layer022_checked,
    row073_layer023_checked,
    row073_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layers_checked
