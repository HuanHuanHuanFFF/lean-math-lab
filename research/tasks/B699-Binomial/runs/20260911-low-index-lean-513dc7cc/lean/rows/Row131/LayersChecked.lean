import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row131.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row131.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row131.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row131.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layers_checked :
    row131.layers.all (coverLayerCheck row131.height row131.goods) = true := by
  change row131_layers.all (coverLayerCheck row131.height row131.goods) = true
  simp only [row131_layers, List.all_cons, List.all_nil,
    row131_layer000_checked,
    row131_layer001_checked,
    row131_layer002_checked,
    row131_layer003_checked,
    row131_layer004_checked,
    row131_layer005_checked,
    row131_layer006_checked,
    row131_layer007_checked,
    row131_layer008_checked,
    row131_layer009_checked,
    row131_layer010_checked,
    row131_layer011_checked,
    row131_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layers_checked
