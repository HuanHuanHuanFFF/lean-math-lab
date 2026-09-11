import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row135.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row135.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row135.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row135.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layers_checked :
    row135.layers.all (coverLayerCheck row135.height row135.goods) = true := by
  change row135_layers.all (coverLayerCheck row135.height row135.goods) = true
  simp only [row135_layers, List.all_cons, List.all_nil,
    row135_layer000_checked,
    row135_layer001_checked,
    row135_layer002_checked,
    row135_layer003_checked,
    row135_layer004_checked,
    row135_layer005_checked,
    row135_layer006_checked,
    row135_layer007_checked,
    row135_layer008_checked,
    row135_layer009_checked,
    row135_layer010_checked,
    row135_layer011_checked,
    row135_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layers_checked
