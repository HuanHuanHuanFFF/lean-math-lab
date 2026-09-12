import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row104.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row104.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row104.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row104.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row104.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layers_checked :
    row104.layers.all (coverLayerCheck row104.height row104.goods) = true := by
  change row104_layers.all (coverLayerCheck row104.height row104.goods) = true
  simp only [row104_layers, List.all_cons, List.all_nil,
    row104_layer000_checked,
    row104_layer001_checked,
    row104_layer002_checked,
    row104_layer003_checked,
    row104_layer004_checked,
    row104_layer005_checked,
    row104_layer006_checked,
    row104_layer007_checked,
    row104_layer008_checked,
    row104_layer009_checked,
    row104_layer010_checked,
    row104_layer011_checked,
    row104_layer012_checked,
    row104_layer013_checked,
    row104_layer014_checked,
    row104_layer015_checked,
    row104_layer016_checked,
    row104_layer017_checked,
    row104_layer018_checked,
    row104_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layers_checked
