import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row143.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row143.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row143.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row143.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layers_checked :
    row143.layers.all (coverLayerCheck row143.height row143.goods) = true := by
  change row143_layers.all (coverLayerCheck row143.height row143.goods) = true
  simp only [row143_layers, List.all_cons, List.all_nil,
    row143_layer000_checked,
    row143_layer001_checked,
    row143_layer002_checked,
    row143_layer003_checked,
    row143_layer004_checked,
    row143_layer005_checked,
    row143_layer006_checked,
    row143_layer007_checked,
    row143_layer008_checked,
    row143_layer009_checked,
    row143_layer010_checked,
    row143_layer011_checked,
    row143_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layers_checked
