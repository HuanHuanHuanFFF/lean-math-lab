import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row119.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row119.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row119.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row119.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row119.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layers_checked :
    row119.layers.all (coverLayerCheck row119.height row119.goods) = true := by
  change row119_layers.all (coverLayerCheck row119.height row119.goods) = true
  simp only [row119_layers, List.all_cons, List.all_nil,
    row119_layer000_checked,
    row119_layer001_checked,
    row119_layer002_checked,
    row119_layer003_checked,
    row119_layer004_checked,
    row119_layer005_checked,
    row119_layer006_checked,
    row119_layer007_checked,
    row119_layer008_checked,
    row119_layer009_checked,
    row119_layer010_checked,
    row119_layer011_checked,
    row119_layer012_checked,
    row119_layer013_checked,
    row119_layer014_checked,
    row119_layer015_checked,
    row119_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layers_checked
