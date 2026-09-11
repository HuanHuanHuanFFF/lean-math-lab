import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layers032

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layers_checked :
    row052.layers.all (coverLayerCheck row052.height row052.goods) = true := by
  change row052_layers.all (coverLayerCheck row052.height row052.goods) = true
  simp only [row052_layers, List.all_cons, List.all_nil,
    row052_layer000_checked,
    row052_layer001_checked,
    row052_layer002_checked,
    row052_layer003_checked,
    row052_layer004_checked,
    row052_layer005_checked,
    row052_layer006_checked,
    row052_layer007_checked,
    row052_layer008_checked,
    row052_layer009_checked,
    row052_layer010_checked,
    row052_layer011_checked,
    row052_layer012_checked,
    row052_layer013_checked,
    row052_layer014_checked,
    row052_layer015_checked,
    row052_layer016_checked,
    row052_layer017_checked,
    row052_layer018_checked,
    row052_layer019_checked,
    row052_layer020_checked,
    row052_layer021_checked,
    row052_layer022_checked,
    row052_layer023_checked,
    row052_layer024_checked,
    row052_layer025_checked,
    row052_layer026_checked,
    row052_layer027_checked,
    row052_layer028_checked,
    row052_layer029_checked,
    row052_layer030_checked,
    row052_layer031_checked,
    row052_layer032_checked,
    row052_layer033_checked,
    row052_layer034_checked,
    row052_layer035_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layers_checked
