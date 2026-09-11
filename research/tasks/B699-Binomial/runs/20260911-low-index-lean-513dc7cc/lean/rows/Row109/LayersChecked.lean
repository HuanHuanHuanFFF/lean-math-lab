import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layers_checked :
    row109.layers.all (coverLayerCheck row109.height row109.goods) = true := by
  change row109_layers.all (coverLayerCheck row109.height row109.goods) = true
  simp only [row109_layers, List.all_cons, List.all_nil,
    row109_layer000_checked,
    row109_layer001_checked,
    row109_layer002_checked,
    row109_layer003_checked,
    row109_layer004_checked,
    row109_layer005_checked,
    row109_layer006_checked,
    row109_layer007_checked,
    row109_layer008_checked,
    row109_layer009_checked,
    row109_layer010_checked,
    row109_layer011_checked,
    row109_layer012_checked,
    row109_layer013_checked,
    row109_layer014_checked,
    row109_layer015_checked,
    row109_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layers_checked
