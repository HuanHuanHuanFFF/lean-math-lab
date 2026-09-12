import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row145.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row145.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row145.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row145.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layers_checked :
    row145.layers.all (coverLayerCheck row145.height row145.goods) = true := by
  change row145_layers.all (coverLayerCheck row145.height row145.goods) = true
  simp only [row145_layers, List.all_cons, List.all_nil,
    row145_layer000_checked,
    row145_layer001_checked,
    row145_layer002_checked,
    row145_layer003_checked,
    row145_layer004_checked,
    row145_layer005_checked,
    row145_layer006_checked,
    row145_layer007_checked,
    row145_layer008_checked,
    row145_layer009_checked,
    row145_layer010_checked,
    row145_layer011_checked,
    row145_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layers_checked
