import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row129.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row129.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row129.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row129.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layers_checked :
    row129.layers.all (coverLayerCheck row129.height row129.goods) = true := by
  change row129_layers.all (coverLayerCheck row129.height row129.goods) = true
  simp only [row129_layers, List.all_cons, List.all_nil,
    row129_layer000_checked,
    row129_layer001_checked,
    row129_layer002_checked,
    row129_layer003_checked,
    row129_layer004_checked,
    row129_layer005_checked,
    row129_layer006_checked,
    row129_layer007_checked,
    row129_layer008_checked,
    row129_layer009_checked,
    row129_layer010_checked,
    row129_layer011_checked,
    row129_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layers_checked
