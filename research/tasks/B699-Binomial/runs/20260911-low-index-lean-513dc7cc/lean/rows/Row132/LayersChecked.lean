import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row132.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row132.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row132.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row132.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layers_checked :
    row132.layers.all (coverLayerCheck row132.height row132.goods) = true := by
  change row132_layers.all (coverLayerCheck row132.height row132.goods) = true
  simp only [row132_layers, List.all_cons, List.all_nil,
    row132_layer000_checked,
    row132_layer001_checked,
    row132_layer002_checked,
    row132_layer003_checked,
    row132_layer004_checked,
    row132_layer005_checked,
    row132_layer006_checked,
    row132_layer007_checked,
    row132_layer008_checked,
    row132_layer009_checked,
    row132_layer010_checked,
    row132_layer011_checked,
    row132_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layers_checked
