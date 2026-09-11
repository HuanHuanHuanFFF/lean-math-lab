import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layers_checked :
    row081.layers.all (coverLayerCheck row081.height row081.goods) = true := by
  change row081_layers.all (coverLayerCheck row081.height row081.goods) = true
  simp only [row081_layers, List.all_cons, List.all_nil,
    row081_layer000_checked,
    row081_layer001_checked,
    row081_layer002_checked,
    row081_layer003_checked,
    row081_layer004_checked,
    row081_layer005_checked,
    row081_layer006_checked,
    row081_layer007_checked,
    row081_layer008_checked,
    row081_layer009_checked,
    row081_layer010_checked,
    row081_layer011_checked,
    row081_layer012_checked,
    row081_layer013_checked,
    row081_layer014_checked,
    row081_layer015_checked,
    row081_layer016_checked,
    row081_layer017_checked,
    row081_layer018_checked,
    row081_layer019_checked,
    row081_layer020_checked,
    row081_layer021_checked,
    row081_layer022_checked,
    row081_layer023_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layers_checked
