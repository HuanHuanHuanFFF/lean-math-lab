import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row138.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row138.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row138.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row138.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layers_checked :
    row138.layers.all (coverLayerCheck row138.height row138.goods) = true := by
  change row138_layers.all (coverLayerCheck row138.height row138.goods) = true
  simp only [row138_layers, List.all_cons, List.all_nil,
    row138_layer000_checked,
    row138_layer001_checked,
    row138_layer002_checked,
    row138_layer003_checked,
    row138_layer004_checked,
    row138_layer005_checked,
    row138_layer006_checked,
    row138_layer007_checked,
    row138_layer008_checked,
    row138_layer009_checked,
    row138_layer010_checked,
    row138_layer011_checked,
    row138_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layers_checked
