import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row175B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer000_checked :
    coverLayerCheck row175.height row175.goods { lower := 30450, upper := 60900, M := 14 } = true := by
  exact coverLayerCheck_of_parts row175_layer000_arithmetic row175_layer000_enumeration row175_bounds_eq row175_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row175_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65710), (2, 73728, 73902), (2, 81920, 82094), (2, 65536, 65710), (2, 81920, 82094), (2, 98304, 98478), (2, 114688, 114862), (2, 65536, 65710), (2, 98304, 98478), (2, 65536, 65710), (3, 65610, 65784), (3, 78732, 78906), (3, 98415, 98589), (3, 118098, 118272), (3, 118098, 118272), (7, 117649, 117823), (11, 73205, 73379), (11, 87846, 88020), (11, 102487, 102661), (11, 117128, 117302), (13, 85683, 85857), (13, 114244, 114418), (17, 83521, 83695), (19, 61731, 61905), (19, 68590, 68764), (23, 60900, 61009), (23, 73002, 73176), (23, 85169, 85343), (23, 97336, 97510), (23, 109503, 109677), (23, 121670, 121799), (29, 73167, 73341), (29, 97556, 97730), (31, 89373, 89547), (31, 119164, 119338), (37, 101306, 101480), (41, 68921, 69095), (43, 79507, 79681), (47, 103823, 103997), (79, 62410, 62584), (83, 62001, 62175), (83, 68890, 69064), (89, 63368, 63542), (89, 71289, 71463), (89, 79210, 79384), (97, 65863, 66037), (97, 75272, 75446), (97, 84681, 84855), (97, 94090, 94264), (101, 61206, 61380), (101, 71407, 71581), (101, 81608, 81782), (101, 91809, 91983), (101, 102010, 102184), (103, 63654, 63828), (103, 74263, 74437), (103, 84872, 85046), (103, 95481, 95655), (103, 106090, 106264), (107, 68694, 68868), (107, 80143, 80317), (107, 91592, 91766), (107, 103041, 103215), (107, 114490, 114664), (109, 71286, 71460), (109, 83167, 83341), (109, 95048, 95222), (109, 106929, 107103), (109, 118810, 118984), (113, 63845, 64019), (113, 76614, 76788), (113, 89383, 89557), (113, 102152, 102326), (113, 114921, 115095), (127, 64516, 64690), (127, 80645, 80819), (127, 96774, 96948), (127, 112903, 113077), (131, 68644, 68818), (131, 85805, 85979), (131, 102966, 103140), (131, 120127, 120301), (137, 75076, 75250), (137, 93845, 94019), (137, 112614, 112788), (139, 77284, 77458), (139, 96605, 96779), (139, 115926, 116100), (149, 66603, 66777), (149, 88804, 88978), (149, 111005, 111179), (151, 68403, 68577), (151, 91204, 91378), (151, 114005, 114179), (157, 73947, 74121), (157, 98596, 98770), (163, 79707, 79881), (163, 106276, 106450), (167, 83667, 83841), (167, 111556, 111730), (173, 89787, 89961), (173, 119716, 119890)]

def row175_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65710), (2, 73728, 73902), (2, 81920, 82094), (2, 65536, 65710), (2, 81920, 82094), (2, 98304, 98478), (2, 114688, 114862), (2, 65536, 65710), (2, 98304, 98478), (2, 65536, 65710), (3, 65610, 65784), (3, 78732, 78906), (3, 98415, 98589), (3, 118098, 118272), (3, 118098, 118272), (7, 117649, 117823)]

def row175_layer001_block001 : List ColouredInterval :=
  [(11, 73205, 73379), (11, 87846, 88020), (11, 102487, 102661), (11, 117128, 117302), (13, 85683, 85857), (13, 114244, 114418), (17, 83521, 83695), (19, 61731, 61905), (19, 68590, 68764), (23, 60900, 61009), (23, 73002, 73176), (23, 85169, 85343), (23, 97336, 97510), (23, 109503, 109677), (23, 121670, 121799), (29, 73167, 73341)]

def row175_layer001_block002 : List ColouredInterval :=
  [(29, 97556, 97730), (31, 89373, 89547), (31, 119164, 119338), (37, 101306, 101480), (41, 68921, 69095), (43, 79507, 79681), (47, 103823, 103997), (79, 62410, 62584), (83, 62001, 62175), (83, 68890, 69064), (89, 63368, 63542), (89, 71289, 71463), (89, 79210, 79384), (97, 65863, 66037), (97, 75272, 75446), (97, 84681, 84855)]

def row175_layer001_block003 : List ColouredInterval :=
  [(97, 94090, 94264), (101, 61206, 61380), (101, 71407, 71581), (101, 81608, 81782), (101, 91809, 91983), (101, 102010, 102184), (103, 63654, 63828), (103, 74263, 74437), (103, 84872, 85046), (103, 95481, 95655), (103, 106090, 106264), (107, 68694, 68868), (107, 80143, 80317), (107, 91592, 91766), (107, 103041, 103215), (107, 114490, 114664)]

