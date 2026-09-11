import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layers_checked :
    row092.layers.all (coverLayerCheck row092.height row092.goods) = true := by
  change row092_layers.all (coverLayerCheck row092.height row092.goods) = true
  simp only [row092_layers, List.all_cons, List.all_nil,
    row092_layer000_checked,
    row092_layer001_checked,
    row092_layer002_checked,
    row092_layer003_checked,
    row092_layer004_checked,
    row092_layer005_checked,
    row092_layer006_checked,
    row092_layer007_checked,
    row092_layer008_checked,
    row092_layer009_checked,
    row092_layer010_checked,
    row092_layer011_checked,
    row092_layer012_checked,
    row092_layer013_checked,
    row092_layer014_checked,
    row092_layer015_checked,
    row092_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layers_checked
