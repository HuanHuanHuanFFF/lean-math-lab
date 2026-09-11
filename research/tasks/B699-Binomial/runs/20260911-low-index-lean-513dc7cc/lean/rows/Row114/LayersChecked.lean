import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layers_checked :
    row114.layers.all (coverLayerCheck row114.height row114.goods) = true := by
  change row114_layers.all (coverLayerCheck row114.height row114.goods) = true
  simp only [row114_layers, List.all_cons, List.all_nil,
    row114_layer000_checked,
    row114_layer001_checked,
    row114_layer002_checked,
    row114_layer003_checked,
    row114_layer004_checked,
    row114_layer005_checked,
    row114_layer006_checked,
    row114_layer007_checked,
    row114_layer008_checked,
    row114_layer009_checked,
    row114_layer010_checked,
    row114_layer011_checked,
    row114_layer012_checked,
    row114_layer013_checked,
    row114_layer014_checked,
    row114_layer015_checked,
    row114_layer016_checked,
    row114_layer017_checked,
    row114_layer018_checked,
    row114_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layers_checked
