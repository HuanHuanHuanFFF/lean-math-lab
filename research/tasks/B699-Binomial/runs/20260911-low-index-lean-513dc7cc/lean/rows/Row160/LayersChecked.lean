import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row160.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row160.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row160.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layers_checked :
    row160.layers.all (coverLayerCheck row160.height row160.goods) = true := by
  change row160_layers.all (coverLayerCheck row160.height row160.goods) = true
  simp only [row160_layers, List.all_cons, List.all_nil,
    row160_layer000_checked,
    row160_layer001_checked,
    row160_layer002_checked,
    row160_layer003_checked,
    row160_layer004_checked,
    row160_layer005_checked,
    row160_layer006_checked,
    row160_layer007_checked,
    row160_layer008_checked,
    row160_layer009_checked,
    row160_layer010_checked,
    row160_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layers_checked
