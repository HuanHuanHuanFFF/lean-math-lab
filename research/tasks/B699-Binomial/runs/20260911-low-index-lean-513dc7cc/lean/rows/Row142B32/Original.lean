import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row142B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row142B32.Block000

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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_checked : finiteCoverRowCheck row142 = true := by
  simp only [finiteCoverRowCheck, row142_registered, row142_goods_checked,
    row142_small_checked, row142_layerCover_checked, row142_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i142 :
    ∀ n j : ℕ, 1 ≤ 142 ∧ 142 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 142 ≤ p ∧ p ∣ Nat.choose n 142 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row142_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i142
