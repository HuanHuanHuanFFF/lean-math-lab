import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row124.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row124.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row124.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row124.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layers_checked :
    row124.layers.all (coverLayerCheck row124.height row124.goods) = true := by
  change row124_layers.all (coverLayerCheck row124.height row124.goods) = true
  simp only [row124_layers, List.all_cons, List.all_nil,
    row124_layer000_checked,
    row124_layer001_checked,
    row124_layer002_checked,
    row124_layer003_checked,
    row124_layer004_checked,
    row124_layer005_checked,
    row124_layer006_checked,
    row124_layer007_checked,
    row124_layer008_checked,
    row124_layer009_checked,
    row124_layer010_checked,
    row124_layer011_checked,
    row124_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layers_checked
