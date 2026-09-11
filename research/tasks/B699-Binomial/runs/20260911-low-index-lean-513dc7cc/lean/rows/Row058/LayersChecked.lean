import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layers_checked :
    row058.layers.all (coverLayerCheck row058.height row058.goods) = true := by
  change row058_layers.all (coverLayerCheck row058.height row058.goods) = true
  simp only [row058_layers, List.all_cons, List.all_nil,
    row058_layer000_checked,
    row058_layer001_checked,
    row058_layer002_checked,
    row058_layer003_checked,
    row058_layer004_checked,
    row058_layer005_checked,
    row058_layer006_checked,
    row058_layer007_checked,
    row058_layer008_checked,
    row058_layer009_checked,
    row058_layer010_checked,
    row058_layer011_checked,
    row058_layer012_checked,
    row058_layer013_checked,
    row058_layer014_checked,
    row058_layer015_checked,
    row058_layer016_checked,
    row058_layer017_checked,
    row058_layer018_checked,
    row058_layer019_checked,
    row058_layer020_checked,
    row058_layer021_checked,
    row058_layer022_checked,
    row058_layer023_checked,
    row058_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layers_checked
