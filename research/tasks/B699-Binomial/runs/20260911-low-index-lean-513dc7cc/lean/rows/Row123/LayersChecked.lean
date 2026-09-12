import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row123.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row123.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row123.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row123.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layers_checked :
    row123.layers.all (coverLayerCheck row123.height row123.goods) = true := by
  change row123_layers.all (coverLayerCheck row123.height row123.goods) = true
  simp only [row123_layers, List.all_cons, List.all_nil,
    row123_layer000_checked,
    row123_layer001_checked,
    row123_layer002_checked,
    row123_layer003_checked,
    row123_layer004_checked,
    row123_layer005_checked,
    row123_layer006_checked,
    row123_layer007_checked,
    row123_layer008_checked,
    row123_layer009_checked,
    row123_layer010_checked,
    row123_layer011_checked,
    row123_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layers_checked
