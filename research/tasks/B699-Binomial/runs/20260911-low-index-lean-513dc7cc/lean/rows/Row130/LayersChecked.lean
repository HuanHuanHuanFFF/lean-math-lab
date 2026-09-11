import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row130.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row130.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row130.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row130.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layers_checked :
    row130.layers.all (coverLayerCheck row130.height row130.goods) = true := by
  change row130_layers.all (coverLayerCheck row130.height row130.goods) = true
  simp only [row130_layers, List.all_cons, List.all_nil,
    row130_layer000_checked,
    row130_layer001_checked,
    row130_layer002_checked,
    row130_layer003_checked,
    row130_layer004_checked,
    row130_layer005_checked,
    row130_layer006_checked,
    row130_layer007_checked,
    row130_layer008_checked,
    row130_layer009_checked,
    row130_layer010_checked,
    row130_layer011_checked,
    row130_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layers_checked
