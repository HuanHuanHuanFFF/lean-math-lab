import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layers_checked :
    row089.layers.all (coverLayerCheck row089.height row089.goods) = true := by
  change row089_layers.all (coverLayerCheck row089.height row089.goods) = true
  simp only [row089_layers, List.all_cons, List.all_nil,
    row089_layer000_checked,
    row089_layer001_checked,
    row089_layer002_checked,
    row089_layer003_checked,
    row089_layer004_checked,
    row089_layer005_checked,
    row089_layer006_checked,
    row089_layer007_checked,
    row089_layer008_checked,
    row089_layer009_checked,
    row089_layer010_checked,
    row089_layer011_checked,
    row089_layer012_checked,
    row089_layer013_checked,
    row089_layer014_checked,
    row089_layer015_checked,
    row089_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layers_checked
