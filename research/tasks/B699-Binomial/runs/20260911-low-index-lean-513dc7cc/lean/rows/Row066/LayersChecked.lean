import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row066.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row066.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row066.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row066.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row066.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row066.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row066.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layers_checked :
    row066.layers.all (coverLayerCheck row066.height row066.goods) = true := by
  change row066_layers.all (coverLayerCheck row066.height row066.goods) = true
  simp only [row066_layers, List.all_cons, List.all_nil,
    row066_layer000_checked,
    row066_layer001_checked,
    row066_layer002_checked,
    row066_layer003_checked,
    row066_layer004_checked,
    row066_layer005_checked,
    row066_layer006_checked,
    row066_layer007_checked,
    row066_layer008_checked,
    row066_layer009_checked,
    row066_layer010_checked,
    row066_layer011_checked,
    row066_layer012_checked,
    row066_layer013_checked,
    row066_layer014_checked,
    row066_layer015_checked,
    row066_layer016_checked,
    row066_layer017_checked,
    row066_layer018_checked,
    row066_layer019_checked,
    row066_layer020_checked,
    row066_layer021_checked,
    row066_layer022_checked,
    row066_layer023_checked,
    row066_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layers_checked
