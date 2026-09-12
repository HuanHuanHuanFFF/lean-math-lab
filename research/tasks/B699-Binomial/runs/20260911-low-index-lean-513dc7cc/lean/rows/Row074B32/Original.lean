import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074B32.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074B32.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_pairs004 :
    row074_layer009_block004.all (fun I => row074_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_chunks_eq : row074_layer009_chunks.flatten = row074_layer009_intervals := by
  rfl

theorem row074_layer009_pairs : pairCoverCheck row074_layer009_intervals row074_bounds = true := by
  apply pairCoverCheck_of_chunks row074_layer009_chunks_eq
  intro block hblock
  simp only [row074_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row074_layer009_pairs000
  · exact row074_layer009_pairs001
  · exact row074_layer009_pairs002
  · exact row074_layer009_pairs003
  · exact row074_layer009_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_checked :
    coverLayerCheck row074.height row074.goods { lower := 2765824, upper := 5531648, M := 13 } = true := by
  exact coverLayerCheck_of_parts row074_layer009_arithmetic row074_layer009_enumeration row074_bounds_eq row074_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer010_checked :
    coverLayerCheck row074.height row074.goods { lower := 5531648, upper := 11063296, M := 12 } = true := by
  decide +kernel

theorem row074_layer011_checked :
    coverLayerCheck row074.height row074.goods { lower := 11063296, upper := 22126592, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer012_checked :
    coverLayerCheck row074.height row074.goods { lower := 22126592, upper := 44253184, M := 9 } = true := by
  decide +kernel

theorem row074_layer013_checked :
    coverLayerCheck row074.height row074.goods { lower := 44253184, upper := 88506368, M := 8 } = true := by
  decide +kernel

theorem row074_layer014_checked :
    coverLayerCheck row074.height row074.goods { lower := 88506368, upper := 177012736, M := 8 } = true := by
  decide +kernel

theorem row074_layer015_checked :
    coverLayerCheck row074.height row074.goods { lower := 177012736, upper := 354025472, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer016_checked :
    coverLayerCheck row074.height row074.goods { lower := 354025472, upper := 708050944, M := 6 } = true := by
  decide +kernel

theorem row074_layer017_checked :
    coverLayerCheck row074.height row074.goods { lower := 708050944, upper := 1416101888, M := 5 } = true := by
  decide +kernel

theorem row074_layer018_checked :
    coverLayerCheck row074.height row074.goods { lower := 1416101888, upper := 2832203776, M := 5 } = true := by
  decide +kernel

theorem row074_layer019_checked :
    coverLayerCheck row074.height row074.goods { lower := 2832203776, upper := 5664407552, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer020_checked :
    coverLayerCheck row074.height row074.goods { lower := 5664407552, upper := 11328815104, M := 4 } = true := by
  decide +kernel

theorem row074_layer021_checked :
    coverLayerCheck row074.height row074.goods { lower := 11328815104, upper := 22657630208, M := 4 } = true := by
  decide +kernel

theorem row074_layer022_checked :
    coverLayerCheck row074.height row074.goods { lower := 22657630208, upper := 45315260416, M := 3 } = true := by
  decide +kernel

theorem row074_layer023_checked :
    coverLayerCheck row074.height row074.goods { lower := 45315260416, upper := 90630520832, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer024_checked :
    coverLayerCheck row074.height row074.goods { lower := 90630520832, upper := 181261041664, M := 3 } = true := by
  decide +kernel

theorem row074_layer025_checked :
    coverLayerCheck row074.height row074.goods { lower := 181261041664, upper := 362522083328, M := 2 } = true := by
  decide +kernel

theorem row074_layer026_checked :
    coverLayerCheck row074.height row074.goods { lower := 362522083328, upper := 725044166656, M := 2 } = true := by
  decide +kernel

theorem row074_layer027_checked :
    coverLayerCheck row074.height row074.goods { lower := 725044166656, upper := 1450088333312, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer028_checked :
    coverLayerCheck row074.height row074.goods { lower := 1450088333312, upper := 2900176666624, M := 2 } = true := by
  decide +kernel

theorem row074_layer029_checked :
    coverLayerCheck row074.height row074.goods { lower := 2900176666624, upper := 5800353333248, M := 2 } = true := by
  decide +kernel

theorem row074_layer030_checked :
    coverLayerCheck row074.height row074.goods { lower := 5800353333248, upper := 10000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer030_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layers_checked :
    row074.layers.all (coverLayerCheck row074.height row074.goods) = true := by
  change row074_layers.all (coverLayerCheck row074.height row074.goods) = true
  simp only [row074_layers, List.all_cons, List.all_nil,
    row074_layer000_checked,
    row074_layer001_checked,
    row074_layer002_checked,
    row074_layer003_checked,
    row074_layer004_checked,
    row074_layer005_checked,
    row074_layer006_checked,
    row074_layer007_checked,
    row074_layer008_checked,
    row074_layer009_checked,
    row074_layer010_checked,
    row074_layer011_checked,
    row074_layer012_checked,
    row074_layer013_checked,
    row074_layer014_checked,
    row074_layer015_checked,
    row074_layer016_checked,
    row074_layer017_checked,
    row074_layer018_checked,
    row074_layer019_checked,
    row074_layer020_checked,
    row074_layer021_checked,
    row074_layer022_checked,
    row074_layer023_checked,
    row074_layer024_checked,
    row074_layer025_checked,
    row074_layer026_checked,
    row074_layer027_checked,
    row074_layer028_checked,
    row074_layer029_checked,
    row074_layer030_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_checked : finiteCoverRowCheck row074 = true := by
  simp only [finiteCoverRowCheck, row074_registered, row074_goods_checked,
    row074_small_checked, row074_layerCover_checked, row074_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i074 :
    ∀ n j : ℕ, 1 ≤ 74 ∧ 74 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 74 ≤ p ∧ p ∣ Nat.choose n 74 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row074_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i074
