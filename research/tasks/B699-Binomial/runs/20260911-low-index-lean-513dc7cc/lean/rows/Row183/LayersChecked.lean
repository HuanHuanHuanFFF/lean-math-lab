import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row183.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row183.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row183.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layers_checked :
    row183.layers.all (coverLayerCheck row183.height row183.goods) = true := by
  change row183_layers.all (coverLayerCheck row183.height row183.goods) = true
  simp only [row183_layers, List.all_cons, List.all_nil,
    row183_layer000_checked,
    row183_layer001_checked,
    row183_layer002_checked,
    row183_layer003_checked,
    row183_layer004_checked,
    row183_layer005_checked,
    row183_layer006_checked,
    row183_layer007_checked,
    row183_layer008_checked,
    row183_layer009_checked,
    row183_layer010_checked,
    row183_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layers_checked
