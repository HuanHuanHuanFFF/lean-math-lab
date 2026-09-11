import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row154.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row154.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row154.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row154.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layers_checked :
    row154.layers.all (coverLayerCheck row154.height row154.goods) = true := by
  change row154_layers.all (coverLayerCheck row154.height row154.goods) = true
  simp only [row154_layers, List.all_cons, List.all_nil,
    row154_layer000_checked,
    row154_layer001_checked,
    row154_layer002_checked,
    row154_layer003_checked,
    row154_layer004_checked,
    row154_layer005_checked,
    row154_layer006_checked,
    row154_layer007_checked,
    row154_layer008_checked,
    row154_layer009_checked,
    row154_layer010_checked,
    row154_layer011_checked,
    row154_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layers_checked
