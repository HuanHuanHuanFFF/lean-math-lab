import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row140.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row140.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row140.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row140.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layers_checked :
    row140.layers.all (coverLayerCheck row140.height row140.goods) = true := by
  change row140_layers.all (coverLayerCheck row140.height row140.goods) = true
  simp only [row140_layers, List.all_cons, List.all_nil,
    row140_layer000_checked,
    row140_layer001_checked,
    row140_layer002_checked,
    row140_layer003_checked,
    row140_layer004_checked,
    row140_layer005_checked,
    row140_layer006_checked,
    row140_layer007_checked,
    row140_layer008_checked,
    row140_layer009_checked,
    row140_layer010_checked,
    row140_layer011_checked,
    row140_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layers_checked
