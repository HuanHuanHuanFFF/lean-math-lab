import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layers_checked :
    row101.layers.all (coverLayerCheck row101.height row101.goods) = true := by
  change row101_layers.all (coverLayerCheck row101.height row101.goods) = true
  simp only [row101_layers, List.all_cons, List.all_nil,
    row101_layer000_checked,
    row101_layer001_checked,
    row101_layer002_checked,
    row101_layer003_checked,
    row101_layer004_checked,
    row101_layer005_checked,
    row101_layer006_checked,
    row101_layer007_checked,
    row101_layer008_checked,
    row101_layer009_checked,
    row101_layer010_checked,
    row101_layer011_checked,
    row101_layer012_checked,
    row101_layer013_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layers_checked
