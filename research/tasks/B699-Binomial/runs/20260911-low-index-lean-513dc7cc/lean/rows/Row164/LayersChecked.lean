import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row164.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row164.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row164.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layers_checked :
    row164.layers.all (coverLayerCheck row164.height row164.goods) = true := by
  change row164_layers.all (coverLayerCheck row164.height row164.goods) = true
  simp only [row164_layers, List.all_cons, List.all_nil,
    row164_layer000_checked,
    row164_layer001_checked,
    row164_layer002_checked,
    row164_layer003_checked,
    row164_layer004_checked,
    row164_layer005_checked,
    row164_layer006_checked,
    row164_layer007_checked,
    row164_layer008_checked,
    row164_layer009_checked,
    row164_layer010_checked,
    row164_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layers_checked
