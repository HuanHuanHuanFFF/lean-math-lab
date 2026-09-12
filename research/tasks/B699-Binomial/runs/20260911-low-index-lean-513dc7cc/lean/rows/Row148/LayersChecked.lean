import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row148.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row148.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row148.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layers_checked :
    row148.layers.all (coverLayerCheck row148.height row148.goods) = true := by
  change row148_layers.all (coverLayerCheck row148.height row148.goods) = true
  simp only [row148_layers, List.all_cons, List.all_nil,
    row148_layer000_checked,
    row148_layer001_checked,
    row148_layer002_checked,
    row148_layer003_checked,
    row148_layer004_checked,
    row148_layer005_checked,
    row148_layer006_checked,
    row148_layer007_checked,
    row148_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layers_checked
