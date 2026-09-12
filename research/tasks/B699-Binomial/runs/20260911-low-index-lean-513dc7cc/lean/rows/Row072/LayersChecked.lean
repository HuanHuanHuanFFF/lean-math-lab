import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layers_checked :
    row072.layers.all (coverLayerCheck row072.height row072.goods) = true := by
  change row072_layers.all (coverLayerCheck row072.height row072.goods) = true
  simp only [row072_layers, List.all_cons, List.all_nil,
    row072_layer000_checked,
    row072_layer001_checked,
    row072_layer002_checked,
    row072_layer003_checked,
    row072_layer004_checked,
    row072_layer005_checked,
    row072_layer006_checked,
    row072_layer007_checked,
    row072_layer008_checked,
    row072_layer009_checked,
    row072_layer010_checked,
    row072_layer011_checked,
    row072_layer012_checked,
    row072_layer013_checked,
    row072_layer014_checked,
    row072_layer015_checked,
    row072_layer016_checked,
    row072_layer017_checked,
    row072_layer018_checked,
    row072_layer019_checked,
    row072_layer020_checked,
    row072_layer021_checked,
    row072_layer022_checked,
    row072_layer023_checked,
    row072_layer024_checked,
    row072_layer025_checked,
    row072_layer026_checked,
    row072_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layers_checked
