import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row161.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row161.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row161.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layers_checked :
    row161.layers.all (coverLayerCheck row161.height row161.goods) = true := by
  change row161_layers.all (coverLayerCheck row161.height row161.goods) = true
  simp only [row161_layers, List.all_cons, List.all_nil,
    row161_layer000_checked,
    row161_layer001_checked,
    row161_layer002_checked,
    row161_layer003_checked,
    row161_layer004_checked,
    row161_layer005_checked,
    row161_layer006_checked,
    row161_layer007_checked,
    row161_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layers_checked
