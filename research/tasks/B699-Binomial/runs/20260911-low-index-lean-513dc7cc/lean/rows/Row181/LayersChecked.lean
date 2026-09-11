import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row181.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row181.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row181.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layers_checked :
    row181.layers.all (coverLayerCheck row181.height row181.goods) = true := by
  change row181_layers.all (coverLayerCheck row181.height row181.goods) = true
  simp only [row181_layers, List.all_cons, List.all_nil,
    row181_layer000_checked,
    row181_layer001_checked,
    row181_layer002_checked,
    row181_layer003_checked,
    row181_layer004_checked,
    row181_layer005_checked,
    row181_layer006_checked,
    row181_layer007_checked,
    row181_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layers_checked
