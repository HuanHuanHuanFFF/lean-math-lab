import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row120.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row120.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row120.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row120.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row120.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layers_checked :
    row120.layers.all (coverLayerCheck row120.height row120.goods) = true := by
  change row120_layers.all (coverLayerCheck row120.height row120.goods) = true
  simp only [row120_layers, List.all_cons, List.all_nil,
    row120_layer000_checked,
    row120_layer001_checked,
    row120_layer002_checked,
    row120_layer003_checked,
    row120_layer004_checked,
    row120_layer005_checked,
    row120_layer006_checked,
    row120_layer007_checked,
    row120_layer008_checked,
    row120_layer009_checked,
    row120_layer010_checked,
    row120_layer011_checked,
    row120_layer012_checked,
    row120_layer013_checked,
    row120_layer014_checked,
    row120_layer015_checked,
    row120_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layers_checked
