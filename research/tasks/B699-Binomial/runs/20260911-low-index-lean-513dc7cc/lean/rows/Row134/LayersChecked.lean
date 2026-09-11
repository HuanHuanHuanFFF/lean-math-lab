import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row134.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row134.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row134.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row134.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layers_checked :
    row134.layers.all (coverLayerCheck row134.height row134.goods) = true := by
  change row134_layers.all (coverLayerCheck row134.height row134.goods) = true
  simp only [row134_layers, List.all_cons, List.all_nil,
    row134_layer000_checked,
    row134_layer001_checked,
    row134_layer002_checked,
    row134_layer003_checked,
    row134_layer004_checked,
    row134_layer005_checked,
    row134_layer006_checked,
    row134_layer007_checked,
    row134_layer008_checked,
    row134_layer009_checked,
    row134_layer010_checked,
    row134_layer011_checked,
    row134_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layers_checked
