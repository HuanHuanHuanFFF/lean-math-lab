import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row127.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row127.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row127.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row127.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layers_checked :
    row127.layers.all (coverLayerCheck row127.height row127.goods) = true := by
  change row127_layers.all (coverLayerCheck row127.height row127.goods) = true
  simp only [row127_layers, List.all_cons, List.all_nil,
    row127_layer000_checked,
    row127_layer001_checked,
    row127_layer002_checked,
    row127_layer003_checked,
    row127_layer004_checked,
    row127_layer005_checked,
    row127_layer006_checked,
    row127_layer007_checked,
    row127_layer008_checked,
    row127_layer009_checked,
    row127_layer010_checked,
    row127_layer011_checked,
    row127_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layers_checked
