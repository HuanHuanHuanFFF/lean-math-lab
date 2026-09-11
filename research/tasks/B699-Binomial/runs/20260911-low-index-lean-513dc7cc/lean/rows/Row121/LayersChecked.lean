import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row121.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row121.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row121.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row121.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layers_checked :
    row121.layers.all (coverLayerCheck row121.height row121.goods) = true := by
  change row121_layers.all (coverLayerCheck row121.height row121.goods) = true
  simp only [row121_layers, List.all_cons, List.all_nil,
    row121_layer000_checked,
    row121_layer001_checked,
    row121_layer002_checked,
    row121_layer003_checked,
    row121_layer004_checked,
    row121_layer005_checked,
    row121_layer006_checked,
    row121_layer007_checked,
    row121_layer008_checked,
    row121_layer009_checked,
    row121_layer010_checked,
    row121_layer011_checked,
    row121_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layers_checked
