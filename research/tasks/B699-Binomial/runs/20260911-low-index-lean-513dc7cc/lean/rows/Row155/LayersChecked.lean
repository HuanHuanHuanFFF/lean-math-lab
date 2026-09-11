import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row155.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row155.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row155.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row155.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layers_checked :
    row155.layers.all (coverLayerCheck row155.height row155.goods) = true := by
  change row155_layers.all (coverLayerCheck row155.height row155.goods) = true
  simp only [row155_layers, List.all_cons, List.all_nil,
    row155_layer000_checked,
    row155_layer001_checked,
    row155_layer002_checked,
    row155_layer003_checked,
    row155_layer004_checked,
    row155_layer005_checked,
    row155_layer006_checked,
    row155_layer007_checked,
    row155_layer008_checked,
    row155_layer009_checked,
    row155_layer010_checked,
    row155_layer011_checked,
    row155_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layers_checked
