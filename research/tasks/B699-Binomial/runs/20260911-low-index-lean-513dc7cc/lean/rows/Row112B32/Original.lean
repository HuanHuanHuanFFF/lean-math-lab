import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row112B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row112B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs006 :
    row112_layer002_block006.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs007 :
    row112_layer002_block007.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs008 :
    row112_layer002_block008.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_chunks_eq : row112_layer002_chunks.flatten = row112_layer002_intervals := by
  rfl

theorem row112_layer002_pairs : pairCoverCheck row112_layer002_intervals row112_bounds = true := by
  apply pairCoverCheck_of_chunks row112_layer002_chunks_eq
  intro block hblock
  simp only [row112_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row112_layer002_pairs000
  · exact row112_layer002_pairs001
  · exact row112_layer002_pairs002
  · exact row112_layer002_pairs003
  · exact row112_layer002_pairs004
  · exact row112_layer002_pairs005
  · exact row112_layer002_pairs006
  · exact row112_layer002_pairs007
  · exact row112_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_checked :
    coverLayerCheck row112.height row112.goods { lower := 49728, upper := 99456, M := 18 } = true := by
  exact coverLayerCheck_of_parts row112_layer002_arithmetic row112_layer002_enumeration row112_bounds_eq row112_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row112_layer003_intervals : List ColouredInterval :=
  [(3, 118098, 118209), (3, 137781, 137892), (3, 157464, 157575), (3, 177147, 177258), (3, 196830, 196941), (3, 118098, 118209), (3, 177147, 177258), (3, 177147, 177258), (5, 109375, 109486), (5, 125000, 125111), (5, 140625, 140736), (5, 156250, 156361), (5, 171875, 171986), (5, 187500, 187611), (5, 156250, 156361), (7, 117649, 117760), (11, 102487, 102598), (11, 117128, 117239), (11, 131769, 131880), (11, 146410, 146521), (11, 161051, 161162), (11, 175692, 175803), (11, 190333, 190444), (11, 161051, 161162), (13, 114244, 114355), (13, 142805, 142916), (13, 171366, 171477), (17, 167042, 167153), (19, 102885, 102996), (19, 130321, 130432), (23, 109503, 109614), (23, 121670, 121781), (23, 133837, 133948), (23, 146004, 146115), (23, 158171, 158282), (23, 170338, 170449), (23, 182505, 182616), (29, 121945, 122056), (29, 146334, 146445), (29, 170723, 170834), (29, 195112, 195223), (31, 119164, 119275), (31, 148955, 149066), (31, 178746, 178857), (37, 101306, 101417), (37, 151959, 152070), (41, 137842, 137953), (43, 159014, 159125), (47, 103823, 103934), (53, 148877, 148988), (83, 103335, 103446), (89, 102973, 103084), (89, 110894, 111005), (89, 118815, 118926), (97, 103499, 103610), (97, 112908, 113019), (97, 122317, 122428), (97, 131726, 131837), (97, 141135, 141246), (101, 102010, 102121), (101, 112211, 112322), (101, 122412, 122523), (101, 132613, 132724), (101, 142814, 142925), (101, 153015, 153126), (103, 106090, 106201), (103, 116699, 116810), (103, 127308, 127419), (103, 137917, 138028), (103, 148526, 148637), (103, 159135, 159246), (107, 103041, 103152), (107, 114490, 114601), (107, 125939, 126050), (107, 137388, 137499), (107, 148837, 148948), (107, 160286, 160397), (107, 171735, 171846), (109, 106929, 107040), (109, 118810, 118921), (109, 130691, 130802), (109, 142572, 142683), (109, 154453, 154564), (109, 166334, 166445), (109, 178215, 178326)]

def row112_layer003_block000 : List ColouredInterval :=
  [(3, 118098, 118209), (3, 137781, 137892), (3, 157464, 157575), (3, 177147, 177258), (3, 196830, 196941), (3, 118098, 118209), (3, 177147, 177258), (3, 177147, 177258), (5, 109375, 109486), (5, 125000, 125111), (5, 140625, 140736), (5, 156250, 156361), (5, 171875, 171986), (5, 187500, 187611), (5, 156250, 156361), (7, 117649, 117760)]

def row112_layer003_block001 : List ColouredInterval :=
  [(11, 102487, 102598), (11, 117128, 117239), (11, 131769, 131880), (11, 146410, 146521), (11, 161051, 161162), (11, 175692, 175803), (11, 190333, 190444), (11, 161051, 161162), (13, 114244, 114355), (13, 142805, 142916), (13, 171366, 171477), (17, 167042, 167153), (19, 102885, 102996), (19, 130321, 130432), (23, 109503, 109614), (23, 121670, 121781)]

def row112_layer003_block002 : List ColouredInterval :=
  [(23, 133837, 133948), (23, 146004, 146115), (23, 158171, 158282), (23, 170338, 170449), (23, 182505, 182616), (29, 121945, 122056), (29, 146334, 146445), (29, 170723, 170834), (29, 195112, 195223), (31, 119164, 119275), (31, 148955, 149066), (31, 178746, 178857), (37, 101306, 101417), (37, 151959, 152070), (41, 137842, 137953), (43, 159014, 159125)]

def row112_layer003_block003 : List ColouredInterval :=
  [(47, 103823, 103934), (53, 148877, 148988), (83, 103335, 103446), (89, 102973, 103084), (89, 110894, 111005), (89, 118815, 118926), (97, 103499, 103610), (97, 112908, 113019), (97, 122317, 122428), (97, 131726, 131837), (97, 141135, 141246), (101, 102010, 102121), (101, 112211, 112322), (101, 122412, 122523), (101, 132613, 132724), (101, 142814, 142925)]

def row112_layer003_block004 : List ColouredInterval :=
  [(101, 153015, 153126), (103, 106090, 106201), (103, 116699, 116810), (103, 127308, 127419), (103, 137917, 138028), (103, 148526, 148637), (103, 159135, 159246), (107, 103041, 103152), (107, 114490, 114601), (107, 125939, 126050), (107, 137388, 137499), (107, 148837, 148948), (107, 160286, 160397), (107, 171735, 171846), (109, 106929, 107040), (109, 118810, 118921)]

def row112_layer003_block005 : List ColouredInterval :=
  [(109, 130691, 130802), (109, 142572, 142683), (109, 154453, 154564), (109, 166334, 166445), (109, 178215, 178326)]

def row112_layer003_chunks : List (List ColouredInterval) :=
  [row112_layer003_block000, row112_layer003_block001, row112_layer003_block002, row112_layer003_block003, row112_layer003_block004, row112_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_arithmetic : LayerArithmeticValid row112.height { lower := 99456, upper := 198912, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_enumeration :
    activePowerIntervalList 112 15 99456 198912 = row112_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_pairs000 :
    row112_layer003_block000.all (fun I => row112_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_pairs001 :
    row112_layer003_block001.all (fun I => row112_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_pairs002 :
    row112_layer003_block002.all (fun I => row112_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_pairs003 :
    row112_layer003_block003.all (fun I => row112_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_pairs004 :
    row112_layer003_block004.all (fun I => row112_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_pairs005 :
    row112_layer003_block005.all (fun I => row112_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_chunks_eq : row112_layer003_chunks.flatten = row112_layer003_intervals := by
  rfl

theorem row112_layer003_pairs : pairCoverCheck row112_layer003_intervals row112_bounds = true := by
  apply pairCoverCheck_of_chunks row112_layer003_chunks_eq
  intro block hblock
  simp only [row112_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row112_layer003_pairs000
  · exact row112_layer003_pairs001
  · exact row112_layer003_pairs002
  · exact row112_layer003_pairs003
  · exact row112_layer003_pairs004
  · exact row112_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer003_checked :
    coverLayerCheck row112.height row112.goods { lower := 99456, upper := 198912, M := 15 } = true := by
  exact coverLayerCheck_of_parts row112_layer003_arithmetic row112_layer003_enumeration row112_bounds_eq row112_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer004_checked :
    coverLayerCheck row112.height row112.goods { lower := 198912, upper := 397824, M := 12 } = true := by
  decide +kernel

theorem row112_layer005_checked :
    coverLayerCheck row112.height row112.goods { lower := 397824, upper := 795648, M := 10 } = true := by
  decide +kernel

theorem row112_layer006_checked :
    coverLayerCheck row112.height row112.goods { lower := 795648, upper := 1591296, M := 9 } = true := by
  decide +kernel

theorem row112_layer007_checked :
    coverLayerCheck row112.height row112.goods { lower := 1591296, upper := 3182592, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer008_checked :
    coverLayerCheck row112.height row112.goods { lower := 3182592, upper := 6365184, M := 6 } = true := by
  decide +kernel

theorem row112_layer009_checked :
    coverLayerCheck row112.height row112.goods { lower := 6365184, upper := 12730368, M := 5 } = true := by
  decide +kernel

theorem row112_layer010_checked :
    coverLayerCheck row112.height row112.goods { lower := 12730368, upper := 25460736, M := 4 } = true := by
  decide +kernel

theorem row112_layer011_checked :
    coverLayerCheck row112.height row112.goods { lower := 25460736, upper := 50921472, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer012_checked :
    coverLayerCheck row112.height row112.goods { lower := 50921472, upper := 101842944, M := 3 } = true := by
  decide +kernel

theorem row112_layer013_checked :
    coverLayerCheck row112.height row112.goods { lower := 101842944, upper := 203685888, M := 3 } = true := by
  decide +kernel

theorem row112_layer014_checked :
    coverLayerCheck row112.height row112.goods { lower := 203685888, upper := 407371776, M := 2 } = true := by
  decide +kernel

theorem row112_layer015_checked :
    coverLayerCheck row112.height row112.goods { lower := 407371776, upper := 814743552, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer016_checked :
    coverLayerCheck row112.height row112.goods { lower := 814743552, upper := 1629487104, M := 2 } = true := by
  decide +kernel

theorem row112_layer017_checked :
    coverLayerCheck row112.height row112.goods { lower := 1629487104, upper := 3258974208, M := 1 } = true := by
  decide +kernel

theorem row112_layer018_checked :
    coverLayerCheck row112.height row112.goods { lower := 3258974208, upper := 6517948416, M := 1 } = true := by
  decide +kernel

theorem row112_layer019_checked :
    coverLayerCheck row112.height row112.goods { lower := 6517948416, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layers_checked :
    row112.layers.all (coverLayerCheck row112.height row112.goods) = true := by
  change row112_layers.all (coverLayerCheck row112.height row112.goods) = true
  simp only [row112_layers, List.all_cons, List.all_nil,
    row112_layer000_checked,
    row112_layer001_checked,
    row112_layer002_checked,
    row112_layer003_checked,
    row112_layer004_checked,
    row112_layer005_checked,
    row112_layer006_checked,
    row112_layer007_checked,
    row112_layer008_checked,
    row112_layer009_checked,
    row112_layer010_checked,
    row112_layer011_checked,
    row112_layer012_checked,
    row112_layer013_checked,
    row112_layer014_checked,
    row112_layer015_checked,
    row112_layer016_checked,
    row112_layer017_checked,
    row112_layer018_checked,
    row112_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_checked : finiteCoverRowCheck row112 = true := by
  simp only [finiteCoverRowCheck, row112_registered, row112_goods_checked,
    row112_small_checked, row112_layerCover_checked, row112_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i112 :
    ∀ n j : ℕ, 1 ≤ 112 ∧ 112 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 112 ≤ p ∧ p ∣ Nat.choose n 112 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row112_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i112
