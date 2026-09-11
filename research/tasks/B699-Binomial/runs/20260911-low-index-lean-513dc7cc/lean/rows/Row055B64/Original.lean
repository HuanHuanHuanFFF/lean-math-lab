import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055B64.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055B64.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer008_pairs002 :
    row055_layer008_block002.all (fun I => row055_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer008_pairs003 :
    row055_layer008_block003.all (fun I => row055_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer008_pairs004 :
    row055_layer008_block004.all (fun I => row055_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer008_pairs005 :
    row055_layer008_block005.all (fun I => row055_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer008_chunks_eq : row055_layer008_chunks.flatten = row055_layer008_intervals := by
  rfl

theorem row055_layer008_pairs : pairCoverCheck row055_layer008_intervals row055_bounds = true := by
  apply pairCoverCheck_of_chunks row055_layer008_chunks_eq
  intro block hblock
  simp only [row055_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row055_layer008_pairs000
  · exact row055_layer008_pairs001
  · exact row055_layer008_pairs002
  · exact row055_layer008_pairs003
  · exact row055_layer008_pairs004
  · exact row055_layer008_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer008_checked :
    coverLayerCheck row055.height row055.goods { lower := 760320, upper := 1520640, M := 17 } = true := by
  exact coverLayerCheck_of_parts row055_layer008_arithmetic row055_layer008_enumeration row055_bounds_eq row055_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer009_checked :
    coverLayerCheck row055.height row055.goods { lower := 1520640, upper := 3041280, M := 15 } = true := by
  decide +kernel

theorem row055_layer010_checked :
    coverLayerCheck row055.height row055.goods { lower := 3041280, upper := 6082560, M := 14 } = true := by
  decide +kernel

theorem row055_layer011_checked :
    coverLayerCheck row055.height row055.goods { lower := 6082560, upper := 12165120, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer012_checked :
    coverLayerCheck row055.height row055.goods { lower := 12165120, upper := 24330240, M := 12 } = true := by
  decide +kernel

theorem row055_layer013_checked :
    coverLayerCheck row055.height row055.goods { lower := 24330240, upper := 48660480, M := 11 } = true := by
  decide +kernel

theorem row055_layer014_checked :
    coverLayerCheck row055.height row055.goods { lower := 48660480, upper := 97320960, M := 10 } = true := by
  decide +kernel

theorem row055_layer015_checked :
    coverLayerCheck row055.height row055.goods { lower := 97320960, upper := 194641920, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer016_checked :
    coverLayerCheck row055.height row055.goods { lower := 194641920, upper := 389283840, M := 8 } = true := by
  decide +kernel

theorem row055_layer017_checked :
    coverLayerCheck row055.height row055.goods { lower := 389283840, upper := 778567680, M := 8 } = true := by
  decide +kernel

theorem row055_layer018_checked :
    coverLayerCheck row055.height row055.goods { lower := 778567680, upper := 1557135360, M := 7 } = true := by
  decide +kernel

theorem row055_layer019_checked :
    coverLayerCheck row055.height row055.goods { lower := 1557135360, upper := 3114270720, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer020_checked :
    coverLayerCheck row055.height row055.goods { lower := 3114270720, upper := 6228541440, M := 6 } = true := by
  decide +kernel

theorem row055_layer021_checked :
    coverLayerCheck row055.height row055.goods { lower := 6228541440, upper := 12457082880, M := 5 } = true := by
  decide +kernel

theorem row055_layer022_checked :
    coverLayerCheck row055.height row055.goods { lower := 12457082880, upper := 24914165760, M := 5 } = true := by
  decide +kernel

theorem row055_layer023_checked :
    coverLayerCheck row055.height row055.goods { lower := 24914165760, upper := 49828331520, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer024_checked :
    coverLayerCheck row055.height row055.goods { lower := 49828331520, upper := 99656663040, M := 4 } = true := by
  decide +kernel

theorem row055_layer025_checked :
    coverLayerCheck row055.height row055.goods { lower := 99656663040, upper := 199313326080, M := 4 } = true := by
  decide +kernel

theorem row055_layer026_checked :
    coverLayerCheck row055.height row055.goods { lower := 199313326080, upper := 398626652160, M := 4 } = true := by
  decide +kernel

theorem row055_layer027_checked :
    coverLayerCheck row055.height row055.goods { lower := 398626652160, upper := 797253304320, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer028_checked :
    coverLayerCheck row055.height row055.goods { lower := 797253304320, upper := 1594506608640, M := 3 } = true := by
  decide +kernel

theorem row055_layer029_checked :
    coverLayerCheck row055.height row055.goods { lower := 1594506608640, upper := 3189013217280, M := 3 } = true := by
  decide +kernel

theorem row055_layer030_checked :
    coverLayerCheck row055.height row055.goods { lower := 3189013217280, upper := 6378026434560, M := 3 } = true := by
  decide +kernel

theorem row055_layer031_checked :
    coverLayerCheck row055.height row055.goods { lower := 6378026434560, upper := 12756052869120, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer032_checked :
    coverLayerCheck row055.height row055.goods { lower := 12756052869120, upper := 25512105738240, M := 2 } = true := by
  decide +kernel

theorem row055_layer033_checked :
    coverLayerCheck row055.height row055.goods { lower := 25512105738240, upper := 51024211476480, M := 2 } = true := by
  decide +kernel

theorem row055_layer034_checked :
    coverLayerCheck row055.height row055.goods { lower := 51024211476480, upper := 102048422952960, M := 2 } = true := by
  decide +kernel

theorem row055_layer035_checked :
    coverLayerCheck row055.height row055.goods { lower := 102048422952960, upper := 204096845905920, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer036_checked :
    coverLayerCheck row055.height row055.goods { lower := 204096845905920, upper := 408193691811840, M := 2 } = true := by
  decide +kernel

theorem row055_layer037_checked :
    coverLayerCheck row055.height row055.goods { lower := 408193691811840, upper := 816387383623680, M := 2 } = true := by
  decide +kernel

theorem row055_layer038_checked :
    coverLayerCheck row055.height row055.goods { lower := 816387383623680, upper := 1000000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer038_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layers_checked :
    row055.layers.all (coverLayerCheck row055.height row055.goods) = true := by
  change row055_layers.all (coverLayerCheck row055.height row055.goods) = true
  simp only [row055_layers, List.all_cons, List.all_nil,
    row055_layer000_checked,
    row055_layer001_checked,
    row055_layer002_checked,
    row055_layer003_checked,
    row055_layer004_checked,
    row055_layer005_checked,
    row055_layer006_checked,
    row055_layer007_checked,
    row055_layer008_checked,
    row055_layer009_checked,
    row055_layer010_checked,
    row055_layer011_checked,
    row055_layer012_checked,
    row055_layer013_checked,
    row055_layer014_checked,
    row055_layer015_checked,
    row055_layer016_checked,
    row055_layer017_checked,
    row055_layer018_checked,
    row055_layer019_checked,
    row055_layer020_checked,
    row055_layer021_checked,
    row055_layer022_checked,
    row055_layer023_checked,
    row055_layer024_checked,
    row055_layer025_checked,
    row055_layer026_checked,
    row055_layer027_checked,
    row055_layer028_checked,
    row055_layer029_checked,
    row055_layer030_checked,
    row055_layer031_checked,
    row055_layer032_checked,
    row055_layer033_checked,
    row055_layer034_checked,
    row055_layer035_checked,
    row055_layer036_checked,
    row055_layer037_checked,
    row055_layer038_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_checked : finiteCoverRowCheck row055 = true := by
  simp only [finiteCoverRowCheck, row055_registered, row055_goods_checked,
    row055_small_checked, row055_layerCover_checked, row055_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i055 :
    ∀ n j : ℕ, 1 ≤ 55 ∧ 55 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 55 ≤ p ∧ p ∣ Nat.choose n 55 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row055_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i055
