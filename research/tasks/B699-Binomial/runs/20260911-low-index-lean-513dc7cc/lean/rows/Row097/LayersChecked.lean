import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row097.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row097.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row097.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row097.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layers_checked :
    row097.layers.all (coverLayerCheck row097.height row097.goods) = true := by
  change row097_layers.all (coverLayerCheck row097.height row097.goods) = true
  simp only [row097_layers, List.all_cons, List.all_nil,
    row097_layer000_checked,
    row097_layer001_checked,
    row097_layer002_checked,
    row097_layer003_checked,
    row097_layer004_checked,
    row097_layer005_checked,
    row097_layer006_checked,
    row097_layer007_checked,
    row097_layer008_checked,
    row097_layer009_checked,
    row097_layer010_checked,
    row097_layer011_checked,
    row097_layer012_checked,
    row097_layer013_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layers_checked
