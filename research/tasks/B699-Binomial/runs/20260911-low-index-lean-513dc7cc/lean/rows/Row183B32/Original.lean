import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row183B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_chunks_eq : row183_layer000_chunks.flatten = row183_layer000_intervals := by
  rfl

theorem row183_layer000_pairs : pairCoverCheck row183_layer000_intervals row183_bounds = true := by
  apply pairCoverCheck_of_chunks row183_layer000_chunks_eq
  intro block hblock
  simp only [row183_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row183_layer000_pairs000
  · exact row183_layer000_pairs001
  · exact row183_layer000_pairs002
  · exact row183_layer000_pairs003
  · exact row183_layer000_pairs004
  · exact row183_layer000_pairs005
  · exact row183_layer000_pairs006
  · exact row183_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer000_checked :
    coverLayerCheck row183.height row183.goods { lower := 33306, upper := 66612, M := 14 } = true := by
  exact coverLayerCheck_of_parts row183_layer000_arithmetic row183_layer000_enumeration row183_bounds_eq row183_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row183_layer001_intervals : List ColouredInterval :=
  [(2, 73728, 73910), (2, 81920, 82102), (2, 90112, 90294), (2, 81920, 82102), (2, 98304, 98486), (2, 114688, 114870), (2, 131072, 131254), (2, 98304, 98486), (2, 131072, 131254), (2, 131072, 131254), (2, 131072, 131254), (3, 118098, 118280), (5, 78125, 78307), (5, 93750, 93932), (5, 109375, 109557), (5, 125000, 125182), (5, 78125, 78307), (7, 67228, 67410), (7, 84035, 84217), (7, 100842, 101024), (7, 117649, 117831), (7, 117649, 117831), (11, 73205, 73387), (11, 87846, 88028), (11, 102487, 102669), (11, 117128, 117310), (11, 131769, 131951), (13, 85683, 85865), (13, 114244, 114426), (17, 83521, 83703), (19, 68590, 68772), (19, 75449, 75631), (19, 130321, 130503), (23, 73002, 73184), (23, 85169, 85351), (23, 97336, 97518), (23, 109503, 109685), (23, 121670, 121852), (29, 73167, 73349), (29, 97556, 97738), (29, 121945, 122127), (31, 89373, 89555), (31, 119164, 119346), (37, 101306, 101488), (41, 68921, 69103), (43, 79507, 79689), (47, 103823, 104005), (79, 68651, 68833), (83, 68890, 69072), (83, 75779, 75961), (89, 71289, 71471), (89, 79210, 79392), (89, 87131, 87313), (97, 75272, 75454), (97, 84681, 84863), (97, 94090, 94272), (97, 103499, 103681), (101, 71407, 71589), (101, 81608, 81790), (101, 91809, 91991), (101, 102010, 102192), (101, 112211, 112393), (103, 74263, 74445), (103, 84872, 85054), (103, 95481, 95663), (103, 106090, 106272), (103, 116699, 116881), (107, 68694, 68876), (107, 80143, 80325), (107, 91592, 91774), (107, 103041, 103223), (107, 114490, 114672), (107, 125939, 126121), (109, 71286, 71468), (109, 83167, 83349), (109, 95048, 95230), (109, 106929, 107111), (109, 118810, 118992), (109, 130691, 130873), (113, 76614, 76796), (113, 89383, 89565), (113, 102152, 102334), (113, 114921, 115103), (113, 127690, 127872), (127, 80645, 80827), (127, 96774, 96956), (127, 112903, 113085), (127, 129032, 129214), (131, 68644, 68826), (131, 85805, 85987), (131, 102966, 103148), (131, 120127, 120309), (137, 75076, 75258), (137, 93845, 94027), (137, 112614, 112796), (137, 131383, 131565), (139, 77284, 77466), (139, 96605, 96787), (139, 115926, 116108), (149, 66612, 66785), (149, 88804, 88986), (149, 111005, 111187), (149, 133206, 133223), (151, 68403, 68585), (151, 91204, 91386), (151, 114005, 114187), (157, 73947, 74129), (157, 98596, 98778), (157, 123245, 123427), (163, 79707, 79889), (163, 106276, 106458), (163, 132845, 133027), (167, 83667, 83849), (167, 111556, 111738), (173, 89787, 89969), (173, 119716, 119898), (179, 96123, 96305), (179, 128164, 128346), (181, 98283, 98465), (181, 131044, 131226)]

def row183_layer001_block000 : List ColouredInterval :=
  [(2, 73728, 73910), (2, 81920, 82102), (2, 90112, 90294), (2, 81920, 82102), (2, 98304, 98486), (2, 114688, 114870), (2, 131072, 131254), (2, 98304, 98486), (2, 131072, 131254), (2, 131072, 131254), (2, 131072, 131254), (3, 118098, 118280), (5, 78125, 78307), (5, 93750, 93932), (5, 109375, 109557), (5, 125000, 125182)]

def row183_layer001_block001 : List ColouredInterval :=
  [(5, 78125, 78307), (7, 67228, 67410), (7, 84035, 84217), (7, 100842, 101024), (7, 117649, 117831), (7, 117649, 117831), (11, 73205, 73387), (11, 87846, 88028), (11, 102487, 102669), (11, 117128, 117310), (11, 131769, 131951), (13, 85683, 85865), (13, 114244, 114426), (17, 83521, 83703), (19, 68590, 68772), (19, 75449, 75631)]

def row183_layer001_block002 : List ColouredInterval :=
  [(19, 130321, 130503), (23, 73002, 73184), (23, 85169, 85351), (23, 97336, 97518), (23, 109503, 109685), (23, 121670, 121852), (29, 73167, 73349), (29, 97556, 97738), (29, 121945, 122127), (31, 89373, 89555), (31, 119164, 119346), (37, 101306, 101488), (41, 68921, 69103), (43, 79507, 79689), (47, 103823, 104005), (79, 68651, 68833)]

def row183_layer001_block003 : List ColouredInterval :=
  [(83, 68890, 69072), (83, 75779, 75961), (89, 71289, 71471), (89, 79210, 79392), (89, 87131, 87313), (97, 75272, 75454), (97, 84681, 84863), (97, 94090, 94272), (97, 103499, 103681), (101, 71407, 71589), (101, 81608, 81790), (101, 91809, 91991), (101, 102010, 102192), (101, 112211, 112393), (103, 74263, 74445), (103, 84872, 85054)]

def row183_layer001_block004 : List ColouredInterval :=
  [(103, 95481, 95663), (103, 106090, 106272), (103, 116699, 116881), (107, 68694, 68876), (107, 80143, 80325), (107, 91592, 91774), (107, 103041, 103223), (107, 114490, 114672), (107, 125939, 126121), (109, 71286, 71468), (109, 83167, 83349), (109, 95048, 95230), (109, 106929, 107111), (109, 118810, 118992), (109, 130691, 130873), (113, 76614, 76796)]

def row183_layer001_block005 : List ColouredInterval :=
  [(113, 89383, 89565), (113, 102152, 102334), (113, 114921, 115103), (113, 127690, 127872), (127, 80645, 80827), (127, 96774, 96956), (127, 112903, 113085), (127, 129032, 129214), (131, 68644, 68826), (131, 85805, 85987), (131, 102966, 103148), (131, 120127, 120309), (137, 75076, 75258), (137, 93845, 94027), (137, 112614, 112796), (137, 131383, 131565)]

def row183_layer001_block006 : List ColouredInterval :=
  [(139, 77284, 77466), (139, 96605, 96787), (139, 115926, 116108), (149, 66612, 66785), (149, 88804, 88986), (149, 111005, 111187), (149, 133206, 133223), (151, 68403, 68585), (151, 91204, 91386), (151, 114005, 114187), (157, 73947, 74129), (157, 98596, 98778), (157, 123245, 123427), (163, 79707, 79889), (163, 106276, 106458), (163, 132845, 133027)]

def row183_layer001_block007 : List ColouredInterval :=
  [(167, 83667, 83849), (167, 111556, 111738), (173, 89787, 89969), (173, 119716, 119898), (179, 96123, 96305), (179, 128164, 128346), (181, 98283, 98465), (181, 131044, 131226)]

def row183_layer001_chunks : List (List ColouredInterval) :=
  [row183_layer001_block000, row183_layer001_block001, row183_layer001_block002, row183_layer001_block003, row183_layer001_block004, row183_layer001_block005, row183_layer001_block006, row183_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_arithmetic : LayerArithmeticValid row183.height { lower := 66612, upper := 133224, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_enumeration :
    activePowerIntervalList 183 11 66612 133224 = row183_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_pairs000 :
    row183_layer001_block000.all (fun I => row183_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_pairs001 :
    row183_layer001_block001.all (fun I => row183_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_pairs002 :
    row183_layer001_block002.all (fun I => row183_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_pairs003 :
    row183_layer001_block003.all (fun I => row183_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_pairs004 :
    row183_layer001_block004.all (fun I => row183_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_pairs005 :
    row183_layer001_block005.all (fun I => row183_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_pairs006 :
    row183_layer001_block006.all (fun I => row183_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_pairs007 :
    row183_layer001_block007.all (fun I => row183_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_chunks_eq : row183_layer001_chunks.flatten = row183_layer001_intervals := by
  rfl

theorem row183_layer001_pairs : pairCoverCheck row183_layer001_intervals row183_bounds = true := by
  apply pairCoverCheck_of_chunks row183_layer001_chunks_eq
  intro block hblock
  simp only [row183_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row183_layer001_pairs000
  · exact row183_layer001_pairs001
  · exact row183_layer001_pairs002
  · exact row183_layer001_pairs003
  · exact row183_layer001_pairs004
  · exact row183_layer001_pairs005
  · exact row183_layer001_pairs006
  · exact row183_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer001_checked :
    coverLayerCheck row183.height row183.goods { lower := 66612, upper := 133224, M := 11 } = true := by
  exact coverLayerCheck_of_parts row183_layer001_arithmetic row183_layer001_enumeration row183_bounds_eq row183_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row183_layer002_intervals : List ColouredInterval :=
  [(2, 163840, 164022), (2, 196608, 196790), (2, 229376, 229558), (2, 262144, 262326), (2, 196608, 196790), (2, 262144, 262326), (2, 262144, 262326), (2, 262144, 262326), (3, 177147, 177329), (5, 156250, 156432), (5, 234375, 234557), (7, 134456, 134638), (7, 235298, 235480), (11, 161051, 161233), (13, 142805, 142987), (13, 171366, 171548), (13, 199927, 200109), (13, 228488, 228670), (17, 167042, 167224), (17, 250563, 250745), (19, 260642, 260824), (29, 146334, 146516), (29, 170723, 170905), (29, 195112, 195294), (31, 148955, 149137), (31, 178746, 178928), (31, 208537, 208719), (31, 238328, 238510), (37, 151959, 152141), (37, 202612, 202794), (37, 253265, 253447), (41, 137842, 138024), (41, 206763, 206945), (43, 159014, 159196), (43, 238521, 238703), (47, 207646, 207828), (53, 148877, 149059), (59, 205379, 205561), (131, 137288, 137470), (137, 150152, 150334), (139, 135247, 135429), (139, 154568, 154750), (149, 133224, 133388), (149, 155407, 155589), (149, 177608, 177790), (151, 136806, 136988), (151, 159607, 159789), (151, 182408, 182590), (157, 147894, 148076), (157, 172543, 172725), (157, 197192, 197374), (163, 159414, 159596), (163, 185983, 186165), (163, 212552, 212734), (167, 139445, 139627), (167, 167334, 167516), (167, 195223, 195405), (167, 223112, 223294), (173, 149645, 149827), (173, 179574, 179756), (173, 209503, 209685), (173, 239432, 239614), (179, 160205, 160387), (179, 192246, 192428), (179, 224287, 224469), (179, 256328, 256510), (181, 163805, 163987), (181, 196566, 196748), (181, 229327, 229509), (181, 262088, 262270)]

def row183_layer002_block000 : List ColouredInterval :=
  [(2, 163840, 164022), (2, 196608, 196790), (2, 229376, 229558), (2, 262144, 262326), (2, 196608, 196790), (2, 262144, 262326), (2, 262144, 262326), (2, 262144, 262326), (3, 177147, 177329), (5, 156250, 156432), (5, 234375, 234557), (7, 134456, 134638), (7, 235298, 235480), (11, 161051, 161233), (13, 142805, 142987), (13, 171366, 171548)]

def row183_layer002_block001 : List ColouredInterval :=
  [(13, 199927, 200109), (13, 228488, 228670), (17, 167042, 167224), (17, 250563, 250745), (19, 260642, 260824), (29, 146334, 146516), (29, 170723, 170905), (29, 195112, 195294), (31, 148955, 149137), (31, 178746, 178928), (31, 208537, 208719), (31, 238328, 238510), (37, 151959, 152141), (37, 202612, 202794), (37, 253265, 253447), (41, 137842, 138024)]

def row183_layer002_block002 : List ColouredInterval :=
  [(41, 206763, 206945), (43, 159014, 159196), (43, 238521, 238703), (47, 207646, 207828), (53, 148877, 149059), (59, 205379, 205561), (131, 137288, 137470), (137, 150152, 150334), (139, 135247, 135429), (139, 154568, 154750), (149, 133224, 133388), (149, 155407, 155589), (149, 177608, 177790), (151, 136806, 136988), (151, 159607, 159789), (151, 182408, 182590)]

def row183_layer002_block003 : List ColouredInterval :=
  [(157, 147894, 148076), (157, 172543, 172725), (157, 197192, 197374), (163, 159414, 159596), (163, 185983, 186165), (163, 212552, 212734), (167, 139445, 139627), (167, 167334, 167516), (167, 195223, 195405), (167, 223112, 223294), (173, 149645, 149827), (173, 179574, 179756), (173, 209503, 209685), (173, 239432, 239614), (179, 160205, 160387), (179, 192246, 192428)]

def row183_layer002_block004 : List ColouredInterval :=
  [(179, 224287, 224469), (179, 256328, 256510), (181, 163805, 163987), (181, 196566, 196748), (181, 229327, 229509), (181, 262088, 262270)]

def row183_layer002_chunks : List (List ColouredInterval) :=
  [row183_layer002_block000, row183_layer002_block001, row183_layer002_block002, row183_layer002_block003, row183_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_arithmetic : LayerArithmeticValid row183.height { lower := 133224, upper := 266448, M := 8 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_enumeration :
    activePowerIntervalList 183 8 133224 266448 = row183_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_pairs000 :
    row183_layer002_block000.all (fun I => row183_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_pairs001 :
    row183_layer002_block001.all (fun I => row183_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_pairs002 :
    row183_layer002_block002.all (fun I => row183_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_pairs003 :
    row183_layer002_block003.all (fun I => row183_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_pairs004 :
    row183_layer002_block004.all (fun I => row183_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row183_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_chunks_eq : row183_layer002_chunks.flatten = row183_layer002_intervals := by
  rfl

theorem row183_layer002_pairs : pairCoverCheck row183_layer002_intervals row183_bounds = true := by
  apply pairCoverCheck_of_chunks row183_layer002_chunks_eq
  intro block hblock
  simp only [row183_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row183_layer002_pairs000
  · exact row183_layer002_pairs001
  · exact row183_layer002_pairs002
  · exact row183_layer002_pairs003
  · exact row183_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer002_checked :
    coverLayerCheck row183.height row183.goods { lower := 133224, upper := 266448, M := 8 } = true := by
  exact coverLayerCheck_of_parts row183_layer002_arithmetic row183_layer002_enumeration row183_bounds_eq row183_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer003_checked :
    coverLayerCheck row183.height row183.goods { lower := 266448, upper := 532896, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer004_checked :
    coverLayerCheck row183.height row183.goods { lower := 532896, upper := 1065792, M := 5 } = true := by
  decide +kernel

theorem row183_layer005_checked :
    coverLayerCheck row183.height row183.goods { lower := 1065792, upper := 2131584, M := 3 } = true := by
  decide +kernel

theorem row183_layer006_checked :
    coverLayerCheck row183.height row183.goods { lower := 2131584, upper := 4263168, M := 3 } = true := by
  decide +kernel

theorem row183_layer007_checked :
    coverLayerCheck row183.height row183.goods { lower := 4263168, upper := 8526336, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer008_checked :
    coverLayerCheck row183.height row183.goods { lower := 8526336, upper := 17052672, M := 2 } = true := by
  decide +kernel

theorem row183_layer009_checked :
    coverLayerCheck row183.height row183.goods { lower := 17052672, upper := 34105344, M := 1 } = true := by
  decide +kernel

theorem row183_layer010_checked :
    coverLayerCheck row183.height row183.goods { lower := 34105344, upper := 68210688, M := 1 } = true := by
  decide +kernel

theorem row183_layer011_checked :
    coverLayerCheck row183.height row183.goods { lower := 68210688, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layers_checked :
    row183.layers.all (coverLayerCheck row183.height row183.goods) = true := by
  change row183_layers.all (coverLayerCheck row183.height row183.goods) = true
  simp only [row183_layers, List.all_cons, List.all_nil,
    row183_layer000_checked,
    row183_layer001_checked,
    row183_layer002_checked,
    row183_layer003_checked,
    row183_layer004_checked,
    row183_layer005_checked,
    row183_layer006_checked,
    row183_layer007_checked,
    row183_layer008_checked,
    row183_layer009_checked,
    row183_layer010_checked,
    row183_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_checked : finiteCoverRowCheck row183 = true := by
  simp only [finiteCoverRowCheck, row183_registered, row183_goods_checked,
    row183_small_checked, row183_layerCover_checked, row183_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i183 :
    ∀ n j : ℕ, 1 ≤ 183 ∧ 183 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 183 ≤ p ∧ p ∣ Nat.choose n 183 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row183_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i183
