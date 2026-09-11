import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row100B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_enumeration :
    activePowerIntervalList 100 16 19800 39600 = row100_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_pairs000 :
    row100_layer001_block000.all (fun I => row100_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_pairs001 :
    row100_layer001_block001.all (fun I => row100_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_pairs002 :
    row100_layer001_block002.all (fun I => row100_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_pairs003 :
    row100_layer001_block003.all (fun I => row100_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_pairs004 :
    row100_layer001_block004.all (fun I => row100_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_pairs005 :
    row100_layer001_block005.all (fun I => row100_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_pairs006 :
    row100_layer001_block006.all (fun I => row100_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_chunks_eq : row100_layer001_chunks.flatten = row100_layer001_intervals := by
  rfl

theorem row100_layer001_pairs : pairCoverCheck row100_layer001_intervals row100_bounds = true := by
  apply pairCoverCheck_of_chunks row100_layer001_chunks_eq
  intro block hblock
  simp only [row100_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row100_layer001_pairs000
  · exact row100_layer001_pairs001
  · exact row100_layer001_pairs002
  · exact row100_layer001_pairs003
  · exact row100_layer001_pairs004
  · exact row100_layer001_pairs005
  · exact row100_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer001_checked :
    coverLayerCheck row100.height row100.goods { lower := 19800, upper := 39600, M := 16 } = true := by
  exact coverLayerCheck_of_parts row100_layer001_arithmetic row100_layer001_enumeration row100_bounds_eq row100_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row100_layer002_intervals : List ColouredInterval :=
  [(2, 49152, 49251), (2, 65536, 65635), (2, 65536, 65635), (3, 45927, 46026), (3, 52488, 52587), (3, 59049, 59148), (3, 65610, 65709), (3, 72171, 72270), (3, 78732, 78831), (3, 59049, 59148), (3, 78732, 78831), (3, 59049, 59148), (7, 50421, 50520), (7, 67228, 67327), (11, 43923, 44022), (11, 58564, 58663), (11, 73205, 73304), (13, 57122, 57221), (17, 44217, 44316), (17, 49130, 49229), (17, 54043, 54142), (17, 58956, 59055), (17, 63869, 63968), (19, 41154, 41253), (19, 48013, 48112), (19, 54872, 54971), (19, 61731, 61830), (19, 68590, 68689), (19, 75449, 75548), (23, 48668, 48767), (23, 60835, 60934), (23, 73002, 73101), (29, 48778, 48877), (29, 73167, 73266), (31, 59582, 59681), (37, 50653, 50752), (41, 68921, 69020), (59, 41772, 41871), (59, 45253, 45352), (61, 40931, 41030), (61, 44652, 44751), (61, 48373, 48472), (67, 40401, 40500), (67, 44890, 44989), (67, 49379, 49478), (67, 53868, 53967), (67, 58357, 58456), (71, 40328, 40427), (71, 45369, 45468), (71, 50410, 50509), (71, 55451, 55550), (71, 60492, 60591), (71, 65533, 65632), (73, 42632, 42731), (73, 47961, 48060), (73, 53290, 53389), (73, 58619, 58718), (73, 63948, 64047), (73, 69277, 69376), (79, 43687, 43786), (79, 49928, 50027), (79, 56169, 56268), (79, 62410, 62509), (79, 68651, 68750), (79, 74892, 74991), (83, 41334, 41433), (83, 48223, 48322), (83, 55112, 55211), (83, 62001, 62100), (83, 68890, 68989), (83, 75779, 75878), (89, 39605, 39704), (89, 47526, 47625), (89, 55447, 55546), (89, 63368, 63467), (89, 71289, 71388), (97, 47045, 47144), (97, 56454, 56553), (97, 65863, 65962), (97, 75272, 75371)]

def row100_layer002_block000 : List ColouredInterval :=
  [(2, 49152, 49251), (2, 65536, 65635), (2, 65536, 65635), (3, 45927, 46026), (3, 52488, 52587), (3, 59049, 59148), (3, 65610, 65709), (3, 72171, 72270), (3, 78732, 78831), (3, 59049, 59148), (3, 78732, 78831), (3, 59049, 59148), (7, 50421, 50520), (7, 67228, 67327), (11, 43923, 44022), (11, 58564, 58663)]

def row100_layer002_block001 : List ColouredInterval :=
  [(11, 73205, 73304), (13, 57122, 57221), (17, 44217, 44316), (17, 49130, 49229), (17, 54043, 54142), (17, 58956, 59055), (17, 63869, 63968), (19, 41154, 41253), (19, 48013, 48112), (19, 54872, 54971), (19, 61731, 61830), (19, 68590, 68689), (19, 75449, 75548), (23, 48668, 48767), (23, 60835, 60934), (23, 73002, 73101)]

def row100_layer002_block002 : List ColouredInterval :=
  [(29, 48778, 48877), (29, 73167, 73266), (31, 59582, 59681), (37, 50653, 50752), (41, 68921, 69020), (59, 41772, 41871), (59, 45253, 45352), (61, 40931, 41030), (61, 44652, 44751), (61, 48373, 48472), (67, 40401, 40500), (67, 44890, 44989), (67, 49379, 49478), (67, 53868, 53967), (67, 58357, 58456), (71, 40328, 40427)]

def row100_layer002_block003 : List ColouredInterval :=
  [(71, 45369, 45468), (71, 50410, 50509), (71, 55451, 55550), (71, 60492, 60591), (71, 65533, 65632), (73, 42632, 42731), (73, 47961, 48060), (73, 53290, 53389), (73, 58619, 58718), (73, 63948, 64047), (73, 69277, 69376), (79, 43687, 43786), (79, 49928, 50027), (79, 56169, 56268), (79, 62410, 62509), (79, 68651, 68750)]

def row100_layer002_block004 : List ColouredInterval :=
  [(79, 74892, 74991), (83, 41334, 41433), (83, 48223, 48322), (83, 55112, 55211), (83, 62001, 62100), (83, 68890, 68989), (83, 75779, 75878), (89, 39605, 39704), (89, 47526, 47625), (89, 55447, 55546), (89, 63368, 63467), (89, 71289, 71388), (97, 47045, 47144), (97, 56454, 56553), (97, 65863, 65962), (97, 75272, 75371)]

def row100_layer002_chunks : List (List ColouredInterval) :=
  [row100_layer002_block000, row100_layer002_block001, row100_layer002_block002, row100_layer002_block003, row100_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_arithmetic : LayerArithmeticValid row100.height { lower := 39600, upper := 79200, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_enumeration :
    activePowerIntervalList 100 13 39600 79200 = row100_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_pairs000 :
    row100_layer002_block000.all (fun I => row100_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_pairs001 :
    row100_layer002_block001.all (fun I => row100_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_pairs002 :
    row100_layer002_block002.all (fun I => row100_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_pairs003 :
    row100_layer002_block003.all (fun I => row100_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_pairs004 :
    row100_layer002_block004.all (fun I => row100_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row100_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_chunks_eq : row100_layer002_chunks.flatten = row100_layer002_intervals := by
  rfl

theorem row100_layer002_pairs : pairCoverCheck row100_layer002_intervals row100_bounds = true := by
  apply pairCoverCheck_of_chunks row100_layer002_chunks_eq
  intro block hblock
  simp only [row100_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row100_layer002_pairs000
  · exact row100_layer002_pairs001
  · exact row100_layer002_pairs002
  · exact row100_layer002_pairs003
  · exact row100_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer002_checked :
    coverLayerCheck row100.height row100.goods { lower := 39600, upper := 79200, M := 13 } = true := by
  exact coverLayerCheck_of_parts row100_layer002_arithmetic row100_layer002_enumeration row100_bounds_eq row100_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer003_checked :
    coverLayerCheck row100.height row100.goods { lower := 79200, upper := 158400, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer004_checked :
    coverLayerCheck row100.height row100.goods { lower := 158400, upper := 316800, M := 8 } = true := by
  decide +kernel

theorem row100_layer005_checked :
    coverLayerCheck row100.height row100.goods { lower := 316800, upper := 633600, M := 7 } = true := by
  decide +kernel

theorem row100_layer006_checked :
    coverLayerCheck row100.height row100.goods { lower := 633600, upper := 1267200, M := 5 } = true := by
  decide +kernel

theorem row100_layer007_checked :
    coverLayerCheck row100.height row100.goods { lower := 1267200, upper := 2534400, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer008_checked :
    coverLayerCheck row100.height row100.goods { lower := 2534400, upper := 5068800, M := 4 } = true := by
  decide +kernel

theorem row100_layer009_checked :
    coverLayerCheck row100.height row100.goods { lower := 5068800, upper := 10137600, M := 3 } = true := by
  decide +kernel

theorem row100_layer010_checked :
    coverLayerCheck row100.height row100.goods { lower := 10137600, upper := 20275200, M := 2 } = true := by
  decide +kernel

theorem row100_layer011_checked :
    coverLayerCheck row100.height row100.goods { lower := 20275200, upper := 40550400, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer012_checked :
    coverLayerCheck row100.height row100.goods { lower := 40550400, upper := 81100800, M := 2 } = true := by
  decide +kernel

theorem row100_layer013_checked :
    coverLayerCheck row100.height row100.goods { lower := 81100800, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layers_checked :
    row100.layers.all (coverLayerCheck row100.height row100.goods) = true := by
  change row100_layers.all (coverLayerCheck row100.height row100.goods) = true
  simp only [row100_layers, List.all_cons, List.all_nil,
    row100_layer000_checked,
    row100_layer001_checked,
    row100_layer002_checked,
    row100_layer003_checked,
    row100_layer004_checked,
    row100_layer005_checked,
    row100_layer006_checked,
    row100_layer007_checked,
    row100_layer008_checked,
    row100_layer009_checked,
    row100_layer010_checked,
    row100_layer011_checked,
    row100_layer012_checked,
    row100_layer013_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_checked : finiteCoverRowCheck row100 = true := by
  simp only [finiteCoverRowCheck, row100_registered, row100_goods_checked,
    row100_small_checked, row100_layerCover_checked, row100_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i100 :
    ∀ n j : ℕ, 1 ≤ 100 ∧ 100 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 100 ≤ p ∧ p ∣ Nat.choose n 100 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row100_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i100
