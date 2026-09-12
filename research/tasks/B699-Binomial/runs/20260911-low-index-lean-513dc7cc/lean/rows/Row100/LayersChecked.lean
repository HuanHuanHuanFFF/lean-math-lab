import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row100.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row100.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row100.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row100.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layers_checked :
    row100.layers.all (coverLayerCheck row100.height row100.goods) = true := by
  change row100_layers.all (coverLayerCheck row100.height row100.goods) = true
  simp only [row100_layers, List.all_cons, List.all_nil,
    row100_layer000_checked,
    row100_layer001_checked,
    row100_layer002_checked,
    row100_layer003_checked,
    row100_layer004_checked,
    row100_layer005_checked,
    row100_layer006_checked,
    row100_layer007_checked,
    row100_layer008_checked,
    row100_layer009_checked,
    row100_layer010_checked,
    row100_layer011_checked,
    row100_layer012_checked,
    row100_layer013_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layers_checked
