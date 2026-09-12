import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row079.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row079.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row079.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row079.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row079.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row079.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layers_checked :
    row079.layers.all (coverLayerCheck row079.height row079.goods) = true := by
  change row079_layers.all (coverLayerCheck row079.height row079.goods) = true
  simp only [row079_layers, List.all_cons, List.all_nil,
    row079_layer000_checked,
    row079_layer001_checked,
    row079_layer002_checked,
    row079_layer003_checked,
    row079_layer004_checked,
    row079_layer005_checked,
    row079_layer006_checked,
    row079_layer007_checked,
    row079_layer008_checked,
    row079_layer009_checked,
    row079_layer010_checked,
    row079_layer011_checked,
    row079_layer012_checked,
    row079_layer013_checked,
    row079_layer014_checked,
    row079_layer015_checked,
    row079_layer016_checked,
    row079_layer017_checked,
    row079_layer018_checked,
    row079_layer019_checked,
    row079_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layers_checked
