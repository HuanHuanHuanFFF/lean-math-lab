import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row093.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row093.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row093.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row093.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row093.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layers_checked :
    row093.layers.all (coverLayerCheck row093.height row093.goods) = true := by
  change row093_layers.all (coverLayerCheck row093.height row093.goods) = true
  simp only [row093_layers, List.all_cons, List.all_nil,
    row093_layer000_checked,
    row093_layer001_checked,
    row093_layer002_checked,
    row093_layer003_checked,
    row093_layer004_checked,
    row093_layer005_checked,
    row093_layer006_checked,
    row093_layer007_checked,
    row093_layer008_checked,
    row093_layer009_checked,
    row093_layer010_checked,
    row093_layer011_checked,
    row093_layer012_checked,
    row093_layer013_checked,
    row093_layer014_checked,
    row093_layer015_checked,
    row093_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layers_checked
