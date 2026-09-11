import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row096.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row096.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row096.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row096.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layers_checked :
    row096.layers.all (coverLayerCheck row096.height row096.goods) = true := by
  change row096_layers.all (coverLayerCheck row096.height row096.goods) = true
  simp only [row096_layers, List.all_cons, List.all_nil,
    row096_layer000_checked,
    row096_layer001_checked,
    row096_layer002_checked,
    row096_layer003_checked,
    row096_layer004_checked,
    row096_layer005_checked,
    row096_layer006_checked,
    row096_layer007_checked,
    row096_layer008_checked,
    row096_layer009_checked,
    row096_layer010_checked,
    row096_layer011_checked,
    row096_layer012_checked,
    row096_layer013_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layers_checked
