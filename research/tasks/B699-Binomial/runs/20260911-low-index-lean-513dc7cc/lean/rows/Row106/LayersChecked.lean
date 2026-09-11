import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row106.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row106.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row106.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row106.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row106.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layers_checked :
    row106.layers.all (coverLayerCheck row106.height row106.goods) = true := by
  change row106_layers.all (coverLayerCheck row106.height row106.goods) = true
  simp only [row106_layers, List.all_cons, List.all_nil,
    row106_layer000_checked,
    row106_layer001_checked,
    row106_layer002_checked,
    row106_layer003_checked,
    row106_layer004_checked,
    row106_layer005_checked,
    row106_layer006_checked,
    row106_layer007_checked,
    row106_layer008_checked,
    row106_layer009_checked,
    row106_layer010_checked,
    row106_layer011_checked,
    row106_layer012_checked,
    row106_layer013_checked,
    row106_layer014_checked,
    row106_layer015_checked,
    row106_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layers_checked
