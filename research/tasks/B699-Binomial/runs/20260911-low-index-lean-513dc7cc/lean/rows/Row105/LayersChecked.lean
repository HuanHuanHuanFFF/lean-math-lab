import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row105.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row105.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row105.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row105.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row105.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layers_checked :
    row105.layers.all (coverLayerCheck row105.height row105.goods) = true := by
  change row105_layers.all (coverLayerCheck row105.height row105.goods) = true
  simp only [row105_layers, List.all_cons, List.all_nil,
    row105_layer000_checked,
    row105_layer001_checked,
    row105_layer002_checked,
    row105_layer003_checked,
    row105_layer004_checked,
    row105_layer005_checked,
    row105_layer006_checked,
    row105_layer007_checked,
    row105_layer008_checked,
    row105_layer009_checked,
    row105_layer010_checked,
    row105_layer011_checked,
    row105_layer012_checked,
    row105_layer013_checked,
    row105_layer014_checked,
    row105_layer015_checked,
    row105_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layers_checked
