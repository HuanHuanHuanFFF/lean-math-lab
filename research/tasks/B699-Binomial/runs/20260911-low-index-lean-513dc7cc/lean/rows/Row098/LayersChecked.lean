import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layers_checked :
    row098.layers.all (coverLayerCheck row098.height row098.goods) = true := by
  change row098_layers.all (coverLayerCheck row098.height row098.goods) = true
  simp only [row098_layers, List.all_cons, List.all_nil,
    row098_layer000_checked,
    row098_layer001_checked,
    row098_layer002_checked,
    row098_layer003_checked,
    row098_layer004_checked,
    row098_layer005_checked,
    row098_layer006_checked,
    row098_layer007_checked,
    row098_layer008_checked,
    row098_layer009_checked,
    row098_layer010_checked,
    row098_layer011_checked,
    row098_layer012_checked,
    row098_layer013_checked,
    row098_layer014_checked,
    row098_layer015_checked,
    row098_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layers_checked
