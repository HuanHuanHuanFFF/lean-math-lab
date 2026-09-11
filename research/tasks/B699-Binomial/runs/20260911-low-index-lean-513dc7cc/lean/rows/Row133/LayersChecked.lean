import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row133.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row133.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row133.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row133.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layers_checked :
    row133.layers.all (coverLayerCheck row133.height row133.goods) = true := by
  change row133_layers.all (coverLayerCheck row133.height row133.goods) = true
  simp only [row133_layers, List.all_cons, List.all_nil,
    row133_layer000_checked,
    row133_layer001_checked,
    row133_layer002_checked,
    row133_layer003_checked,
    row133_layer004_checked,
    row133_layer005_checked,
    row133_layer006_checked,
    row133_layer007_checked,
    row133_layer008_checked,
    row133_layer009_checked,
    row133_layer010_checked,
    row133_layer011_checked,
    row133_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layers_checked
