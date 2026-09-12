import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row181B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row181B16.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_checked :
    coverLayerCheck row181.height row181.goods { lower := 32580, upper := 65160, M := 13 } = true := by
  exact coverLayerCheck_of_parts row181_layer000_arithmetic row181_layer000_enumeration row181_bounds_eq row181_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row181_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65716), (2, 73728, 73908), (2, 65536, 65716), (2, 81920, 82100), (2, 98304, 98484), (2, 114688, 114868), (2, 65536, 65716), (2, 98304, 98484), (2, 65536, 65716), (3, 78732, 78912), (3, 98415, 98595), (3, 118098, 118278), (3, 118098, 118278), (5, 78125, 78305), (5, 93750, 93930), (5, 109375, 109555), (5, 125000, 125180), (5, 78125, 78305), (7, 67228, 67408), (7, 84035, 84215), (7, 100842, 101022), (7, 117649, 117829), (7, 117649, 117829), (11, 73205, 73385), (11, 87846, 88026), (11, 102487, 102667), (11, 117128, 117308), (13, 85683, 85863), (13, 114244, 114424), (17, 83521, 83701), (23, 73002, 73182), (23, 85169, 85349), (23, 97336, 97516), (23, 109503, 109683), (29, 73167, 73347), (29, 97556, 97736), (29, 121945, 122125), (31, 89373, 89553), (31, 119164, 119344), (37, 101306, 101486), (41, 68921, 69101), (43, 79507, 79687), (47, 103823, 104003), (89, 71289, 71469), (97, 65863, 66043), (97, 75272, 75452), (97, 84681, 84861), (101, 71407, 71587), (101, 81608, 81788), (101, 91809, 91989), (103, 74263, 74443), (103, 84872, 85052), (103, 95481, 95661), (107, 68694, 68874), (107, 80143, 80323), (107, 91592, 91772), (107, 103041, 103221), (109, 71286, 71466), (109, 83167, 83347), (109, 95048, 95228), (109, 106929, 107109), (113, 76614, 76794), (113, 89383, 89563), (113, 102152, 102332), (113, 114921, 115101), (127, 80645, 80825), (127, 96774, 96954), (127, 112903, 113083), (127, 129032, 129212), (131, 68644, 68824), (131, 85805, 85985), (131, 102966, 103146), (131, 120127, 120307), (137, 75076, 75256), (137, 93845, 94025), (137, 112614, 112794), (139, 77284, 77464), (139, 96605, 96785), (139, 115926, 116106), (149, 66603, 66783), (149, 88804, 88984), (149, 111005, 111185), (151, 68403, 68583), (151, 91204, 91384), (151, 114005, 114185), (157, 73947, 74127), (157, 98596, 98776), (157, 123245, 123425), (163, 79707, 79887), (163, 106276, 106456), (167, 83667, 83847), (167, 111556, 111736), (173, 89787, 89967), (173, 119716, 119896), (179, 96123, 96303), (179, 128164, 128344)]

def row181_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65716), (2, 73728, 73908), (2, 65536, 65716), (2, 81920, 82100), (2, 98304, 98484), (2, 114688, 114868), (2, 65536, 65716), (2, 98304, 98484), (2, 65536, 65716), (3, 78732, 78912), (3, 98415, 98595), (3, 118098, 118278), (3, 118098, 118278), (5, 78125, 78305), (5, 93750, 93930), (5, 109375, 109555)]

def row181_layer001_block001 : List ColouredInterval :=
  [(5, 125000, 125180), (5, 78125, 78305), (7, 67228, 67408), (7, 84035, 84215), (7, 100842, 101022), (7, 117649, 117829), (7, 117649, 117829), (11, 73205, 73385), (11, 87846, 88026), (11, 102487, 102667), (11, 117128, 117308), (13, 85683, 85863), (13, 114244, 114424), (17, 83521, 83701), (23, 73002, 73182), (23, 85169, 85349)]

def row181_layer001_block002 : List ColouredInterval :=
  [(23, 97336, 97516), (23, 109503, 109683), (29, 73167, 73347), (29, 97556, 97736), (29, 121945, 122125), (31, 89373, 89553), (31, 119164, 119344), (37, 101306, 101486), (41, 68921, 69101), (43, 79507, 79687), (47, 103823, 104003), (89, 71289, 71469), (97, 65863, 66043), (97, 75272, 75452), (97, 84681, 84861), (101, 71407, 71587)]

