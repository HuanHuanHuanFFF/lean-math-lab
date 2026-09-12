import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075B32.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075B32.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_chunks_eq : row075_layer007_chunks.flatten = row075_layer007_intervals := by
  rfl

theorem row075_layer007_pairs : pairCoverCheck row075_layer007_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer007_chunks_eq
  intro block hblock
  simp only [row075_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row075_layer007_pairs000
  · exact row075_layer007_pairs001
  · exact row075_layer007_pairs002
  · exact row075_layer007_pairs003
  · exact row075_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_checked :
    coverLayerCheck row075.height row075.goods { lower := 710400, upper := 1420800, M := 14 } = true := by
  exact coverLayerCheck_of_parts row075_layer007_arithmetic row075_layer007_enumeration row075_bounds_eq row075_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer008_intervals : List ColouredInterval :=
  [(2, 1441792, 1441866), (2, 1572864, 1572938), (2, 1703936, 1704010), (2, 1572864, 1572938), (2, 1835008, 1835082), (2, 2097152, 2097226), (2, 2359296, 2359370), (2, 2621440, 2621514), (2, 1572864, 1572938), (2, 2097152, 2097226), (2, 2621440, 2621514), (2, 2097152, 2097226), (2, 2097152, 2097226), (3, 1594323, 1594397), (3, 2125764, 2125838), (3, 1594323, 1594397), (7, 1529437, 1529511), (7, 1647086, 1647160), (7, 2470629, 2470703), (11, 1449459, 1449533), (11, 1610510, 1610584), (11, 1771561, 1771635), (11, 1932612, 1932686), (11, 2093663, 2093737), (11, 1771561, 1771635), (13, 1485172, 1485246), (13, 1856465, 1856539), (13, 2227758, 2227832), (13, 2599051, 2599125), (17, 2839714, 2839788), (19, 1433531, 1433605), (19, 1563852, 1563926), (19, 1694173, 1694247), (19, 2476099, 2476173), (23, 1679046, 1679120), (23, 1958887, 1958961), (23, 2238728, 2238802), (23, 2518569, 2518643), (23, 2798410, 2798484), (29, 2121843, 2121917), (29, 2829124, 2829198), (31, 1847042, 1847116), (31, 2770563, 2770637), (37, 1874161, 1874235), (41, 2825761, 2825835), (53, 1488770, 1488844), (53, 1637647, 1637721), (53, 1786524, 1786598), (53, 1935401, 1935475), (59, 1437653, 1437727), (59, 1643032, 1643106), (59, 1848411, 1848485), (59, 2053790, 2053864), (59, 2259169, 2259243), (59, 2464548, 2464622), (59, 2669927, 2670001), (61, 1588867, 1588941), (61, 1815848, 1815922), (61, 2042829, 2042903), (61, 2269810, 2269884), (61, 2496791, 2496865), (61, 2723772, 2723846), (67, 1503815, 1503889), (67, 1804578, 1804652), (67, 2105341, 2105415), (67, 2406104, 2406178), (67, 2706867, 2706941), (71, 1431644, 1431718), (71, 1789555, 1789629), (71, 2147466, 2147540), (71, 2505377, 2505451), (73, 1556068, 1556142), (73, 1945085, 1945159), (73, 2334102, 2334176), (73, 2723119, 2723193)]

def row075_layer008_block000 : List ColouredInterval :=
  [(2, 1441792, 1441866), (2, 1572864, 1572938), (2, 1703936, 1704010), (2, 1572864, 1572938), (2, 1835008, 1835082), (2, 2097152, 2097226), (2, 2359296, 2359370), (2, 2621440, 2621514), (2, 1572864, 1572938), (2, 2097152, 2097226), (2, 2621440, 2621514), (2, 2097152, 2097226), (2, 2097152, 2097226), (3, 1594323, 1594397), (3, 2125764, 2125838), (3, 1594323, 1594397)]

def row075_layer008_block001 : List ColouredInterval :=
  [(7, 1529437, 1529511), (7, 1647086, 1647160), (7, 2470629, 2470703), (11, 1449459, 1449533), (11, 1610510, 1610584), (11, 1771561, 1771635), (11, 1932612, 1932686), (11, 2093663, 2093737), (11, 1771561, 1771635), (13, 1485172, 1485246), (13, 1856465, 1856539), (13, 2227758, 2227832), (13, 2599051, 2599125), (17, 2839714, 2839788), (19, 1433531, 1433605), (19, 1563852, 1563926)]

def row075_layer008_block002 : List ColouredInterval :=
  [(19, 1694173, 1694247), (19, 2476099, 2476173), (23, 1679046, 1679120), (23, 1958887, 1958961), (23, 2238728, 2238802), (23, 2518569, 2518643), (23, 2798410, 2798484), (29, 2121843, 2121917), (29, 2829124, 2829198), (31, 1847042, 1847116), (31, 2770563, 2770637), (37, 1874161, 1874235), (41, 2825761, 2825835), (53, 1488770, 1488844), (53, 1637647, 1637721), (53, 1786524, 1786598)]

def row075_layer008_block003 : List ColouredInterval :=
  [(53, 1935401, 1935475), (59, 1437653, 1437727), (59, 1643032, 1643106), (59, 1848411, 1848485), (59, 2053790, 2053864), (59, 2259169, 2259243), (59, 2464548, 2464622), (59, 2669927, 2670001), (61, 1588867, 1588941), (61, 1815848, 1815922), (61, 2042829, 2042903), (61, 2269810, 2269884), (61, 2496791, 2496865), (61, 2723772, 2723846), (67, 1503815, 1503889), (67, 1804578, 1804652)]

def row075_layer008_block004 : List ColouredInterval :=
  [(67, 2105341, 2105415), (67, 2406104, 2406178), (67, 2706867, 2706941), (71, 1431644, 1431718), (71, 1789555, 1789629), (71, 2147466, 2147540), (71, 2505377, 2505451), (73, 1556068, 1556142), (73, 1945085, 1945159), (73, 2334102, 2334176), (73, 2723119, 2723193)]

def row075_layer008_chunks : List (List ColouredInterval) :=
  [row075_layer008_block000, row075_layer008_block001, row075_layer008_block002, row075_layer008_block003, row075_layer008_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_arithmetic : LayerArithmeticValid row075.height { lower := 1420800, upper := 2841600, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_enumeration :
    activePowerIntervalList 75 13 1420800 2841600 = row075_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_pairs000 :
    row075_layer008_block000.all (fun I => row075_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_pairs001 :
    row075_layer008_block001.all (fun I => row075_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_pairs002 :
    row075_layer008_block002.all (fun I => row075_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_pairs003 :
    row075_layer008_block003.all (fun I => row075_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_pairs004 :
    row075_layer008_block004.all (fun I => row075_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_chunks_eq : row075_layer008_chunks.flatten = row075_layer008_intervals := by
  rfl

theorem row075_layer008_pairs : pairCoverCheck row075_layer008_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer008_chunks_eq
  intro block hblock
  simp only [row075_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row075_layer008_pairs000
  · exact row075_layer008_pairs001
  · exact row075_layer008_pairs002
  · exact row075_layer008_pairs003
  · exact row075_layer008_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer008_checked :
    coverLayerCheck row075.height row075.goods { lower := 1420800, upper := 2841600, M := 13 } = true := by
  exact coverLayerCheck_of_parts row075_layer008_arithmetic row075_layer008_enumeration row075_bounds_eq row075_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer009_checked :
    coverLayerCheck row075.height row075.goods { lower := 2841600, upper := 5683200, M := 11 } = true := by
  decide +kernel

theorem row075_layer010_checked :
    coverLayerCheck row075.height row075.goods { lower := 5683200, upper := 11366400, M := 10 } = true := by
  decide +kernel

theorem row075_layer011_checked :
    coverLayerCheck row075.height row075.goods { lower := 11366400, upper := 22732800, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer012_checked :
    coverLayerCheck row075.height row075.goods { lower := 22732800, upper := 45465600, M := 8 } = true := by
  decide +kernel

theorem row075_layer013_checked :
    coverLayerCheck row075.height row075.goods { lower := 45465600, upper := 90931200, M := 7 } = true := by
  decide +kernel

theorem row075_layer014_checked :
    coverLayerCheck row075.height row075.goods { lower := 90931200, upper := 181862400, M := 6 } = true := by
  decide +kernel

theorem row075_layer015_checked :
    coverLayerCheck row075.height row075.goods { lower := 181862400, upper := 363724800, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer016_checked :
    coverLayerCheck row075.height row075.goods { lower := 363724800, upper := 727449600, M := 5 } = true := by
  decide +kernel

theorem row075_layer017_checked :
    coverLayerCheck row075.height row075.goods { lower := 727449600, upper := 1454899200, M := 4 } = true := by
  decide +kernel

theorem row075_layer018_checked :
    coverLayerCheck row075.height row075.goods { lower := 1454899200, upper := 2909798400, M := 4 } = true := by
  decide +kernel

theorem row075_layer019_checked :
    coverLayerCheck row075.height row075.goods { lower := 2909798400, upper := 5819596800, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer020_checked :
    coverLayerCheck row075.height row075.goods { lower := 5819596800, upper := 11639193600, M := 3 } = true := by
  decide +kernel

theorem row075_layer021_checked :
    coverLayerCheck row075.height row075.goods { lower := 11639193600, upper := 23278387200, M := 3 } = true := by
  decide +kernel

theorem row075_layer022_checked :
    coverLayerCheck row075.height row075.goods { lower := 23278387200, upper := 46556774400, M := 3 } = true := by
  decide +kernel

theorem row075_layer023_checked :
    coverLayerCheck row075.height row075.goods { lower := 46556774400, upper := 93113548800, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer024_checked :
    coverLayerCheck row075.height row075.goods { lower := 93113548800, upper := 186227097600, M := 2 } = true := by
  decide +kernel

theorem row075_layer025_checked :
    coverLayerCheck row075.height row075.goods { lower := 186227097600, upper := 372454195200, M := 2 } = true := by
  decide +kernel

theorem row075_layer026_checked :
    coverLayerCheck row075.height row075.goods { lower := 372454195200, upper := 744908390400, M := 2 } = true := by
  decide +kernel

theorem row075_layer027_checked :
    coverLayerCheck row075.height row075.goods { lower := 744908390400, upper := 1489816780800, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer028_checked :
    coverLayerCheck row075.height row075.goods { lower := 1489816780800, upper := 2979633561600, M := 1 } = true := by
  decide +kernel

theorem row075_layer029_checked :
    coverLayerCheck row075.height row075.goods { lower := 2979633561600, upper := 5959267123200, M := 1 } = true := by
  decide +kernel

theorem row075_layer030_checked :
    coverLayerCheck row075.height row075.goods { lower := 5959267123200, upper := 10000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer030_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layers_checked :
    row075.layers.all (coverLayerCheck row075.height row075.goods) = true := by
  change row075_layers.all (coverLayerCheck row075.height row075.goods) = true
  simp only [row075_layers, List.all_cons, List.all_nil,
    row075_layer000_checked,
    row075_layer001_checked,
    row075_layer002_checked,
    row075_layer003_checked,
    row075_layer004_checked,
    row075_layer005_checked,
    row075_layer006_checked,
    row075_layer007_checked,
    row075_layer008_checked,
    row075_layer009_checked,
    row075_layer010_checked,
    row075_layer011_checked,
    row075_layer012_checked,
    row075_layer013_checked,
    row075_layer014_checked,
    row075_layer015_checked,
    row075_layer016_checked,
    row075_layer017_checked,
    row075_layer018_checked,
    row075_layer019_checked,
    row075_layer020_checked,
    row075_layer021_checked,
    row075_layer022_checked,
    row075_layer023_checked,
    row075_layer024_checked,
    row075_layer025_checked,
    row075_layer026_checked,
    row075_layer027_checked,
    row075_layer028_checked,
    row075_layer029_checked,
    row075_layer030_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_checked : finiteCoverRowCheck row075 = true := by
  simp only [finiteCoverRowCheck, row075_registered, row075_goods_checked,
    row075_small_checked, row075_layerCover_checked, row075_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i075 :
    ∀ n j : ℕ, 1 ≤ 75 ∧ 75 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 75 ≤ p ∧ p ∣ Nat.choose n 75 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row075_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i075
