import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row159.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row159.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row159.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layers_checked :
    row159.layers.all (coverLayerCheck row159.height row159.goods) = true := by
  change row159_layers.all (coverLayerCheck row159.height row159.goods) = true
  simp only [row159_layers, List.all_cons, List.all_nil,
    row159_layer000_checked,
    row159_layer001_checked,
    row159_layer002_checked,
    row159_layer003_checked,
    row159_layer004_checked,
    row159_layer005_checked,
    row159_layer006_checked,
    row159_layer007_checked,
    row159_layer008_checked,
    row159_layer009_checked,
    row159_layer010_checked,
    row159_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layers_checked
