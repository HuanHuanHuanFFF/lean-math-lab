import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row139.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row139.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row139.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row139.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layers_checked :
    row139.layers.all (coverLayerCheck row139.height row139.goods) = true := by
  change row139_layers.all (coverLayerCheck row139.height row139.goods) = true
  simp only [row139_layers, List.all_cons, List.all_nil,
    row139_layer000_checked,
    row139_layer001_checked,
    row139_layer002_checked,
    row139_layer003_checked,
    row139_layer004_checked,
    row139_layer005_checked,
    row139_layer006_checked,
    row139_layer007_checked,
    row139_layer008_checked,
    row139_layer009_checked,
    row139_layer010_checked,
    row139_layer011_checked,
    row139_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layers_checked
