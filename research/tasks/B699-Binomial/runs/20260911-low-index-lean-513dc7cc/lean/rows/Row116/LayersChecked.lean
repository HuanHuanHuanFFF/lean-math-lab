import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row116.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row116.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row116.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row116.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row116.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layers_checked :
    row116.layers.all (coverLayerCheck row116.height row116.goods) = true := by
  change row116_layers.all (coverLayerCheck row116.height row116.goods) = true
  simp only [row116_layers, List.all_cons, List.all_nil,
    row116_layer000_checked,
    row116_layer001_checked,
    row116_layer002_checked,
    row116_layer003_checked,
    row116_layer004_checked,
    row116_layer005_checked,
    row116_layer006_checked,
    row116_layer007_checked,
    row116_layer008_checked,
    row116_layer009_checked,
    row116_layer010_checked,
    row116_layer011_checked,
    row116_layer012_checked,
    row116_layer013_checked,
    row116_layer014_checked,
    row116_layer015_checked,
    row116_layer016_checked,
    row116_layer017_checked,
    row116_layer018_checked,
    row116_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layers_checked
