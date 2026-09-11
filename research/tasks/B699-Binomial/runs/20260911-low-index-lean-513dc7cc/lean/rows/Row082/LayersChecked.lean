import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layers_checked :
    row082.layers.all (coverLayerCheck row082.height row082.goods) = true := by
  change row082_layers.all (coverLayerCheck row082.height row082.goods) = true
  simp only [row082_layers, List.all_cons, List.all_nil,
    row082_layer000_checked,
    row082_layer001_checked,
    row082_layer002_checked,
    row082_layer003_checked,
    row082_layer004_checked,
    row082_layer005_checked,
    row082_layer006_checked,
    row082_layer007_checked,
    row082_layer008_checked,
    row082_layer009_checked,
    row082_layer010_checked,
    row082_layer011_checked,
    row082_layer012_checked,
    row082_layer013_checked,
    row082_layer014_checked,
    row082_layer015_checked,
    row082_layer016_checked,
    row082_layer017_checked,
    row082_layer018_checked,
    row082_layer019_checked,
    row082_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layers_checked
