import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row094.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row094.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row094.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row094.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row094.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layers_checked :
    row094.layers.all (coverLayerCheck row094.height row094.goods) = true := by
  change row094_layers.all (coverLayerCheck row094.height row094.goods) = true
  simp only [row094_layers, List.all_cons, List.all_nil,
    row094_layer000_checked,
    row094_layer001_checked,
    row094_layer002_checked,
    row094_layer003_checked,
    row094_layer004_checked,
    row094_layer005_checked,
    row094_layer006_checked,
    row094_layer007_checked,
    row094_layer008_checked,
    row094_layer009_checked,
    row094_layer010_checked,
    row094_layer011_checked,
    row094_layer012_checked,
    row094_layer013_checked,
    row094_layer014_checked,
    row094_layer015_checked,
    row094_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layers_checked
