import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row150.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row150.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row150.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row150.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layers_checked :
    row150.layers.all (coverLayerCheck row150.height row150.goods) = true := by
  change row150_layers.all (coverLayerCheck row150.height row150.goods) = true
  simp only [row150_layers, List.all_cons, List.all_nil,
    row150_layer000_checked,
    row150_layer001_checked,
    row150_layer002_checked,
    row150_layer003_checked,
    row150_layer004_checked,
    row150_layer005_checked,
    row150_layer006_checked,
    row150_layer007_checked,
    row150_layer008_checked,
    row150_layer009_checked,
    row150_layer010_checked,
    row150_layer011_checked,
    row150_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layers_checked
