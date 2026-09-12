import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layers_checked :
    row113.layers.all (coverLayerCheck row113.height row113.goods) = true := by
  change row113_layers.all (coverLayerCheck row113.height row113.goods) = true
  simp only [row113_layers, List.all_cons, List.all_nil,
    row113_layer000_checked,
    row113_layer001_checked,
    row113_layer002_checked,
    row113_layer003_checked,
    row113_layer004_checked,
    row113_layer005_checked,
    row113_layer006_checked,
    row113_layer007_checked,
    row113_layer008_checked,
    row113_layer009_checked,
    row113_layer010_checked,
    row113_layer011_checked,
    row113_layer012_checked,
    row113_layer013_checked,
    row113_layer014_checked,
    row113_layer015_checked,
    row113_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layers_checked
