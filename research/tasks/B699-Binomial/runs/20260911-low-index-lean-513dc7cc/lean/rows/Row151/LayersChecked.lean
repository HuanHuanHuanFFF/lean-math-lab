import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row151.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row151.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row151.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layers_checked :
    row151.layers.all (coverLayerCheck row151.height row151.goods) = true := by
  change row151_layers.all (coverLayerCheck row151.height row151.goods) = true
  simp only [row151_layers, List.all_cons, List.all_nil,
    row151_layer000_checked,
    row151_layer001_checked,
    row151_layer002_checked,
    row151_layer003_checked,
    row151_layer004_checked,
    row151_layer005_checked,
    row151_layer006_checked,
    row151_layer007_checked,
    row151_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layers_checked
