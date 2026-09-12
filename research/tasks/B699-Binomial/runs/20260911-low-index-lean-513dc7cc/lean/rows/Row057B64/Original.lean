import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_pairs006 :
    row057_layer003_block006.all (fun I => row057_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_chunks_eq : row057_layer003_chunks.flatten = row057_layer003_intervals := by
  rfl

theorem row057_layer003_pairs : pairCoverCheck row057_layer003_intervals row057_bounds = true := by
  apply pairCoverCheck_of_chunks row057_layer003_chunks_eq
  intro block hblock
  simp only [row057_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row057_layer003_pairs000
  · exact row057_layer003_pairs001
  · exact row057_layer003_pairs002
  · exact row057_layer003_pairs003
  · exact row057_layer003_pairs004
  · exact row057_layer003_pairs005
  · exact row057_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer003_checked :
    coverLayerCheck row057.height row057.goods { lower := 25536, upper := 51072, M := 20 } = true := by
  exact coverLayerCheck_of_parts row057_layer003_arithmetic row057_layer003_enumeration row057_bounds_eq row057_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row057_layer005_intervals : List ColouredInterval :=
  [(2, 106496, 106552), (2, 114688, 114744), (2, 122880, 122936), (2, 131072, 131128), (2, 114688, 114744), (2, 131072, 131128), (2, 147456, 147512), (2, 163840, 163896), (2, 180224, 180280), (2, 196608, 196664), (2, 131072, 131128), (2, 163840, 163896), (2, 196608, 196664), (2, 131072, 131128), (2, 196608, 196664), (2, 131072, 131128), (3, 118098, 118154), (3, 177147, 177203), (3, 177147, 177203), (5, 109375, 109431), (5, 125000, 125056), (5, 140625, 140681), (5, 156250, 156306), (5, 171875, 171931), (5, 187500, 187556), (5, 203125, 203181), (5, 156250, 156306), (7, 117649, 117705), (7, 134456, 134512), (7, 151263, 151319), (7, 168070, 168126), (7, 184877, 184933), (7, 201684, 201740), (7, 117649, 117705), (11, 102487, 102543), (11, 117128, 117184), (11, 131769, 131825), (11, 146410, 146466), (11, 161051, 161107), (11, 175692, 175748), (11, 190333, 190389), (11, 161051, 161107), (13, 114244, 114300), (13, 142805, 142861), (13, 171366, 171422), (13, 199927, 199983), (17, 167042, 167098), (23, 109503, 109559), (23, 121670, 121726), (23, 133837, 133893), (23, 146004, 146060), (23, 158171, 158227), (23, 170338, 170394), (23, 182505, 182561), (23, 194672, 194728), (29, 121945, 122001), (29, 146334, 146390), (29, 170723, 170779), (29, 195112, 195168), (31, 119164, 119220), (31, 148955, 149011), (31, 178746, 178802), (37, 151959, 152015), (37, 202612, 202668), (41, 137842, 137898), (43, 159014, 159070), (47, 103823, 103879), (53, 148877, 148933)]

def row057_layer005_block000 : List ColouredInterval :=
  [(2, 106496, 106552), (2, 114688, 114744), (2, 122880, 122936), (2, 131072, 131128), (2, 114688, 114744), (2, 131072, 131128), (2, 147456, 147512), (2, 163840, 163896), (2, 180224, 180280), (2, 196608, 196664), (2, 131072, 131128), (2, 163840, 163896), (2, 196608, 196664), (2, 131072, 131128), (2, 196608, 196664), (2, 131072, 131128)]

def row057_layer005_block001 : List ColouredInterval :=
  [(3, 118098, 118154), (3, 177147, 177203), (3, 177147, 177203), (5, 109375, 109431), (5, 125000, 125056), (5, 140625, 140681), (5, 156250, 156306), (5, 171875, 171931), (5, 187500, 187556), (5, 203125, 203181), (5, 156250, 156306), (7, 117649, 117705), (7, 134456, 134512), (7, 151263, 151319), (7, 168070, 168126), (7, 184877, 184933)]

def row057_layer005_block002 : List ColouredInterval :=
  [(7, 201684, 201740), (7, 117649, 117705), (11, 102487, 102543), (11, 117128, 117184), (11, 131769, 131825), (11, 146410, 146466), (11, 161051, 161107), (11, 175692, 175748), (11, 190333, 190389), (11, 161051, 161107), (13, 114244, 114300), (13, 142805, 142861), (13, 171366, 171422), (13, 199927, 199983), (17, 167042, 167098), (23, 109503, 109559)]

def row057_layer005_block003 : List ColouredInterval :=
  [(23, 121670, 121726), (23, 133837, 133893), (23, 146004, 146060), (23, 158171, 158227), (23, 170338, 170394), (23, 182505, 182561), (23, 194672, 194728), (29, 121945, 122001), (29, 146334, 146390), (29, 170723, 170779), (29, 195112, 195168), (31, 119164, 119220), (31, 148955, 149011), (31, 178746, 178802), (37, 151959, 152015), (37, 202612, 202668)]

def row057_layer005_block004 : List ColouredInterval :=
  [(41, 137842, 137898), (43, 159014, 159070), (47, 103823, 103879), (53, 148877, 148933)]

def row057_layer005_chunks : List (List ColouredInterval) :=
  [row057_layer005_block000, row057_layer005_block001, row057_layer005_block002, row057_layer005_block003, row057_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_arithmetic : LayerArithmeticValid row057.height { lower := 102144, upper := 204288, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_enumeration :
    activePowerIntervalList 57 16 102144 204288 = row057_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_pairs000 :
    row057_layer005_block000.all (fun I => row057_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_pairs001 :
    row057_layer005_block001.all (fun I => row057_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_pairs002 :
    row057_layer005_block002.all (fun I => row057_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_pairs003 :
    row057_layer005_block003.all (fun I => row057_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_pairs004 :
    row057_layer005_block004.all (fun I => row057_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row057_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_chunks_eq : row057_layer005_chunks.flatten = row057_layer005_intervals := by
  rfl

theorem row057_layer005_pairs : pairCoverCheck row057_layer005_intervals row057_bounds = true := by
  apply pairCoverCheck_of_chunks row057_layer005_chunks_eq
  intro block hblock
  simp only [row057_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row057_layer005_pairs000
  · exact row057_layer005_pairs001
  · exact row057_layer005_pairs002
  · exact row057_layer005_pairs003
  · exact row057_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer005_checked :
    coverLayerCheck row057.height row057.goods { lower := 102144, upper := 204288, M := 16 } = true := by
  exact coverLayerCheck_of_parts row057_layer005_arithmetic row057_layer005_enumeration row057_bounds_eq row057_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer004_checked :
    coverLayerCheck row057.height row057.goods { lower := 51072, upper := 102144, M := 18 } = true := by
  decide +kernel

theorem row057_layer006_checked :
    coverLayerCheck row057.height row057.goods { lower := 204288, upper := 408576, M := 14 } = true := by
  decide +kernel

theorem row057_layer007_checked :
    coverLayerCheck row057.height row057.goods { lower := 408576, upper := 817152, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer008_checked :
    coverLayerCheck row057.height row057.goods { lower := 817152, upper := 1634304, M := 11 } = true := by
  decide +kernel

theorem row057_layer009_checked :
    coverLayerCheck row057.height row057.goods { lower := 1634304, upper := 3268608, M := 10 } = true := by
  decide +kernel

theorem row057_layer010_checked :
    coverLayerCheck row057.height row057.goods { lower := 3268608, upper := 6537216, M := 9 } = true := by
  decide +kernel

theorem row057_layer011_checked :
    coverLayerCheck row057.height row057.goods { lower := 6537216, upper := 13074432, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer012_checked :
    coverLayerCheck row057.height row057.goods { lower := 13074432, upper := 26148864, M := 7 } = true := by
  decide +kernel

theorem row057_layer013_checked :
    coverLayerCheck row057.height row057.goods { lower := 26148864, upper := 52297728, M := 6 } = true := by
  decide +kernel

theorem row057_layer014_checked :
    coverLayerCheck row057.height row057.goods { lower := 52297728, upper := 104595456, M := 6 } = true := by
  decide +kernel

theorem row057_layer015_checked :
    coverLayerCheck row057.height row057.goods { lower := 104595456, upper := 209190912, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer016_checked :
    coverLayerCheck row057.height row057.goods { lower := 209190912, upper := 418381824, M := 4 } = true := by
  decide +kernel

theorem row057_layer017_checked :
    coverLayerCheck row057.height row057.goods { lower := 418381824, upper := 836763648, M := 4 } = true := by
  decide +kernel

theorem row057_layer018_checked :
    coverLayerCheck row057.height row057.goods { lower := 836763648, upper := 1673527296, M := 4 } = true := by
  decide +kernel

theorem row057_layer019_checked :
    coverLayerCheck row057.height row057.goods { lower := 1673527296, upper := 3347054592, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer020_checked :
    coverLayerCheck row057.height row057.goods { lower := 3347054592, upper := 6694109184, M := 3 } = true := by
  decide +kernel

theorem row057_layer021_checked :
    coverLayerCheck row057.height row057.goods { lower := 6694109184, upper := 13388218368, M := 3 } = true := by
  decide +kernel

theorem row057_layer022_checked :
    coverLayerCheck row057.height row057.goods { lower := 13388218368, upper := 26776436736, M := 2 } = true := by
  decide +kernel

theorem row057_layer023_checked :
    coverLayerCheck row057.height row057.goods { lower := 26776436736, upper := 53552873472, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer024_checked :
    coverLayerCheck row057.height row057.goods { lower := 53552873472, upper := 107105746944, M := 2 } = true := by
  decide +kernel

theorem row057_layer025_checked :
    coverLayerCheck row057.height row057.goods { lower := 107105746944, upper := 214211493888, M := 2 } = true := by
  decide +kernel

theorem row057_layer026_checked :
    coverLayerCheck row057.height row057.goods { lower := 214211493888, upper := 428422987776, M := 2 } = true := by
  decide +kernel

theorem row057_layer027_checked :
    coverLayerCheck row057.height row057.goods { lower := 428422987776, upper := 856845975552, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer028_checked :
    coverLayerCheck row057.height row057.goods { lower := 856845975552, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer028_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layers_checked :
    row057.layers.all (coverLayerCheck row057.height row057.goods) = true := by
  change row057_layers.all (coverLayerCheck row057.height row057.goods) = true
  simp only [row057_layers, List.all_cons, List.all_nil,
    row057_layer000_checked,
    row057_layer001_checked,
    row057_layer002_checked,
    row057_layer003_checked,
    row057_layer004_checked,
    row057_layer005_checked,
    row057_layer006_checked,
    row057_layer007_checked,
    row057_layer008_checked,
    row057_layer009_checked,
    row057_layer010_checked,
    row057_layer011_checked,
    row057_layer012_checked,
    row057_layer013_checked,
    row057_layer014_checked,
    row057_layer015_checked,
    row057_layer016_checked,
    row057_layer017_checked,
    row057_layer018_checked,
    row057_layer019_checked,
    row057_layer020_checked,
    row057_layer021_checked,
    row057_layer022_checked,
    row057_layer023_checked,
    row057_layer024_checked,
    row057_layer025_checked,
    row057_layer026_checked,
    row057_layer027_checked,
    row057_layer028_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_checked : finiteCoverRowCheck row057 = true := by
  simp only [finiteCoverRowCheck, row057_registered, row057_goods_checked,
    row057_small_checked, row057_layerCover_checked, row057_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i057 :
    ∀ n j : ℕ, 1 ≤ 57 ∧ 57 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 57 ≤ p ∧ p ∣ Nat.choose n 57 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row057_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i057