def row181_layer001_block003 : List ColouredInterval :=
  [(101, 81608, 81788), (101, 91809, 91989), (103, 74263, 74443), (103, 84872, 85052), (103, 95481, 95661), (107, 68694, 68874), (107, 80143, 80323), (107, 91592, 91772), (107, 103041, 103221), (109, 71286, 71466), (109, 83167, 83347), (109, 95048, 95228), (109, 106929, 107109), (113, 76614, 76794), (113, 89383, 89563), (113, 102152, 102332)]

def row181_layer001_block004 : List ColouredInterval :=
  [(113, 114921, 115101), (127, 80645, 80825), (127, 96774, 96954), (127, 112903, 113083), (127, 129032, 129212), (131, 68644, 68824), (131, 85805, 85985), (131, 102966, 103146), (131, 120127, 120307), (137, 75076, 75256), (137, 93845, 94025), (137, 112614, 112794), (139, 77284, 77464), (139, 96605, 96785), (139, 115926, 116106), (149, 66603, 66783)]

def row181_layer001_block005 : List ColouredInterval :=
  [(149, 88804, 88984), (149, 111005, 111185), (151, 68403, 68583), (151, 91204, 91384), (151, 114005, 114185), (157, 73947, 74127), (157, 98596, 98776), (157, 123245, 123425), (163, 79707, 79887), (163, 106276, 106456), (167, 83667, 83847), (167, 111556, 111736), (173, 89787, 89967), (173, 119716, 119896), (179, 96123, 96303), (179, 128164, 128344)]

def row181_layer001_chunks : List (List ColouredInterval) :=
  [row181_layer001_block000, row181_layer001_block001, row181_layer001_block002, row181_layer001_block003, row181_layer001_block004, row181_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_arithmetic : LayerArithmeticValid row181.height { lower := 65160, upper := 130320, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_enumeration :
    activePowerIntervalList 181 9 65160 130320 = row181_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_pairs000 :
    row181_layer001_block000.all (fun I => row181_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_pairs001 :
    row181_layer001_block001.all (fun I => row181_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_pairs002 :
    row181_layer001_block002.all (fun I => row181_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_pairs003 :
    row181_layer001_block003.all (fun I => row181_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_pairs004 :
    row181_layer001_block004.all (fun I => row181_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_pairs005 :
    row181_layer001_block005.all (fun I => row181_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_chunks_eq : row181_layer001_chunks.flatten = row181_layer001_intervals := by
  rfl

theorem row181_layer001_pairs : pairCoverCheck row181_layer001_intervals row181_bounds = true := by
  apply pairCoverCheck_of_chunks row181_layer001_chunks_eq
  intro block hblock
  simp only [row181_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row181_layer001_pairs000
  · exact row181_layer001_pairs001
  · exact row181_layer001_pairs002
  · exact row181_layer001_pairs003
  · exact row181_layer001_pairs004
  · exact row181_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer001_checked :
    coverLayerCheck row181.height row181.goods { lower := 65160, upper := 130320, M := 9 } = true := by
  exact coverLayerCheck_of_parts row181_layer001_arithmetic row181_layer001_enumeration row181_bounds_eq row181_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer002_checked :
    coverLayerCheck row181.height row181.goods { lower := 130320, upper := 260640, M := 7 } = true := by
  decide +kernel

theorem row181_layer003_checked :
    coverLayerCheck row181.height row181.goods { lower := 260640, upper := 521280, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer004_checked :
    coverLayerCheck row181.height row181.goods { lower := 521280, upper := 1042560, M := 4 } = true := by
  decide +kernel

theorem row181_layer005_checked :
    coverLayerCheck row181.height row181.goods { lower := 1042560, upper := 2085120, M := 3 } = true := by
  decide +kernel

theorem row181_layer006_checked :
    coverLayerCheck row181.height row181.goods { lower := 2085120, upper := 4170240, M := 2 } = true := by
  decide +kernel

theorem row181_layer007_checked :
    coverLayerCheck row181.height row181.goods { lower := 4170240, upper := 8340480, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer008_checked :
    coverLayerCheck row181.height row181.goods { lower := 8340480, upper := 10000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layers_checked :
    row181.layers.all (coverLayerCheck row181.height row181.goods) = true := by
  change row181_layers.all (coverLayerCheck row181.height row181.goods) = true
  simp only [row181_layers, List.all_cons, List.all_nil,
    row181_layer000_checked,
    row181_layer001_checked,
    row181_layer002_checked,
    row181_layer003_checked,
    row181_layer004_checked,
    row181_layer005_checked,
    row181_layer006_checked,
    row181_layer007_checked,
    row181_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layers_checked
