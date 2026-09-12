import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row107.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row107.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row107.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row107.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row107.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layers_checked :
    row107.layers.all (coverLayerCheck row107.height row107.goods) = true := by
  change row107_layers.all (coverLayerCheck row107.height row107.goods) = true
  simp only [row107_layers, List.all_cons, List.all_nil,
    row107_layer000_checked,
    row107_layer001_checked,
    row107_layer002_checked,
    row107_layer003_checked,
    row107_layer004_checked,
    row107_layer005_checked,
    row107_layer006_checked,
    row107_layer007_checked,
    row107_layer008_checked,
    row107_layer009_checked,
    row107_layer010_checked,
    row107_layer011_checked,
    row107_layer012_checked,
    row107_layer013_checked,
    row107_layer014_checked,
    row107_layer015_checked,
    row107_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layers_checked
