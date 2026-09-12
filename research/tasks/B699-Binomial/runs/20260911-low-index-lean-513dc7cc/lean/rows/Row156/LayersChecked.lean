import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row156.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row156.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row156.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layers_checked :
    row156.layers.all (coverLayerCheck row156.height row156.goods) = true := by
  change row156_layers.all (coverLayerCheck row156.height row156.goods) = true
  simp only [row156_layers, List.all_cons, List.all_nil,
    row156_layer000_checked,
    row156_layer001_checked,
    row156_layer002_checked,
    row156_layer003_checked,
    row156_layer004_checked,
    row156_layer005_checked,
    row156_layer006_checked,
    row156_layer007_checked,
    row156_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layers_checked
