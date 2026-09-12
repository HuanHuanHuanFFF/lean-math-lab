import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layers_checked :
    row110.layers.all (coverLayerCheck row110.height row110.goods) = true := by
  change row110_layers.all (coverLayerCheck row110.height row110.goods) = true
  simp only [row110_layers, List.all_cons, List.all_nil,
    row110_layer000_checked,
    row110_layer001_checked,
    row110_layer002_checked,
    row110_layer003_checked,
    row110_layer004_checked,
    row110_layer005_checked,
    row110_layer006_checked,
    row110_layer007_checked,
    row110_layer008_checked,
    row110_layer009_checked,
    row110_layer010_checked,
    row110_layer011_checked,
    row110_layer012_checked,
    row110_layer013_checked,
    row110_layer014_checked,
    row110_layer015_checked,
    row110_layer016_checked,
    row110_layer017_checked,
    row110_layer018_checked,
    row110_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layers_checked
