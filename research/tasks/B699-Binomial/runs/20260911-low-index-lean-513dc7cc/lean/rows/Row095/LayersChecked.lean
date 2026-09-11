import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row095.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row095.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row095.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row095.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row095.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layers_checked :
    row095.layers.all (coverLayerCheck row095.height row095.goods) = true := by
  change row095_layers.all (coverLayerCheck row095.height row095.goods) = true
  simp only [row095_layers, List.all_cons, List.all_nil,
    row095_layer000_checked,
    row095_layer001_checked,
    row095_layer002_checked,
    row095_layer003_checked,
    row095_layer004_checked,
    row095_layer005_checked,
    row095_layer006_checked,
    row095_layer007_checked,
    row095_layer008_checked,
    row095_layer009_checked,
    row095_layer010_checked,
    row095_layer011_checked,
    row095_layer012_checked,
    row095_layer013_checked,
    row095_layer014_checked,
    row095_layer015_checked,
    row095_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layers_checked
