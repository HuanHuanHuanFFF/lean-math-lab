import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row150B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_arithmetic : LayerArithmeticValid row150.height { lower := 44700, upper := 89400, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_enumeration :
    activePowerIntervalList 150 11 44700 89400 = row150_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_pairs000 :
    row150_layer001_block000.all (fun I => row150_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_pairs001 :
    row150_layer001_block001.all (fun I => row150_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_pairs002 :
    row150_layer001_block002.all (fun I => row150_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_pairs003 :
    row150_layer001_block003.all (fun I => row150_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_pairs004 :
    row150_layer001_block004.all (fun I => row150_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_pairs005 :
    row150_layer001_block005.all (fun I => row150_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_chunks_eq : row150_layer001_chunks.flatten = row150_layer001_intervals := by
  rfl

theorem row150_layer001_pairs : pairCoverCheck row150_layer001_intervals row150_bounds = true := by
  apply pairCoverCheck_of_chunks row150_layer001_chunks_eq
  intro block hblock
  simp only [row150_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row150_layer001_pairs000
  · exact row150_layer001_pairs001
  · exact row150_layer001_pairs002
  · exact row150_layer001_pairs003
  · exact row150_layer001_pairs004
  · exact row150_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer001_checked :
    coverLayerCheck row150.height row150.goods { lower := 44700, upper := 89400, M := 11 } = true := by
  exact coverLayerCheck_of_parts row150_layer001_arithmetic row150_layer001_enumeration row150_bounds_eq row150_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row150_layer002_intervals : List ColouredInterval :=
  [(2, 98304, 98453), (2, 131072, 131221), (2, 131072, 131221), (2, 131072, 131221), (3, 118098, 118247), (3, 177147, 177296), (3, 177147, 177296), (7, 100842, 100991), (7, 117649, 117798), (7, 134456, 134605), (7, 151263, 151412), (7, 117649, 117798), (11, 102487, 102636), (11, 117128, 117277), (11, 131769, 131918), (11, 161051, 161200), (13, 114244, 114393), (13, 142805, 142954), (13, 171366, 171515), (17, 167042, 167191), (19, 130321, 130470), (23, 97336, 97485), (23, 109503, 109652), (29, 97556, 97705), (29, 121945, 122094), (29, 146334, 146483), (29, 170723, 170872), (31, 89400, 89522), (31, 119164, 119313), (31, 148955, 149104), (31, 178746, 178799), (37, 101306, 101455), (37, 151959, 152108), (41, 137842, 137991), (43, 159014, 159163), (47, 103823, 103972), (53, 148877, 149026), (101, 91809, 91958), (103, 95481, 95630), (107, 91592, 91741), (107, 103041, 103190), (109, 95048, 95197), (109, 106929, 107078), (113, 89400, 89532), (113, 102152, 102301), (113, 114921, 115070), (127, 96774, 96923), (127, 112903, 113052), (127, 129032, 129181), (127, 145161, 145310), (131, 102966, 103115), (131, 120127, 120276), (131, 137288, 137437), (131, 154449, 154598), (137, 93845, 93994), (137, 112614, 112763), (137, 131383, 131532), (137, 150152, 150301), (137, 168921, 169070), (139, 96605, 96754), (139, 115926, 116075), (139, 135247, 135396), (139, 154568, 154717), (139, 173889, 174038), (149, 111005, 111154), (149, 133206, 133355), (149, 155407, 155556), (149, 177608, 177757)]

def row150_layer002_block000 : List ColouredInterval :=
  [(2, 98304, 98453), (2, 131072, 131221), (2, 131072, 131221), (2, 131072, 131221), (3, 118098, 118247), (3, 177147, 177296), (3, 177147, 177296), (7, 100842, 100991), (7, 117649, 117798), (7, 134456, 134605), (7, 151263, 151412), (7, 117649, 117798), (11, 102487, 102636), (11, 117128, 117277), (11, 131769, 131918), (11, 161051, 161200)]

def row150_layer002_block001 : List ColouredInterval :=
  [(13, 114244, 114393), (13, 142805, 142954), (13, 171366, 171515), (17, 167042, 167191), (19, 130321, 130470), (23, 97336, 97485), (23, 109503, 109652), (29, 97556, 97705), (29, 121945, 122094), (29, 146334, 146483), (29, 170723, 170872), (31, 89400, 89522), (31, 119164, 119313), (31, 148955, 149104), (31, 178746, 178799), (37, 101306, 101455)]

def row150_layer002_block002 : List ColouredInterval :=
  [(37, 151959, 152108), (41, 137842, 137991), (43, 159014, 159163), (47, 103823, 103972), (53, 148877, 149026), (101, 91809, 91958), (103, 95481, 95630), (107, 91592, 91741), (107, 103041, 103190), (109, 95048, 95197), (109, 106929, 107078), (113, 89400, 89532), (113, 102152, 102301), (113, 114921, 115070), (127, 96774, 96923), (127, 112903, 113052)]

def row150_layer002_block003 : List ColouredInterval :=
  [(127, 129032, 129181), (127, 145161, 145310), (131, 102966, 103115), (131, 120127, 120276), (131, 137288, 137437), (131, 154449, 154598), (137, 93845, 93994), (137, 112614, 112763), (137, 131383, 131532), (137, 150152, 150301), (137, 168921, 169070), (139, 96605, 96754), (139, 115926, 116075), (139, 135247, 135396), (139, 154568, 154717), (139, 173889, 174038)]

def row150_layer002_block004 : List ColouredInterval :=
  [(149, 111005, 111154), (149, 133206, 133355), (149, 155407, 155556), (149, 177608, 177757)]

def row150_layer002_chunks : List (List ColouredInterval) :=
  [row150_layer002_block000, row150_layer002_block001, row150_layer002_block002, row150_layer002_block003, row150_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_arithmetic : LayerArithmeticValid row150.height { lower := 89400, upper := 178800, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_enumeration :
    activePowerIntervalList 150 9 89400 178800 = row150_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_pairs000 :
    row150_layer002_block000.all (fun I => row150_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_pairs001 :
    row150_layer002_block001.all (fun I => row150_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_pairs002 :
    row150_layer002_block002.all (fun I => row150_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_pairs003 :
    row150_layer002_block003.all (fun I => row150_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_pairs004 :
    row150_layer002_block004.all (fun I => row150_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row150_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_chunks_eq : row150_layer002_chunks.flatten = row150_layer002_intervals := by
  rfl

theorem row150_layer002_pairs : pairCoverCheck row150_layer002_intervals row150_bounds = true := by
  apply pairCoverCheck_of_chunks row150_layer002_chunks_eq
  intro block hblock
  simp only [row150_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row150_layer002_pairs000
  · exact row150_layer002_pairs001
  · exact row150_layer002_pairs002
  · exact row150_layer002_pairs003
  · exact row150_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer002_checked :
    coverLayerCheck row150.height row150.goods { lower := 89400, upper := 178800, M := 9 } = true := by
  exact coverLayerCheck_of_parts row150_layer002_arithmetic row150_layer002_enumeration row150_bounds_eq row150_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer003_checked :
    coverLayerCheck row150.height row150.goods { lower := 178800, upper := 357600, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer004_checked :
    coverLayerCheck row150.height row150.goods { lower := 357600, upper := 715200, M := 5 } = true := by
  decide +kernel

theorem row150_layer005_checked :
    coverLayerCheck row150.height row150.goods { lower := 715200, upper := 1430400, M := 4 } = true := by
  decide +kernel

theorem row150_layer006_checked :
    coverLayerCheck row150.height row150.goods { lower := 1430400, upper := 2860800, M := 3 } = true := by
  decide +kernel

theorem row150_layer007_checked :
    coverLayerCheck row150.height row150.goods { lower := 2860800, upper := 5721600, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer008_checked :
    coverLayerCheck row150.height row150.goods { lower := 5721600, upper := 11443200, M := 2 } = true := by
  decide +kernel

theorem row150_layer009_checked :
    coverLayerCheck row150.height row150.goods { lower := 11443200, upper := 22886400, M := 2 } = true := by
  decide +kernel

theorem row150_layer010_checked :
    coverLayerCheck row150.height row150.goods { lower := 22886400, upper := 45772800, M := 1 } = true := by
  decide +kernel

theorem row150_layer011_checked :
    coverLayerCheck row150.height row150.goods { lower := 45772800, upper := 91545600, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer012_checked :
    coverLayerCheck row150.height row150.goods { lower := 91545600, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layers_checked :
    row150.layers.all (coverLayerCheck row150.height row150.goods) = true := by
  change row150_layers.all (coverLayerCheck row150.height row150.goods) = true
  simp only [row150_layers, List.all_cons, List.all_nil,
    row150_layer000_checked,
    row150_layer001_checked,
    row150_layer002_checked,
    row150_layer003_checked,
    row150_layer004_checked,
    row150_layer005_checked,
    row150_layer006_checked,
    row150_layer007_checked,
    row150_layer008_checked,
    row150_layer009_checked,
    row150_layer010_checked,
    row150_layer011_checked,
    row150_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_checked : finiteCoverRowCheck row150 = true := by
  simp only [finiteCoverRowCheck, row150_registered, row150_goods_checked,
    row150_small_checked, row150_layerCover_checked, row150_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i150 :
    ∀ n j : ℕ, 1 ≤ 150 ∧ 150 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 150 ≤ p ∧ p ∣ Nat.choose n 150 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row150_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i150
