import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row108.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row108.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row108.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row108.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row108.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layers_checked :
    row108.layers.all (coverLayerCheck row108.height row108.goods) = true := by
  change row108_layers.all (coverLayerCheck row108.height row108.goods) = true
  simp only [row108_layers, List.all_cons, List.all_nil,
    row108_layer000_checked,
    row108_layer001_checked,
    row108_layer002_checked,
    row108_layer003_checked,
    row108_layer004_checked,
    row108_layer005_checked,
    row108_layer006_checked,
    row108_layer007_checked,
    row108_layer008_checked,
    row108_layer009_checked,
    row108_layer010_checked,
    row108_layer011_checked,
    row108_layer012_checked,
    row108_layer013_checked,
    row108_layer014_checked,
    row108_layer015_checked,
    row108_layer016_checked,
    row108_layer017_checked,
    row108_layer018_checked,
    row108_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layers_checked
