import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row170.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row170.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row170.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layers_checked :
    row170.layers.all (coverLayerCheck row170.height row170.goods) = true := by
  change row170_layers.all (coverLayerCheck row170.height row170.goods) = true
  simp only [row170_layers, List.all_cons, List.all_nil,
    row170_layer000_checked,
    row170_layer001_checked,
    row170_layer002_checked,
    row170_layer003_checked,
    row170_layer004_checked,
    row170_layer005_checked,
    row170_layer006_checked,
    row170_layer007_checked,
    row170_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layers_checked
