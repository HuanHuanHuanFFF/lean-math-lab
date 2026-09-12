import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row088.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row088.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row088.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row088.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row088.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layers_checked :
    row088.layers.all (coverLayerCheck row088.height row088.goods) = true := by
  change row088_layers.all (coverLayerCheck row088.height row088.goods) = true
  simp only [row088_layers, List.all_cons, List.all_nil,
    row088_layer000_checked,
    row088_layer001_checked,
    row088_layer002_checked,
    row088_layer003_checked,
    row088_layer004_checked,
    row088_layer005_checked,
    row088_layer006_checked,
    row088_layer007_checked,
    row088_layer008_checked,
    row088_layer009_checked,
    row088_layer010_checked,
    row088_layer011_checked,
    row088_layer012_checked,
    row088_layer013_checked,
    row088_layer014_checked,
    row088_layer015_checked,
    row088_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layers_checked
