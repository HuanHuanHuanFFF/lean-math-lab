import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row166.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row166.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row166.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layers_checked :
    row166.layers.all (coverLayerCheck row166.height row166.goods) = true := by
  change row166_layers.all (coverLayerCheck row166.height row166.goods) = true
  simp only [row166_layers, List.all_cons, List.all_nil,
    row166_layer000_checked,
    row166_layer001_checked,
    row166_layer002_checked,
    row166_layer003_checked,
    row166_layer004_checked,
    row166_layer005_checked,
    row166_layer006_checked,
    row166_layer007_checked,
    row166_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layers_checked
