import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row130B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_arithmetic : LayerArithmeticValid row130.height { lower := 33540, upper := 67080, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_enumeration :
    activePowerIntervalList 130 12 33540 67080 = row130_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_pairs000 :
    row130_layer001_block000.all (fun I => row130_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_pairs001 :
    row130_layer001_block001.all (fun I => row130_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_pairs002 :
    row130_layer001_block002.all (fun I => row130_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_pairs003 :
    row130_layer001_block003.all (fun I => row130_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_pairs004 :
    row130_layer001_block004.all (fun I => row130_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_pairs005 :
    row130_layer001_block005.all (fun I => row130_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_chunks_eq : row130_layer001_chunks.flatten = row130_layer001_intervals := by
  rfl

theorem row130_layer001_pairs : pairCoverCheck row130_layer001_intervals row130_bounds = true := by
  apply pairCoverCheck_of_chunks row130_layer001_chunks_eq
  intro block hblock
  simp only [row130_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row130_layer001_pairs000
  · exact row130_layer001_pairs001
  · exact row130_layer001_pairs002
  · exact row130_layer001_pairs003
  · exact row130_layer001_pairs004
  · exact row130_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer001_checked :
    coverLayerCheck row130.height row130.goods { lower := 33540, upper := 67080, M := 12 } = true := by
  exact coverLayerCheck_of_parts row130_layer001_arithmetic row130_layer001_enumeration row130_bounds_eq row130_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row130_layer002_intervals : List ColouredInterval :=
  [(2, 81920, 82049), (2, 98304, 98433), (2, 131072, 131201), (2, 131072, 131201), (2, 131072, 131201), (3, 78732, 78861), (3, 98415, 98544), (3, 118098, 118227), (3, 118098, 118227), (5, 78125, 78254), (7, 67228, 67357), (7, 84035, 84164), (7, 100842, 100971), (7, 117649, 117778), (7, 117649, 117778), (11, 73205, 73334), (11, 87846, 87975), (11, 102487, 102616), (11, 117128, 117257), (11, 131769, 131898), (17, 83521, 83650), (19, 68590, 68719), (19, 130321, 130450), (23, 73002, 73131), (23, 85169, 85298), (23, 97336, 97465), (23, 109503, 109632), (23, 121670, 121799), (29, 73167, 73296), (29, 97556, 97685), (29, 121945, 122074), (31, 89373, 89502), (31, 119164, 119293), (37, 101306, 101435), (41, 68921, 69050), (43, 79507, 79636), (47, 103823, 103952), (83, 68890, 69019), (89, 71289, 71418), (89, 79210, 79339), (97, 75272, 75401), (97, 84681, 84810), (97, 94090, 94219), (101, 71407, 71536), (101, 81608, 81737), (101, 91809, 91938), (101, 102010, 102139), (103, 74263, 74392), (103, 84872, 85001), (103, 95481, 95610), (103, 106090, 106219), (107, 68694, 68823), (107, 80143, 80272), (107, 91592, 91721), (107, 103041, 103170), (107, 114490, 114619), (109, 71286, 71415), (109, 83167, 83296), (109, 95048, 95177), (109, 106929, 107058), (109, 118810, 118939), (113, 76614, 76743), (113, 89383, 89512), (113, 102152, 102281), (113, 114921, 115050), (113, 127690, 127819), (127, 80645, 80774), (127, 96774, 96903), (127, 112903, 113032), (127, 129032, 129161)]

def row130_layer002_block000 : List ColouredInterval :=
  [(2, 81920, 82049), (2, 98304, 98433), (2, 131072, 131201), (2, 131072, 131201), (2, 131072, 131201), (3, 78732, 78861), (3, 98415, 98544), (3, 118098, 118227), (3, 118098, 118227), (5, 78125, 78254), (7, 67228, 67357), (7, 84035, 84164), (7, 100842, 100971), (7, 117649, 117778), (7, 117649, 117778), (11, 73205, 73334)]

def row130_layer002_block001 : List ColouredInterval :=
  [(11, 87846, 87975), (11, 102487, 102616), (11, 117128, 117257), (11, 131769, 131898), (17, 83521, 83650), (19, 68590, 68719), (19, 130321, 130450), (23, 73002, 73131), (23, 85169, 85298), (23, 97336, 97465), (23, 109503, 109632), (23, 121670, 121799), (29, 73167, 73296), (29, 97556, 97685), (29, 121945, 122074), (31, 89373, 89502)]

def row130_layer002_block002 : List ColouredInterval :=
  [(31, 119164, 119293), (37, 101306, 101435), (41, 68921, 69050), (43, 79507, 79636), (47, 103823, 103952), (83, 68890, 69019), (89, 71289, 71418), (89, 79210, 79339), (97, 75272, 75401), (97, 84681, 84810), (97, 94090, 94219), (101, 71407, 71536), (101, 81608, 81737), (101, 91809, 91938), (101, 102010, 102139), (103, 74263, 74392)]

def row130_layer002_block003 : List ColouredInterval :=
  [(103, 84872, 85001), (103, 95481, 95610), (103, 106090, 106219), (107, 68694, 68823), (107, 80143, 80272), (107, 91592, 91721), (107, 103041, 103170), (107, 114490, 114619), (109, 71286, 71415), (109, 83167, 83296), (109, 95048, 95177), (109, 106929, 107058), (109, 118810, 118939), (113, 76614, 76743), (113, 89383, 89512), (113, 102152, 102281)]

def row130_layer002_block004 : List ColouredInterval :=
  [(113, 114921, 115050), (113, 127690, 127819), (127, 80645, 80774), (127, 96774, 96903), (127, 112903, 113032), (127, 129032, 129161)]

def row130_layer002_chunks : List (List ColouredInterval) :=
  [row130_layer002_block000, row130_layer002_block001, row130_layer002_block002, row130_layer002_block003, row130_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_arithmetic : LayerArithmeticValid row130.height { lower := 67080, upper := 134160, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_enumeration :
    activePowerIntervalList 130 10 67080 134160 = row130_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_pairs000 :
    row130_layer002_block000.all (fun I => row130_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_pairs001 :
    row130_layer002_block001.all (fun I => row130_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_pairs002 :
    row130_layer002_block002.all (fun I => row130_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_pairs003 :
    row130_layer002_block003.all (fun I => row130_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_pairs004 :
    row130_layer002_block004.all (fun I => row130_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row130_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_chunks_eq : row130_layer002_chunks.flatten = row130_layer002_intervals := by
  rfl

theorem row130_layer002_pairs : pairCoverCheck row130_layer002_intervals row130_bounds = true := by
  apply pairCoverCheck_of_chunks row130_layer002_chunks_eq
  intro block hblock
  simp only [row130_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row130_layer002_pairs000
  · exact row130_layer002_pairs001
  · exact row130_layer002_pairs002
  · exact row130_layer002_pairs003
  · exact row130_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer002_checked :
    coverLayerCheck row130.height row130.goods { lower := 67080, upper := 134160, M := 10 } = true := by
  exact coverLayerCheck_of_parts row130_layer002_arithmetic row130_layer002_enumeration row130_bounds_eq row130_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer003_checked :
    coverLayerCheck row130.height row130.goods { lower := 134160, upper := 268320, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer004_checked :
    coverLayerCheck row130.height row130.goods { lower := 268320, upper := 536640, M := 6 } = true := by
  decide +kernel

theorem row130_layer005_checked :
    coverLayerCheck row130.height row130.goods { lower := 536640, upper := 1073280, M := 5 } = true := by
  decide +kernel

theorem row130_layer006_checked :
    coverLayerCheck row130.height row130.goods { lower := 1073280, upper := 2146560, M := 4 } = true := by
  decide +kernel

theorem row130_layer007_checked :
    coverLayerCheck row130.height row130.goods { lower := 2146560, upper := 4293120, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer008_checked :
    coverLayerCheck row130.height row130.goods { lower := 4293120, upper := 8586240, M := 2 } = true := by
  decide +kernel

theorem row130_layer009_checked :
    coverLayerCheck row130.height row130.goods { lower := 8586240, upper := 17172480, M := 2 } = true := by
  decide +kernel

theorem row130_layer010_checked :
    coverLayerCheck row130.height row130.goods { lower := 17172480, upper := 34344960, M := 2 } = true := by
  decide +kernel

theorem row130_layer011_checked :
    coverLayerCheck row130.height row130.goods { lower := 34344960, upper := 68689920, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer012_checked :
    coverLayerCheck row130.height row130.goods { lower := 68689920, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layers_checked :
    row130.layers.all (coverLayerCheck row130.height row130.goods) = true := by
  change row130_layers.all (coverLayerCheck row130.height row130.goods) = true
  simp only [row130_layers, List.all_cons, List.all_nil,
    row130_layer000_checked,
    row130_layer001_checked,
    row130_layer002_checked,
    row130_layer003_checked,
    row130_layer004_checked,
    row130_layer005_checked,
    row130_layer006_checked,
    row130_layer007_checked,
    row130_layer008_checked,
    row130_layer009_checked,
    row130_layer010_checked,
    row130_layer011_checked,
    row130_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_checked : finiteCoverRowCheck row130 = true := by
  simp only [finiteCoverRowCheck, row130_registered, row130_goods_checked,
    row130_small_checked, row130_layerCover_checked, row130_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i130 :
    ∀ n j : ℕ, 1 ≤ 130 ∧ 130 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 130 ≤ p ∧ p ∣ Nat.choose n 130 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row130_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i130
