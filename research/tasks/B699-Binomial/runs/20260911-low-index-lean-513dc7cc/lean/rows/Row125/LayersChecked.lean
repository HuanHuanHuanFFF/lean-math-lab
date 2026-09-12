import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row125.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row125.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row125.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row125.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layers_checked :
    row125.layers.all (coverLayerCheck row125.height row125.goods) = true := by
  change row125_layers.all (coverLayerCheck row125.height row125.goods) = true
  simp only [row125_layers, List.all_cons, List.all_nil,
    row125_layer000_checked,
    row125_layer001_checked,
    row125_layer002_checked,
    row125_layer003_checked,
    row125_layer004_checked,
    row125_layer005_checked,
    row125_layer006_checked,
    row125_layer007_checked,
    row125_layer008_checked,
    row125_layer009_checked,
    row125_layer010_checked,
    row125_layer011_checked,
    row125_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layers_checked
