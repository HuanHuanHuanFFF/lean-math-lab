import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row121B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row121B32.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer008_checked :
    coverLayerCheck row121.height row121.goods { lower := 3717120, upper := 7434240, M := 4 } = true := by
  decide +kernel

theorem row121_layer009_checked :
    coverLayerCheck row121.height row121.goods { lower := 7434240, upper := 14868480, M := 3 } = true := by
  decide +kernel

theorem row121_layer010_checked :
    coverLayerCheck row121.height row121.goods { lower := 14868480, upper := 29736960, M := 2 } = true := by
  decide +kernel

theorem row121_layer011_checked :
    coverLayerCheck row121.height row121.goods { lower := 29736960, upper := 59473920, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer012_checked :
    coverLayerCheck row121.height row121.goods { lower := 59473920, upper := 100000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layers_checked :
    row121.layers.all (coverLayerCheck row121.height row121.goods) = true := by
  change row121_layers.all (coverLayerCheck row121.height row121.goods) = true
  simp only [row121_layers, List.all_cons, List.all_nil,
    row121_layer000_checked,
    row121_layer001_checked,
    row121_layer002_checked,
    row121_layer003_checked,
    row121_layer004_checked,
    row121_layer005_checked,
    row121_layer006_checked,
    row121_layer007_checked,
    row121_layer008_checked,
    row121_layer009_checked,
    row121_layer010_checked,
    row121_layer011_checked,
    row121_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_checked : finiteCoverRowCheck row121 = true := by
  simp only [finiteCoverRowCheck, row121_registered, row121_goods_checked,
    row121_small_checked, row121_layerCover_checked, row121_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i121 :
    ∀ n j : ℕ, 1 ≤ 121 ∧ 121 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 121 ≤ p ∧ p ∣ Nat.choose n 121 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row121_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i121
