import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layers_checked :
    row103.layers.all (coverLayerCheck row103.height row103.goods) = true := by
  change row103_layers.all (coverLayerCheck row103.height row103.goods) = true
  simp only [row103_layers, List.all_cons, List.all_nil,
    row103_layer000_checked,
    row103_layer001_checked,
    row103_layer002_checked,
    row103_layer003_checked,
    row103_layer004_checked,
    row103_layer005_checked,
    row103_layer006_checked,
    row103_layer007_checked,
    row103_layer008_checked,
    row103_layer009_checked,
    row103_layer010_checked,
    row103_layer011_checked,
    row103_layer012_checked,
    row103_layer013_checked,
    row103_layer014_checked,
    row103_layer015_checked,
    row103_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layers_checked
