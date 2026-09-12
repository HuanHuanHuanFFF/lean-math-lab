import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row128.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row128.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row128.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row128.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layers_checked :
    row128.layers.all (coverLayerCheck row128.height row128.goods) = true := by
  change row128_layers.all (coverLayerCheck row128.height row128.goods) = true
  simp only [row128_layers, List.all_cons, List.all_nil,
    row128_layer000_checked,
    row128_layer001_checked,
    row128_layer002_checked,
    row128_layer003_checked,
    row128_layer004_checked,
    row128_layer005_checked,
    row128_layer006_checked,
    row128_layer007_checked,
    row128_layer008_checked,
    row128_layer009_checked,
    row128_layer010_checked,
    row128_layer011_checked,
    row128_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layers_checked
