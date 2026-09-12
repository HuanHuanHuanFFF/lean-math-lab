import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row152.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row152.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row152.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row152.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layers_checked :
    row152.layers.all (coverLayerCheck row152.height row152.goods) = true := by
  change row152_layers.all (coverLayerCheck row152.height row152.goods) = true
  simp only [row152_layers, List.all_cons, List.all_nil,
    row152_layer000_checked,
    row152_layer001_checked,
    row152_layer002_checked,
    row152_layer003_checked,
    row152_layer004_checked,
    row152_layer005_checked,
    row152_layer006_checked,
    row152_layer007_checked,
    row152_layer008_checked,
    row152_layer009_checked,
    row152_layer010_checked,
    row152_layer011_checked,
    row152_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layers_checked
