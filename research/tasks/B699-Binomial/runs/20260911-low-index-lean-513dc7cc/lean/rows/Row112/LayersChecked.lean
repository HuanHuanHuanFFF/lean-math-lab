import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row112.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row112.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row112.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row112.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row112.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layers_checked :
    row112.layers.all (coverLayerCheck row112.height row112.goods) = true := by
  change row112_layers.all (coverLayerCheck row112.height row112.goods) = true
  simp only [row112_layers, List.all_cons, List.all_nil,
    row112_layer000_checked,
    row112_layer001_checked,
    row112_layer002_checked,
    row112_layer003_checked,
    row112_layer004_checked,
    row112_layer005_checked,
    row112_layer006_checked,
    row112_layer007_checked,
    row112_layer008_checked,
    row112_layer009_checked,
    row112_layer010_checked,
    row112_layer011_checked,
    row112_layer012_checked,
    row112_layer013_checked,
    row112_layer014_checked,
    row112_layer015_checked,
    row112_layer016_checked,
    row112_layer017_checked,
    row112_layer018_checked,
    row112_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layers_checked
