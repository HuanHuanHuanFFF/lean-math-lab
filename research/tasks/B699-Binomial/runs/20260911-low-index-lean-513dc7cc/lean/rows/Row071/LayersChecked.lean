import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layers_checked :
    row071.layers.all (coverLayerCheck row071.height row071.goods) = true := by
  change row071_layers.all (coverLayerCheck row071.height row071.goods) = true
  simp only [row071_layers, List.all_cons, List.all_nil,
    row071_layer000_checked,
    row071_layer001_checked,
    row071_layer002_checked,
    row071_layer003_checked,
    row071_layer004_checked,
    row071_layer005_checked,
    row071_layer006_checked,
    row071_layer007_checked,
    row071_layer008_checked,
    row071_layer009_checked,
    row071_layer010_checked,
    row071_layer011_checked,
    row071_layer012_checked,
    row071_layer013_checked,
    row071_layer014_checked,
    row071_layer015_checked,
    row071_layer016_checked,
    row071_layer017_checked,
    row071_layer018_checked,
    row071_layer019_checked,
    row071_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layers_checked
