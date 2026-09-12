import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row171.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row171.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row171.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layers_checked :
    row171.layers.all (coverLayerCheck row171.height row171.goods) = true := by
  change row171_layers.all (coverLayerCheck row171.height row171.goods) = true
  simp only [row171_layers, List.all_cons, List.all_nil,
    row171_layer000_checked,
    row171_layer001_checked,
    row171_layer002_checked,
    row171_layer003_checked,
    row171_layer004_checked,
    row171_layer005_checked,
    row171_layer006_checked,
    row171_layer007_checked,
    row171_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layers_checked
