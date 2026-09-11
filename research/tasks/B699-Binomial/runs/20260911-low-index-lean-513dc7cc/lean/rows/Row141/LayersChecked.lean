import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row141.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row141.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row141.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row141.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layers_checked :
    row141.layers.all (coverLayerCheck row141.height row141.goods) = true := by
  change row141_layers.all (coverLayerCheck row141.height row141.goods) = true
  simp only [row141_layers, List.all_cons, List.all_nil,
    row141_layer000_checked,
    row141_layer001_checked,
    row141_layer002_checked,
    row141_layer003_checked,
    row141_layer004_checked,
    row141_layer005_checked,
    row141_layer006_checked,
    row141_layer007_checked,
    row141_layer008_checked,
    row141_layer009_checked,
    row141_layer010_checked,
    row141_layer011_checked,
    row141_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layers_checked
