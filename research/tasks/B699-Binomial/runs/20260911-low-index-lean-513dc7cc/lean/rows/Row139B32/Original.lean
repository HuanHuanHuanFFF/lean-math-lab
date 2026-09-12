import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row139B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row139B32.Block000

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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_checked : finiteCoverRowCheck row139 = true := by
  simp only [finiteCoverRowCheck, row139_registered, row139_goods_checked,
    row139_small_checked, row139_layerCover_checked, row139_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i139 :
    ∀ n j : ℕ, 1 ≤ 139 ∧ 139 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 139 ≤ p ∧ p ∣ Nat.choose n 139 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row139_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i139
