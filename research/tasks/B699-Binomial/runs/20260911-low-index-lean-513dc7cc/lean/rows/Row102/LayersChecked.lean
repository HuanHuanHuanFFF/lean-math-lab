import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layers_checked :
    row102.layers.all (coverLayerCheck row102.height row102.goods) = true := by
  change row102_layers.all (coverLayerCheck row102.height row102.goods) = true
  simp only [row102_layers, List.all_cons, List.all_nil,
    row102_layer000_checked,
    row102_layer001_checked,
    row102_layer002_checked,
    row102_layer003_checked,
    row102_layer004_checked,
    row102_layer005_checked,
    row102_layer006_checked,
    row102_layer007_checked,
    row102_layer008_checked,
    row102_layer009_checked,
    row102_layer010_checked,
    row102_layer011_checked,
    row102_layer012_checked,
    row102_layer013_checked,
    row102_layer014_checked,
    row102_layer015_checked,
    row102_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layers_checked
