import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row066B64.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer008_checked :
    coverLayerCheck row066.height row066.goods { lower := 1098240, upper := 2196480, M := 9 } = true := by
  decide +kernel

theorem row066_layer009_checked :
    coverLayerCheck row066.height row066.goods { lower := 2196480, upper := 4392960, M := 7 } = true := by
  decide +kernel

theorem row066_layer010_checked :
    coverLayerCheck row066.height row066.goods { lower := 4392960, upper := 8785920, M := 7 } = true := by
  decide +kernel

theorem row066_layer011_checked :
    coverLayerCheck row066.height row066.goods { lower := 8785920, upper := 17571840, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer012_checked :
    coverLayerCheck row066.height row066.goods { lower := 17571840, upper := 35143680, M := 5 } = true := by
  decide +kernel

theorem row066_layer013_checked :
    coverLayerCheck row066.height row066.goods { lower := 35143680, upper := 70287360, M := 4 } = true := by
  decide +kernel

theorem row066_layer014_checked :
    coverLayerCheck row066.height row066.goods { lower := 70287360, upper := 140574720, M := 4 } = true := by
  decide +kernel

theorem row066_layer015_checked :
    coverLayerCheck row066.height row066.goods { lower := 140574720, upper := 281149440, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer016_checked :
    coverLayerCheck row066.height row066.goods { lower := 281149440, upper := 562298880, M := 3 } = true := by
  decide +kernel

theorem row066_layer017_checked :
    coverLayerCheck row066.height row066.goods { lower := 562298880, upper := 1124597760, M := 3 } = true := by
  decide +kernel

theorem row066_layer018_checked :
    coverLayerCheck row066.height row066.goods { lower := 1124597760, upper := 2249195520, M := 2 } = true := by
  decide +kernel

theorem row066_layer019_checked :
    coverLayerCheck row066.height row066.goods { lower := 2249195520, upper := 4498391040, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer020_checked :
    coverLayerCheck row066.height row066.goods { lower := 4498391040, upper := 8996782080, M := 2 } = true := by
  decide +kernel

theorem row066_layer021_checked :
    coverLayerCheck row066.height row066.goods { lower := 8996782080, upper := 17993564160, M := 2 } = true := by
  decide +kernel

theorem row066_layer022_checked :
    coverLayerCheck row066.height row066.goods { lower := 17993564160, upper := 35987128320, M := 2 } = true := by
  decide +kernel

theorem row066_layer023_checked :
    coverLayerCheck row066.height row066.goods { lower := 35987128320, upper := 71974256640, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer024_checked :
    coverLayerCheck row066.height row066.goods { lower := 71974256640, upper := 100000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer024_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layers_checked :
    row066.layers.all (coverLayerCheck row066.height row066.goods) = true := by
  change row066_layers.all (coverLayerCheck row066.height row066.goods) = true
  simp only [row066_layers, List.all_cons, List.all_nil,
    row066_layer000_checked,
    row066_layer001_checked,
    row066_layer002_checked,
    row066_layer003_checked,
    row066_layer004_checked,
    row066_layer005_checked,
    row066_layer006_checked,
    row066_layer007_checked,
    row066_layer008_checked,
    row066_layer009_checked,
    row066_layer010_checked,
    row066_layer011_checked,
    row066_layer012_checked,
    row066_layer013_checked,
    row066_layer014_checked,
    row066_layer015_checked,
    row066_layer016_checked,
    row066_layer017_checked,
    row066_layer018_checked,
    row066_layer019_checked,
    row066_layer020_checked,
    row066_layer021_checked,
    row066_layer022_checked,
    row066_layer023_checked,
    row066_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_checked : finiteCoverRowCheck row066 = true := by
  simp only [finiteCoverRowCheck, row066_registered, row066_goods_checked,
    row066_small_checked, row066_layerCover_checked, row066_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i066 :
    ∀ n j : ℕ, 1 ≤ 66 ∧ 66 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 66 ≤ p ∧ p ∣ Nat.choose n 66 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row066_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i066
