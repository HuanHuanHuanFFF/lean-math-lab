import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row142.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row142.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row142.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row142.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layers_checked :
    row142.layers.all (coverLayerCheck row142.height row142.goods) = true := by
  change row142_layers.all (coverLayerCheck row142.height row142.goods) = true
  simp only [row142_layers, List.all_cons, List.all_nil,
    row142_layer000_checked,
    row142_layer001_checked,
    row142_layer002_checked,
    row142_layer003_checked,
    row142_layer004_checked,
    row142_layer005_checked,
    row142_layer006_checked,
    row142_layer007_checked,
    row142_layer008_checked,
    row142_layer009_checked,
    row142_layer010_checked,
    row142_layer011_checked,
    row142_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layers_checked
