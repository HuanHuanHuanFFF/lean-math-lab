import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111.Layers016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layers_checked :
    row111.layers.all (coverLayerCheck row111.height row111.goods) = true := by
  change row111_layers.all (coverLayerCheck row111.height row111.goods) = true
  simp only [row111_layers, List.all_cons, List.all_nil,
    row111_layer000_checked,
    row111_layer001_checked,
    row111_layer002_checked,
    row111_layer003_checked,
    row111_layer004_checked,
    row111_layer005_checked,
    row111_layer006_checked,
    row111_layer007_checked,
    row111_layer008_checked,
    row111_layer009_checked,
    row111_layer010_checked,
    row111_layer011_checked,
    row111_layer012_checked,
    row111_layer013_checked,
    row111_layer014_checked,
    row111_layer015_checked,
    row111_layer016_checked,
    row111_layer017_checked,
    row111_layer018_checked,
    row111_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layers_checked
