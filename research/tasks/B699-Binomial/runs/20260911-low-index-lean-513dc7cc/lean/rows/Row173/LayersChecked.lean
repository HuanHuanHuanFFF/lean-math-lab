import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row173.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row173.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row173.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layers_checked :
    row173.layers.all (coverLayerCheck row173.height row173.goods) = true := by
  change row173_layers.all (coverLayerCheck row173.height row173.goods) = true
  simp only [row173_layers, List.all_cons, List.all_nil,
    row173_layer000_checked,
    row173_layer001_checked,
    row173_layer002_checked,
    row173_layer003_checked,
    row173_layer004_checked,
    row173_layer005_checked,
    row173_layer006_checked,
    row173_layer007_checked,
    row173_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layers_checked
