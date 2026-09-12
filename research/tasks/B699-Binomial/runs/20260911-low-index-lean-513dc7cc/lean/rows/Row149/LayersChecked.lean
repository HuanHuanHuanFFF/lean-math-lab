import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row149.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row149.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row149.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layers_checked :
    row149.layers.all (coverLayerCheck row149.height row149.goods) = true := by
  change row149_layers.all (coverLayerCheck row149.height row149.goods) = true
  simp only [row149_layers, List.all_cons, List.all_nil,
    row149_layer000_checked,
    row149_layer001_checked,
    row149_layer002_checked,
    row149_layer003_checked,
    row149_layer004_checked,
    row149_layer005_checked,
    row149_layer006_checked,
    row149_layer007_checked,
    row149_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layers_checked
