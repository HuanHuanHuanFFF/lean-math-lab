import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row070.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row070.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row070.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row070.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row070.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row070.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row070.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layers_checked :
    row070.layers.all (coverLayerCheck row070.height row070.goods) = true := by
  change row070_layers.all (coverLayerCheck row070.height row070.goods) = true
  simp only [row070_layers, List.all_cons, List.all_nil,
    row070_layer000_checked,
    row070_layer001_checked,
    row070_layer002_checked,
    row070_layer003_checked,
    row070_layer004_checked,
    row070_layer005_checked,
    row070_layer006_checked,
    row070_layer007_checked,
    row070_layer008_checked,
    row070_layer009_checked,
    row070_layer010_checked,
    row070_layer011_checked,
    row070_layer012_checked,
    row070_layer013_checked,
    row070_layer014_checked,
    row070_layer015_checked,
    row070_layer016_checked,
    row070_layer017_checked,
    row070_layer018_checked,
    row070_layer019_checked,
    row070_layer020_checked,
    row070_layer021_checked,
    row070_layer022_checked,
    row070_layer023_checked,
    row070_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layers_checked
