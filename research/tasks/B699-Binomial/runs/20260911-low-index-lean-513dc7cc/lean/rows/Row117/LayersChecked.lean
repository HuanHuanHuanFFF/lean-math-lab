import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row117.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row117.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row117.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row117.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row117.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layers_checked :
    row117.layers.all (coverLayerCheck row117.height row117.goods) = true := by
  change row117_layers.all (coverLayerCheck row117.height row117.goods) = true
  simp only [row117_layers, List.all_cons, List.all_nil,
    row117_layer000_checked,
    row117_layer001_checked,
    row117_layer002_checked,
    row117_layer003_checked,
    row117_layer004_checked,
    row117_layer005_checked,
    row117_layer006_checked,
    row117_layer007_checked,
    row117_layer008_checked,
    row117_layer009_checked,
    row117_layer010_checked,
    row117_layer011_checked,
    row117_layer012_checked,
    row117_layer013_checked,
    row117_layer014_checked,
    row117_layer015_checked,
    row117_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layers_checked
