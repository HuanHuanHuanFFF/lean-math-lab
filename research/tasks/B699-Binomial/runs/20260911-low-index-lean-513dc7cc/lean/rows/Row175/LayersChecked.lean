import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row175.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row175.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row175.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layers_checked :
    row175.layers.all (coverLayerCheck row175.height row175.goods) = true := by
  change row175_layers.all (coverLayerCheck row175.height row175.goods) = true
  simp only [row175_layers, List.all_cons, List.all_nil,
    row175_layer000_checked,
    row175_layer001_checked,
    row175_layer002_checked,
    row175_layer003_checked,
    row175_layer004_checked,
    row175_layer005_checked,
    row175_layer006_checked,
    row175_layer007_checked,
    row175_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layers_checked
