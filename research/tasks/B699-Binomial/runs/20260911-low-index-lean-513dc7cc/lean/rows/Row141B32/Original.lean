import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row141B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row141B32.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer012_checked :
    coverLayerCheck row141.height row141.goods { lower := 80855040, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layers_checked :
    row141.layers.all (coverLayerCheck row141.height row141.goods) = true := by
  change row141_layers.all (coverLayerCheck row141.height row141.goods) = true
  simp only [row141_layers, List.all_cons, List.all_nil,
    row141_layer000_checked,
    row141_layer001_checked,
    row141_layer002_checked,
    row141_layer003_checked,
    row141_layer004_checked,
    row141_layer005_checked,
    row141_layer006_checked,
    row141_layer007_checked,
    row141_layer008_checked,
    row141_layer009_checked,
    row141_layer010_checked,
    row141_layer011_checked,
    row141_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_checked : finiteCoverRowCheck row141 = true := by
  simp only [finiteCoverRowCheck, row141_registered, row141_goods_checked,
    row141_small_checked, row141_layerCover_checked, row141_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i141 :
    ∀ n j : ℕ, 1 ≤ 141 ∧ 141 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 141 ≤ p ∧ p ∣ Nat.choose n 141 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row141_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i141
