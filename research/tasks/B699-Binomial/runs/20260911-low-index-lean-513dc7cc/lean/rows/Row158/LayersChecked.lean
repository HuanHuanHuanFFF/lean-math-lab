import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row158.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row158.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row158.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layers_checked :
    row158.layers.all (coverLayerCheck row158.height row158.goods) = true := by
  change row158_layers.all (coverLayerCheck row158.height row158.goods) = true
  simp only [row158_layers, List.all_cons, List.all_nil,
    row158_layer000_checked,
    row158_layer001_checked,
    row158_layer002_checked,
    row158_layer003_checked,
    row158_layer004_checked,
    row158_layer005_checked,
    row158_layer006_checked,
    row158_layer007_checked,
    row158_layer008_checked,
    row158_layer009_checked,
    row158_layer010_checked,
    row158_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layers_checked
