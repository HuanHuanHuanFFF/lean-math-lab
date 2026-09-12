import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row118.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row118.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row118.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row118.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row118.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layers_checked :
    row118.layers.all (coverLayerCheck row118.height row118.goods) = true := by
  change row118_layers.all (coverLayerCheck row118.height row118.goods) = true
  simp only [row118_layers, List.all_cons, List.all_nil,
    row118_layer000_checked,
    row118_layer001_checked,
    row118_layer002_checked,
    row118_layer003_checked,
    row118_layer004_checked,
    row118_layer005_checked,
    row118_layer006_checked,
    row118_layer007_checked,
    row118_layer008_checked,
    row118_layer009_checked,
    row118_layer010_checked,
    row118_layer011_checked,
    row118_layer012_checked,
    row118_layer013_checked,
    row118_layer014_checked,
    row118_layer015_checked,
    row118_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layers_checked
