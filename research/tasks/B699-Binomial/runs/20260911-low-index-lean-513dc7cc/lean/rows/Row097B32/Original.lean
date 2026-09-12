import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row097B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_arithmetic : LayerArithmeticValid row097.height { lower := 18624, upper := 37248, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_enumeration :
    activePowerIntervalList 97 14 18624 37248 = row097_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_pairs000 :
    row097_layer001_block000.all (fun I => row097_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_pairs001 :
    row097_layer001_block001.all (fun I => row097_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_pairs002 :
    row097_layer001_block002.all (fun I => row097_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_pairs003 :
    row097_layer001_block003.all (fun I => row097_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_pairs004 :
    row097_layer001_block004.all (fun I => row097_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_pairs005 :
    row097_layer001_block005.all (fun I => row097_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_pairs006 :
    row097_layer001_block006.all (fun I => row097_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_chunks_eq : row097_layer001_chunks.flatten = row097_layer001_intervals := by
  rfl

theorem row097_layer001_pairs : pairCoverCheck row097_layer001_intervals row097_bounds = true := by
  apply pairCoverCheck_of_chunks row097_layer001_chunks_eq
  intro block hblock
  simp only [row097_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row097_layer001_pairs000
  · exact row097_layer001_pairs001
  · exact row097_layer001_pairs002
  · exact row097_layer001_pairs003
  · exact row097_layer001_pairs004
  · exact row097_layer001_pairs005
  · exact row097_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer001_checked :
    coverLayerCheck row097.height row097.goods { lower := 18624, upper := 37248, M := 14 } = true := by
  exact coverLayerCheck_of_parts row097_layer001_arithmetic row097_layer001_enumeration row097_bounds_eq row097_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row097_layer002_intervals : List ColouredInterval :=
  [(2, 40960, 41056), (2, 45056, 45152), (2, 40960, 41056), (2, 49152, 49248), (2, 57344, 57440), (2, 65536, 65632), (2, 73728, 73824), (2, 49152, 49248), (2, 65536, 65632), (2, 65536, 65632), (2, 65536, 65632), (3, 39366, 39462), (3, 45927, 46023), (3, 52488, 52584), (3, 59049, 59145), (3, 65610, 65706), (3, 72171, 72267), (3, 39366, 39462), (3, 59049, 59145), (3, 59049, 59145), (5, 46875, 46971), (5, 62500, 62596), (7, 50421, 50517), (7, 67228, 67324), (11, 43923, 44019), (11, 58564, 58660), (11, 73205, 73301), (13, 57122, 57218), (17, 39304, 39400), (17, 44217, 44313), (17, 49130, 49226), (17, 54043, 54139), (19, 41154, 41250), (19, 48013, 48109), (19, 54872, 54968), (19, 61731, 61827), (19, 68590, 68686), (23, 48668, 48764), (23, 60835, 60931), (23, 73002, 73098), (29, 48778, 48874), (29, 73167, 73263), (31, 59582, 59678), (37, 50653, 50749), (41, 68921, 69017), (59, 38291, 38387), (61, 37248, 37306), (61, 40931, 41027), (67, 40401, 40497), (67, 44890, 44986), (67, 49379, 49475), (71, 40328, 40424), (71, 45369, 45465), (71, 50410, 50506), (71, 55451, 55547), (73, 37303, 37399), (73, 42632, 42728), (73, 47961, 48057), (73, 53290, 53386), (73, 58619, 58715), (79, 37446, 37542), (79, 43687, 43783), (79, 49928, 50024), (79, 56169, 56265), (79, 62410, 62506), (79, 68651, 68747), (83, 41334, 41430), (83, 48223, 48319), (83, 55112, 55208), (83, 62001, 62097), (83, 68890, 68986), (89, 39605, 39701), (89, 47526, 47622), (89, 55447, 55543), (89, 63368, 63464), (89, 71289, 71385)]

def row097_layer002_block000 : List ColouredInterval :=
  [(2, 40960, 41056), (2, 45056, 45152), (2, 40960, 41056), (2, 49152, 49248), (2, 57344, 57440), (2, 65536, 65632), (2, 73728, 73824), (2, 49152, 49248), (2, 65536, 65632), (2, 65536, 65632), (2, 65536, 65632), (3, 39366, 39462), (3, 45927, 46023), (3, 52488, 52584), (3, 59049, 59145), (3, 65610, 65706)]

def row097_layer002_block001 : List ColouredInterval :=
  [(3, 72171, 72267), (3, 39366, 39462), (3, 59049, 59145), (3, 59049, 59145), (5, 46875, 46971), (5, 62500, 62596), (7, 50421, 50517), (7, 67228, 67324), (11, 43923, 44019), (11, 58564, 58660), (11, 73205, 73301), (13, 57122, 57218), (17, 39304, 39400), (17, 44217, 44313), (17, 49130, 49226), (17, 54043, 54139)]

def row097_layer002_block002 : List ColouredInterval :=
  [(19, 41154, 41250), (19, 48013, 48109), (19, 54872, 54968), (19, 61731, 61827), (19, 68590, 68686), (23, 48668, 48764), (23, 60835, 60931), (23, 73002, 73098), (29, 48778, 48874), (29, 73167, 73263), (31, 59582, 59678), (37, 50653, 50749), (41, 68921, 69017), (59, 38291, 38387), (61, 37248, 37306), (61, 40931, 41027)]

def row097_layer002_block003 : List ColouredInterval :=
  [(67, 40401, 40497), (67, 44890, 44986), (67, 49379, 49475), (71, 40328, 40424), (71, 45369, 45465), (71, 50410, 50506), (71, 55451, 55547), (73, 37303, 37399), (73, 42632, 42728), (73, 47961, 48057), (73, 53290, 53386), (73, 58619, 58715), (79, 37446, 37542), (79, 43687, 43783), (79, 49928, 50024), (79, 56169, 56265)]

def row097_layer002_block004 : List ColouredInterval :=
  [(79, 62410, 62506), (79, 68651, 68747), (83, 41334, 41430), (83, 48223, 48319), (83, 55112, 55208), (83, 62001, 62097), (83, 68890, 68986), (89, 39605, 39701), (89, 47526, 47622), (89, 55447, 55543), (89, 63368, 63464), (89, 71289, 71385)]

def row097_layer002_chunks : List (List ColouredInterval) :=
  [row097_layer002_block000, row097_layer002_block001, row097_layer002_block002, row097_layer002_block003, row097_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_arithmetic : LayerArithmeticValid row097.height { lower := 37248, upper := 74496, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_enumeration :
    activePowerIntervalList 97 11 37248 74496 = row097_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_pairs000 :
    row097_layer002_block000.all (fun I => row097_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_pairs001 :
    row097_layer002_block001.all (fun I => row097_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_pairs002 :
    row097_layer002_block002.all (fun I => row097_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_pairs003 :
    row097_layer002_block003.all (fun I => row097_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_pairs004 :
    row097_layer002_block004.all (fun I => row097_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row097_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_chunks_eq : row097_layer002_chunks.flatten = row097_layer002_intervals := by
  rfl

theorem row097_layer002_pairs : pairCoverCheck row097_layer002_intervals row097_bounds = true := by
  apply pairCoverCheck_of_chunks row097_layer002_chunks_eq
  intro block hblock
  simp only [row097_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row097_layer002_pairs000
  · exact row097_layer002_pairs001
  · exact row097_layer002_pairs002
  · exact row097_layer002_pairs003
  · exact row097_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer002_checked :
    coverLayerCheck row097.height row097.goods { lower := 37248, upper := 74496, M := 11 } = true := by
  exact coverLayerCheck_of_parts row097_layer002_arithmetic row097_layer002_enumeration row097_bounds_eq row097_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer003_checked :
    coverLayerCheck row097.height row097.goods { lower := 74496, upper := 148992, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer004_checked :
    coverLayerCheck row097.height row097.goods { lower := 148992, upper := 297984, M := 7 } = true := by
  decide +kernel

theorem row097_layer005_checked :
    coverLayerCheck row097.height row097.goods { lower := 297984, upper := 595968, M := 6 } = true := by
  decide +kernel

theorem row097_layer006_checked :
    coverLayerCheck row097.height row097.goods { lower := 595968, upper := 1191936, M := 5 } = true := by
  decide +kernel

theorem row097_layer007_checked :
    coverLayerCheck row097.height row097.goods { lower := 1191936, upper := 2383872, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer008_checked :
    coverLayerCheck row097.height row097.goods { lower := 2383872, upper := 4767744, M := 3 } = true := by
  decide +kernel

theorem row097_layer009_checked :
    coverLayerCheck row097.height row097.goods { lower := 4767744, upper := 9535488, M := 3 } = true := by
  decide +kernel

theorem row097_layer010_checked :
    coverLayerCheck row097.height row097.goods { lower := 9535488, upper := 19070976, M := 2 } = true := by
  decide +kernel

theorem row097_layer011_checked :
    coverLayerCheck row097.height row097.goods { lower := 19070976, upper := 38141952, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer012_checked :
    coverLayerCheck row097.height row097.goods { lower := 38141952, upper := 76283904, M := 2 } = true := by
  decide +kernel

theorem row097_layer013_checked :
    coverLayerCheck row097.height row097.goods { lower := 76283904, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layers_checked :
    row097.layers.all (coverLayerCheck row097.height row097.goods) = true := by
  change row097_layers.all (coverLayerCheck row097.height row097.goods) = true
  simp only [row097_layers, List.all_cons, List.all_nil,
    row097_layer000_checked,
    row097_layer001_checked,
    row097_layer002_checked,
    row097_layer003_checked,
    row097_layer004_checked,
    row097_layer005_checked,
    row097_layer006_checked,
    row097_layer007_checked,
    row097_layer008_checked,
    row097_layer009_checked,
    row097_layer010_checked,
    row097_layer011_checked,
    row097_layer012_checked,
    row097_layer013_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_checked : finiteCoverRowCheck row097 = true := by
  simp only [finiteCoverRowCheck, row097_registered, row097_goods_checked,
    row097_small_checked, row097_layerCover_checked, row097_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i097 :
    ∀ n j : ℕ, 1 ≤ 97 ∧ 97 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 97 ≤ p ∧ p ∣ Nat.choose n 97 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row097_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i097
