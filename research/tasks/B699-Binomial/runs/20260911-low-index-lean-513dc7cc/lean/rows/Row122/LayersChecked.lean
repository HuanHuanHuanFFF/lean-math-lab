import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row122.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row122.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row122.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row122.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layers_checked :
    row122.layers.all (coverLayerCheck row122.height row122.goods) = true := by
  change row122_layers.all (coverLayerCheck row122.height row122.goods) = true
  simp only [row122_layers, List.all_cons, List.all_nil,
    row122_layer000_checked,
    row122_layer001_checked,
    row122_layer002_checked,
    row122_layer003_checked,
    row122_layer004_checked,
    row122_layer005_checked,
    row122_layer006_checked,
    row122_layer007_checked,
    row122_layer008_checked,
    row122_layer009_checked,
    row122_layer010_checked,
    row122_layer011_checked,
    row122_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layers_checked
