import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row065.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row065.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row065.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row065.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row065.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row065.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row065.Layers024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layers_checked :
    row065.layers.all (coverLayerCheck row065.height row065.goods) = true := by
  change row065_layers.all (coverLayerCheck row065.height row065.goods) = true
  simp only [row065_layers, List.all_cons, List.all_nil,
    row065_layer000_checked,
    row065_layer001_checked,
    row065_layer002_checked,
    row065_layer003_checked,
    row065_layer004_checked,
    row065_layer005_checked,
    row065_layer006_checked,
    row065_layer007_checked,
    row065_layer008_checked,
    row065_layer009_checked,
    row065_layer010_checked,
    row065_layer011_checked,
    row065_layer012_checked,
    row065_layer013_checked,
    row065_layer014_checked,
    row065_layer015_checked,
    row065_layer016_checked,
    row065_layer017_checked,
    row065_layer018_checked,
    row065_layer019_checked,
    row065_layer020_checked,
    row065_layer021_checked,
    row065_layer022_checked,
    row065_layer023_checked,
    row065_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layers_checked
