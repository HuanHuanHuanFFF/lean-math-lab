import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layers_checked :
    row087.layers.all (coverLayerCheck row087.height row087.goods) = true := by
  change row087_layers.all (coverLayerCheck row087.height row087.goods) = true
  simp only [row087_layers, List.all_cons, List.all_nil,
    row087_layer000_checked,
    row087_layer001_checked,
    row087_layer002_checked,
    row087_layer003_checked,
    row087_layer004_checked,
    row087_layer005_checked,
    row087_layer006_checked,
    row087_layer007_checked,
    row087_layer008_checked,
    row087_layer009_checked,
    row087_layer010_checked,
    row087_layer011_checked,
    row087_layer012_checked,
    row087_layer013_checked,
    row087_layer014_checked,
    row087_layer015_checked,
    row087_layer016_checked,
    row087_layer017_checked,
    row087_layer018_checked,
    row087_layer019_checked,
    row087_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layers_checked
