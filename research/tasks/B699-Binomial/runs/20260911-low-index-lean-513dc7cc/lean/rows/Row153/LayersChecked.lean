import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row153.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row153.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row153.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row153.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row153_layers_checked :
    row153.layers.all (coverLayerCheck row153.height row153.goods) = true := by
  change row153_layers.all (coverLayerCheck row153.height row153.goods) = true
  simp only [row153_layers, List.all_cons, List.all_nil,
    row153_layer000_checked,
    row153_layer001_checked,
    row153_layer002_checked,
    row153_layer003_checked,
    row153_layer004_checked,
    row153_layer005_checked,
    row153_layer006_checked,
    row153_layer007_checked,
    row153_layer008_checked,
    row153_layer009_checked,
    row153_layer010_checked,
    row153_layer011_checked,
    row153_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row153_layers_checked
