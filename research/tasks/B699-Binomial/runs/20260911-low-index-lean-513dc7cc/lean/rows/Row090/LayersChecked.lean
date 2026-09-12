import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090.Layers020

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layers_checked :
    row090.layers.all (coverLayerCheck row090.height row090.goods) = true := by
  change row090_layers.all (coverLayerCheck row090.height row090.goods) = true
  simp only [row090_layers, List.all_cons, List.all_nil,
    row090_layer000_checked,
    row090_layer001_checked,
    row090_layer002_checked,
    row090_layer003_checked,
    row090_layer004_checked,
    row090_layer005_checked,
    row090_layer006_checked,
    row090_layer007_checked,
    row090_layer008_checked,
    row090_layer009_checked,
    row090_layer010_checked,
    row090_layer011_checked,
    row090_layer012_checked,
    row090_layer013_checked,
    row090_layer014_checked,
    row090_layer015_checked,
    row090_layer016_checked,
    row090_layer017_checked,
    row090_layer018_checked,
    row090_layer019_checked,
    row090_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layers_checked
