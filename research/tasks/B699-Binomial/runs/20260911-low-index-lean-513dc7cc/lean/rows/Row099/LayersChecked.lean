import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row099.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row099.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row099.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row099.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row099.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layers_checked :
    row099.layers.all (coverLayerCheck row099.height row099.goods) = true := by
  change row099_layers.all (coverLayerCheck row099.height row099.goods) = true
  simp only [row099_layers, List.all_cons, List.all_nil,
    row099_layer000_checked,
    row099_layer001_checked,
    row099_layer002_checked,
    row099_layer003_checked,
    row099_layer004_checked,
    row099_layer005_checked,
    row099_layer006_checked,
    row099_layer007_checked,
    row099_layer008_checked,
    row099_layer009_checked,
    row099_layer010_checked,
    row099_layer011_checked,
    row099_layer012_checked,
    row099_layer013_checked,
    row099_layer014_checked,
    row099_layer015_checked,
    row099_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layers_checked
