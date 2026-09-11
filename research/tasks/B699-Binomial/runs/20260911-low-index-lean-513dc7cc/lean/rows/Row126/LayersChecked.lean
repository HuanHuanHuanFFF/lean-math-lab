import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row126.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row126.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row126.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row126.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layers_checked :
    row126.layers.all (coverLayerCheck row126.height row126.goods) = true := by
  change row126_layers.all (coverLayerCheck row126.height row126.goods) = true
  simp only [row126_layers, List.all_cons, List.all_nil,
    row126_layer000_checked,
    row126_layer001_checked,
    row126_layer002_checked,
    row126_layer003_checked,
    row126_layer004_checked,
    row126_layer005_checked,
    row126_layer006_checked,
    row126_layer007_checked,
    row126_layer008_checked,
    row126_layer009_checked,
    row126_layer010_checked,
    row126_layer011_checked,
    row126_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layers_checked