def row175_layer001_block004 : List ColouredInterval :=
  [(109, 71286, 71460), (109, 83167, 83341), (109, 95048, 95222), (109, 106929, 107103), (109, 118810, 118984), (113, 63845, 64019), (113, 76614, 76788), (113, 89383, 89557), (113, 102152, 102326), (113, 114921, 115095), (127, 64516, 64690), (127, 80645, 80819), (127, 96774, 96948), (127, 112903, 113077), (131, 68644, 68818), (131, 85805, 85979)]

def row175_layer001_block005 : List ColouredInterval :=
  [(131, 102966, 103140), (131, 120127, 120301), (137, 75076, 75250), (137, 93845, 94019), (137, 112614, 112788), (139, 77284, 77458), (139, 96605, 96779), (139, 115926, 116100), (149, 66603, 66777), (149, 88804, 88978), (149, 111005, 111179), (151, 68403, 68577), (151, 91204, 91378), (151, 114005, 114179), (157, 73947, 74121), (157, 98596, 98770)]

def row175_layer001_block006 : List ColouredInterval :=
  [(163, 79707, 79881), (163, 106276, 106450), (167, 83667, 83841), (167, 111556, 111730), (173, 89787, 89961), (173, 119716, 119890)]

def row175_layer001_chunks : List (List ColouredInterval) :=
  [row175_layer001_block000, row175_layer001_block001, row175_layer001_block002, row175_layer001_block003, row175_layer001_block004, row175_layer001_block005, row175_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_arithmetic : LayerArithmeticValid row175.height { lower := 60900, upper := 121800, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_enumeration :
    activePowerIntervalList 175 10 60900 121800 = row175_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_pairs000 :
    row175_layer001_block000.all (fun I => row175_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_pairs001 :
    row175_layer001_block001.all (fun I => row175_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_pairs002 :
    row175_layer001_block002.all (fun I => row175_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_pairs003 :
    row175_layer001_block003.all (fun I => row175_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_pairs004 :
    row175_layer001_block004.all (fun I => row175_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_pairs005 :
    row175_layer001_block005.all (fun I => row175_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_pairs006 :
    row175_layer001_block006.all (fun I => row175_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_chunks_eq : row175_layer001_chunks.flatten = row175_layer001_intervals := by
  rfl

theorem row175_layer001_pairs : pairCoverCheck row175_layer001_intervals row175_bounds = true := by
  apply pairCoverCheck_of_chunks row175_layer001_chunks_eq
  intro block hblock
  simp only [row175_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row175_layer001_pairs000
  · exact row175_layer001_pairs001
  · exact row175_layer001_pairs002
  · exact row175_layer001_pairs003
  · exact row175_layer001_pairs004
  · exact row175_layer001_pairs005
  · exact row175_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer001_checked :
    coverLayerCheck row175.height row175.goods { lower := 60900, upper := 121800, M := 10 } = true := by
  exact coverLayerCheck_of_parts row175_layer001_arithmetic row175_layer001_enumeration row175_bounds_eq row175_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row175_layer002_intervals : List ColouredInterval :=
  [(2, 131072, 131246), (2, 131072, 131246), (2, 163840, 164014), (2, 196608, 196782), (2, 229376, 229550), (2, 131072, 131246), (2, 196608, 196782), (2, 131072, 131246), (3, 137781, 137955), (3, 157464, 157638), (3, 177147, 177321), (3, 236196, 236370), (3, 177147, 177321), (11, 161051, 161225), (13, 142805, 142979), (13, 171366, 171540), (13, 199927, 200101), (13, 228488, 228662), (17, 167042, 167216), (19, 130321, 130495), (29, 121945, 122119), (29, 146334, 146508), (29, 170723, 170897), (29, 195112, 195286), (31, 148955, 149129), (31, 178746, 178920), (31, 208537, 208711), (31, 238328, 238502), (37, 151959, 152133), (37, 202612, 202786), (41, 137842, 138016), (41, 206763, 206937), (43, 159014, 159188), (43, 238521, 238695), (47, 207646, 207820), (53, 148877, 149051), (59, 205379, 205553), (61, 226981, 227155), (127, 129032, 129206), (131, 137288, 137462), (137, 131383, 131557), (137, 150152, 150326), (139, 135247, 135421), (139, 154568, 154742), (149, 133206, 133380), (149, 155407, 155581), (149, 177608, 177782), (151, 136806, 136980), (151, 159607, 159781), (151, 182408, 182582), (157, 123245, 123419), (157, 147894, 148068), (157, 172543, 172717), (157, 197192, 197366), (163, 132845, 133019), (163, 159414, 159588), (163, 185983, 186157), (163, 212552, 212726), (167, 139445, 139619), (167, 167334, 167508), (167, 195223, 195397), (167, 223112, 223286), (173, 149645, 149819), (173, 179574, 179748), (173, 209503, 209677), (173, 239432, 239606)]

def row175_layer002_block000 : List ColouredInterval :=
  [(2, 131072, 131246), (2, 131072, 131246), (2, 163840, 164014), (2, 196608, 196782), (2, 229376, 229550), (2, 131072, 131246), (2, 196608, 196782), (2, 131072, 131246), (3, 137781, 137955), (3, 157464, 157638), (3, 177147, 177321), (3, 236196, 236370), (3, 177147, 177321), (11, 161051, 161225), (13, 142805, 142979), (13, 171366, 171540)]

def row175_layer002_block001 : List ColouredInterval :=
  [(13, 199927, 200101), (13, 228488, 228662), (17, 167042, 167216), (19, 130321, 130495), (29, 121945, 122119), (29, 146334, 146508), (29, 170723, 170897), (29, 195112, 195286), (31, 148955, 149129), (31, 178746, 178920), (31, 208537, 208711), (31, 238328, 238502), (37, 151959, 152133), (37, 202612, 202786), (41, 137842, 138016), (41, 206763, 206937)]

def row175_layer002_block002 : List ColouredInterval :=
  [(43, 159014, 159188), (43, 238521, 238695), (47, 207646, 207820), (53, 148877, 149051), (59, 205379, 205553), (61, 226981, 227155), (127, 129032, 129206), (131, 137288, 137462), (137, 131383, 131557), (137, 150152, 150326), (139, 135247, 135421), (139, 154568, 154742), (149, 133206, 133380), (149, 155407, 155581), (149, 177608, 177782), (151, 136806, 136980)]

def row175_layer002_block003 : List ColouredInterval :=
  [(151, 159607, 159781), (151, 182408, 182582), (157, 123245, 123419), (157, 147894, 148068), (157, 172543, 172717), (157, 197192, 197366), (163, 132845, 133019), (163, 159414, 159588), (163, 185983, 186157), (163, 212552, 212726), (167, 139445, 139619), (167, 167334, 167508), (167, 195223, 195397), (167, 223112, 223286), (173, 149645, 149819), (173, 179574, 179748)]

def row175_layer002_block004 : List ColouredInterval :=
  [(173, 209503, 209677), (173, 239432, 239606)]

def row175_layer002_chunks : List (List ColouredInterval) :=
  [row175_layer002_block000, row175_layer002_block001, row175_layer002_block002, row175_layer002_block003, row175_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_arithmetic : LayerArithmeticValid row175.height { lower := 121800, upper := 243600, M := 8 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_enumeration :
    activePowerIntervalList 175 8 121800 243600 = row175_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_pairs000 :
    row175_layer002_block000.all (fun I => row175_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_pairs001 :
    row175_layer002_block001.all (fun I => row175_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_pairs002 :
    row175_layer002_block002.all (fun I => row175_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_pairs003 :
    row175_layer002_block003.all (fun I => row175_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_pairs004 :
    row175_layer002_block004.all (fun I => row175_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row175_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_chunks_eq : row175_layer002_chunks.flatten = row175_layer002_intervals := by
  rfl

theorem row175_layer002_pairs : pairCoverCheck row175_layer002_intervals row175_bounds = true := by
  apply pairCoverCheck_of_chunks row175_layer002_chunks_eq
  intro block hblock
  simp only [row175_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row175_layer002_pairs000
  · exact row175_layer002_pairs001
  · exact row175_layer002_pairs002
  · exact row175_layer002_pairs003
  · exact row175_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer002_checked :
    coverLayerCheck row175.height row175.goods { lower := 121800, upper := 243600, M := 8 } = true := by
  exact coverLayerCheck_of_parts row175_layer002_arithmetic row175_layer002_enumeration row175_bounds_eq row175_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer003_checked :
    coverLayerCheck row175.height row175.goods { lower := 243600, upper := 487200, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer004_checked :
    coverLayerCheck row175.height row175.goods { lower := 487200, upper := 974400, M := 4 } = true := by
  decide +kernel

theorem row175_layer005_checked :
    coverLayerCheck row175.height row175.goods { lower := 974400, upper := 1948800, M := 3 } = true := by
  decide +kernel

theorem row175_layer006_checked :
    coverLayerCheck row175.height row175.goods { lower := 1948800, upper := 3897600, M := 3 } = true := by
  decide +kernel

theorem row175_layer007_checked :
    coverLayerCheck row175.height row175.goods { lower := 3897600, upper := 7795200, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer008_checked :
    coverLayerCheck row175.height row175.goods { lower := 7795200, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layers_checked :
    row175.layers.all (coverLayerCheck row175.height row175.goods) = true := by
  change row175_layers.all (coverLayerCheck row175.height row175.goods) = true
  simp only [row175_layers, List.all_cons, List.all_nil,
    row175_layer000_checked,
    row175_layer001_checked,
    row175_layer002_checked,
    row175_layer003_checked,
    row175_layer004_checked,
    row175_layer005_checked,
    row175_layer006_checked,
    row175_layer007_checked,
    row175_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_checked : finiteCoverRowCheck row175 = true := by
  simp only [finiteCoverRowCheck, row175_registered, row175_goods_checked,
    row175_small_checked, row175_layerCover_checked, row175_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i175 :
    ∀ n j : ℕ, 1 ≤ 175 ∧ 175 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 175 ≤ p ∧ p ∣ Nat.choose n 175 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row175_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i175
