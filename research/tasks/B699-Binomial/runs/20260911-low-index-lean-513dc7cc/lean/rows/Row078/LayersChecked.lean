import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row078.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row078.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row078.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row078.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row078.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row078.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layers_checked :
    row078.layers.all (coverLayerCheck row078.height row078.goods) = true := by
  change row078_layers.all (coverLayerCheck row078.height row078.goods) = true
  simp only [row078_layers, List.all_cons, List.all_nil,
    row078_layer000_checked,
    row078_layer001_checked,
    row078_layer002_checked,
    row078_layer003_checked,
    row078_layer004_checked,
    row078_layer005_checked,
    row078_layer006_checked,
    row078_layer007_checked,
    row078_layer008_checked,
    row078_layer009_checked,
    row078_layer010_checked,
    row078_layer011_checked,
    row078_layer012_checked,
    row078_layer013_checked,
    row078_layer014_checked,
    row078_layer015_checked,
    row078_layer016_checked,
    row078_layer017_checked,
    row078_layer018_checked,
    row078_layer019_checked,
    row078_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layers_checked
