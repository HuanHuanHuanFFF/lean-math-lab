import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row177.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row177.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row177.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layers_checked :
    row177.layers.all (coverLayerCheck row177.height row177.goods) = true := by
  change row177_layers.all (coverLayerCheck row177.height row177.goods) = true
  simp only [row177_layers, List.all_cons, List.all_nil,
    row177_layer000_checked,
    row177_layer001_checked,
    row177_layer002_checked,
    row177_layer003_checked,
    row177_layer004_checked,
    row177_layer005_checked,
    row177_layer006_checked,
    row177_layer007_checked,
    row177_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layers_checked
