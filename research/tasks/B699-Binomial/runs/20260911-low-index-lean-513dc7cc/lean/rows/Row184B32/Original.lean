import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row184B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer000_checked :
    coverLayerCheck row184.height row184.goods { lower := 33672, upper := 67344, M := 14 } = true := by
  exact coverLayerCheck_of_parts row184_layer000_arithmetic row184_layer000_enumeration row184_bounds_eq row184_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row184_layer001_intervals : List ColouredInterval :=
  [(2, 131072, 131255), (3, 78732, 78915), (3, 98415, 98598), (3, 118098, 118281), (3, 118098, 118281), (5, 78125, 78308), (5, 93750, 93933), (5, 109375, 109558), (5, 125000, 125183), (5, 78125, 78308), (7, 67344, 67411), (7, 84035, 84218), (7, 100842, 101025), (7, 117649, 117832), (7, 134456, 134639), (7, 117649, 117832), (11, 73205, 73388), (11, 87846, 88029), (11, 102487, 102670), (11, 117128, 117311), (11, 131769, 131952), (13, 85683, 85866), (13, 114244, 114427), (17, 83521, 83704), (19, 68590, 68773), (19, 130321, 130504), (29, 73167, 73350), (29, 97556, 97739), (29, 121945, 122128), (31, 89373, 89556), (31, 119164, 119347), (37, 101306, 101489), (41, 68921, 69104), (43, 79507, 79690), (47, 103823, 104006), (83, 68890, 69073), (89, 71289, 71472), (89, 79210, 79393), (97, 75272, 75455), (97, 84681, 84864), (97, 94090, 94273), (101, 71407, 71590), (101, 81608, 81791), (101, 91809, 91992), (101, 102010, 102193), (103, 74263, 74446), (103, 84872, 85055), (103, 95481, 95664), (103, 106090, 106273), (107, 68694, 68877), (107, 80143, 80326), (107, 91592, 91775), (107, 103041, 103224), (107, 114490, 114673), (109, 71286, 71469), (109, 83167, 83350), (109, 95048, 95231), (109, 106929, 107112), (109, 118810, 118993), (113, 76614, 76797), (113, 89383, 89566), (113, 102152, 102335), (113, 114921, 115104), (113, 127690, 127873), (127, 80645, 80828), (127, 96774, 96957), (127, 112903, 113086), (127, 129032, 129215), (131, 68644, 68827), (131, 85805, 85988), (131, 102966, 103149), (131, 120127, 120310), (137, 75076, 75259), (137, 93845, 94028), (137, 112614, 112797), (137, 131383, 131566), (139, 77284, 77467), (139, 96605, 96788), (139, 115926, 116109), (149, 88804, 88987), (149, 111005, 111188), (149, 133206, 133389), (151, 68403, 68586), (151, 91204, 91387), (151, 114005, 114188), (157, 73947, 74130), (157, 98596, 98779), (157, 123245, 123428), (163, 79707, 79890), (163, 106276, 106459), (163, 132845, 133028), (167, 83667, 83850), (167, 111556, 111739), (173, 89787, 89970), (173, 119716, 119899), (179, 96123, 96306), (179, 128164, 128347), (181, 98283, 98466), (181, 131044, 131227)]

def row184_layer001_block000 : List ColouredInterval :=
  [(2, 131072, 131255), (3, 78732, 78915), (3, 98415, 98598), (3, 118098, 118281), (3, 118098, 118281), (5, 78125, 78308), (5, 93750, 93933), (5, 109375, 109558), (5, 125000, 125183), (5, 78125, 78308), (7, 67344, 67411), (7, 84035, 84218), (7, 100842, 101025), (7, 117649, 117832), (7, 134456, 134639), (7, 117649, 117832)]

def row184_layer001_block001 : List ColouredInterval :=
  [(11, 73205, 73388), (11, 87846, 88029), (11, 102487, 102670), (11, 117128, 117311), (11, 131769, 131952), (13, 85683, 85866), (13, 114244, 114427), (17, 83521, 83704), (19, 68590, 68773), (19, 130321, 130504), (29, 73167, 73350), (29, 97556, 97739), (29, 121945, 122128), (31, 89373, 89556), (31, 119164, 119347), (37, 101306, 101489)]

def row184_layer001_block002 : List ColouredInterval :=
  [(41, 68921, 69104), (43, 79507, 79690), (47, 103823, 104006), (83, 68890, 69073), (89, 71289, 71472), (89, 79210, 79393), (97, 75272, 75455), (97, 84681, 84864), (97, 94090, 94273), (101, 71407, 71590), (101, 81608, 81791), (101, 91809, 91992), (101, 102010, 102193), (103, 74263, 74446), (103, 84872, 85055), (103, 95481, 95664)]

def row184_layer001_block003 : List ColouredInterval :=
  [(103, 106090, 106273), (107, 68694, 68877), (107, 80143, 80326), (107, 91592, 91775), (107, 103041, 103224), (107, 114490, 114673), (109, 71286, 71469), (109, 83167, 83350), (109, 95048, 95231), (109, 106929, 107112), (109, 118810, 118993), (113, 76614, 76797), (113, 89383, 89566), (113, 102152, 102335), (113, 114921, 115104), (113, 127690, 127873)]

def row184_layer001_block004 : List ColouredInterval :=
  [(127, 80645, 80828), (127, 96774, 96957), (127, 112903, 113086), (127, 129032, 129215), (131, 68644, 68827), (131, 85805, 85988), (131, 102966, 103149), (131, 120127, 120310), (137, 75076, 75259), (137, 93845, 94028), (137, 112614, 112797), (137, 131383, 131566), (139, 77284, 77467), (139, 96605, 96788), (139, 115926, 116109), (149, 88804, 88987)]

def row184_layer001_block005 : List ColouredInterval :=
  [(149, 111005, 111188), (149, 133206, 133389), (151, 68403, 68586), (151, 91204, 91387), (151, 114005, 114188), (157, 73947, 74130), (157, 98596, 98779), (157, 123245, 123428), (163, 79707, 79890), (163, 106276, 106459), (163, 132845, 133028), (167, 83667, 83850), (167, 111556, 111739), (173, 89787, 89970), (173, 119716, 119899), (179, 96123, 96306)]

def row184_layer001_block006 : List ColouredInterval :=
  [(179, 128164, 128347), (181, 98283, 98466), (181, 131044, 131227)]

def row184_layer001_chunks : List (List ColouredInterval) :=
  [row184_layer001_block000, row184_layer001_block001, row184_layer001_block002, row184_layer001_block003, row184_layer001_block004, row184_layer001_block005, row184_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_arithmetic : LayerArithmeticValid row184.height { lower := 67344, upper := 134688, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_enumeration :
    activePowerIntervalList 184 10 67344 134688 = row184_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_pairs000 :
    row184_layer001_block000.all (fun I => row184_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_pairs001 :
    row184_layer001_block001.all (fun I => row184_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_pairs002 :
    row184_layer001_block002.all (fun I => row184_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_pairs003 :
    row184_layer001_block003.all (fun I => row184_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_pairs004 :
    row184_layer001_block004.all (fun I => row184_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_pairs005 :
    row184_layer001_block005.all (fun I => row184_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_pairs006 :
    row184_layer001_block006.all (fun I => row184_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_chunks_eq : row184_layer001_chunks.flatten = row184_layer001_intervals := by
  rfl

theorem row184_layer001_pairs : pairCoverCheck row184_layer001_intervals row184_bounds = true := by
  apply pairCoverCheck_of_chunks row184_layer001_chunks_eq
  intro block hblock
  simp only [row184_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row184_layer001_pairs000
  · exact row184_layer001_pairs001
  · exact row184_layer001_pairs002
  · exact row184_layer001_pairs003
  · exact row184_layer001_pairs004
  · exact row184_layer001_pairs005
  · exact row184_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer001_checked :
    coverLayerCheck row184.height row184.goods { lower := 67344, upper := 134688, M := 10 } = true := by
  exact coverLayerCheck_of_parts row184_layer001_arithmetic row184_layer001_enumeration row184_bounds_eq row184_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row184_layer002_intervals : List ColouredInterval :=
  [(2, 262144, 262327), (3, 137781, 137964), (3, 157464, 157647), (3, 177147, 177330), (3, 236196, 236379), (3, 177147, 177330), (5, 156250, 156433), (5, 234375, 234558), (7, 235298, 235481), (11, 161051, 161234), (13, 142805, 142988), (13, 171366, 171549), (13, 199927, 200110), (13, 228488, 228671), (17, 167042, 167225), (17, 250563, 250746), (19, 260642, 260825), (29, 146334, 146517), (29, 170723, 170906), (29, 195112, 195295), (31, 148955, 149138), (31, 178746, 178929), (31, 208537, 208720), (31, 238328, 238511), (37, 151959, 152142), (37, 202612, 202795), (37, 253265, 253448), (41, 137842, 138025), (41, 206763, 206946), (43, 159014, 159197), (43, 238521, 238704), (47, 207646, 207829), (53, 148877, 149060), (59, 205379, 205562), (61, 226981, 227164), (131, 137288, 137471), (137, 150152, 150335), (139, 135247, 135430), (139, 154568, 154751), (149, 155407, 155590), (149, 177608, 177791), (151, 136806, 136989), (151, 159607, 159790), (151, 182408, 182591), (157, 147894, 148077), (157, 172543, 172726), (157, 197192, 197375), (163, 159414, 159597), (163, 185983, 186166), (163, 212552, 212735), (167, 139445, 139628), (167, 167334, 167517), (167, 195223, 195406), (167, 223112, 223295), (173, 149645, 149828), (173, 179574, 179757), (173, 209503, 209686), (173, 239432, 239615), (179, 160205, 160388), (179, 192246, 192429), (179, 224287, 224470), (179, 256328, 256511), (181, 163805, 163988), (181, 196566, 196749), (181, 229327, 229510), (181, 262088, 262271)]

def row184_layer002_block000 : List ColouredInterval :=
  [(2, 262144, 262327), (3, 137781, 137964), (3, 157464, 157647), (3, 177147, 177330), (3, 236196, 236379), (3, 177147, 177330), (5, 156250, 156433), (5, 234375, 234558), (7, 235298, 235481), (11, 161051, 161234), (13, 142805, 142988), (13, 171366, 171549), (13, 199927, 200110), (13, 228488, 228671), (17, 167042, 167225), (17, 250563, 250746)]

def row184_layer002_block001 : List ColouredInterval :=
  [(19, 260642, 260825), (29, 146334, 146517), (29, 170723, 170906), (29, 195112, 195295), (31, 148955, 149138), (31, 178746, 178929), (31, 208537, 208720), (31, 238328, 238511), (37, 151959, 152142), (37, 202612, 202795), (37, 253265, 253448), (41, 137842, 138025), (41, 206763, 206946), (43, 159014, 159197), (43, 238521, 238704), (47, 207646, 207829)]

def row184_layer002_block002 : List ColouredInterval :=
  [(53, 148877, 149060), (59, 205379, 205562), (61, 226981, 227164), (131, 137288, 137471), (137, 150152, 150335), (139, 135247, 135430), (139, 154568, 154751), (149, 155407, 155590), (149, 177608, 177791), (151, 136806, 136989), (151, 159607, 159790), (151, 182408, 182591), (157, 147894, 148077), (157, 172543, 172726), (157, 197192, 197375), (163, 159414, 159597)]

def row184_layer002_block003 : List ColouredInterval :=
  [(163, 185983, 186166), (163, 212552, 212735), (167, 139445, 139628), (167, 167334, 167517), (167, 195223, 195406), (167, 223112, 223295), (173, 149645, 149828), (173, 179574, 179757), (173, 209503, 209686), (173, 239432, 239615), (179, 160205, 160388), (179, 192246, 192429), (179, 224287, 224470), (179, 256328, 256511), (181, 163805, 163988), (181, 196566, 196749)]

def row184_layer002_block004 : List ColouredInterval :=
  [(181, 229327, 229510), (181, 262088, 262271)]

def row184_layer002_chunks : List (List ColouredInterval) :=
  [row184_layer002_block000, row184_layer002_block001, row184_layer002_block002, row184_layer002_block003, row184_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_arithmetic : LayerArithmeticValid row184.height { lower := 134688, upper := 269376, M := 8 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_enumeration :
    activePowerIntervalList 184 8 134688 269376 = row184_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_pairs000 :
    row184_layer002_block000.all (fun I => row184_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_pairs001 :
    row184_layer002_block001.all (fun I => row184_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_pairs002 :
    row184_layer002_block002.all (fun I => row184_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_pairs003 :
    row184_layer002_block003.all (fun I => row184_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_pairs004 :
    row184_layer002_block004.all (fun I => row184_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row184_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_chunks_eq : row184_layer002_chunks.flatten = row184_layer002_intervals := by
  rfl

theorem row184_layer002_pairs : pairCoverCheck row184_layer002_intervals row184_bounds = true := by
  apply pairCoverCheck_of_chunks row184_layer002_chunks_eq
  intro block hblock
  simp only [row184_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row184_layer002_pairs000
  · exact row184_layer002_pairs001
  · exact row184_layer002_pairs002
  · exact row184_layer002_pairs003
  · exact row184_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer002_checked :
    coverLayerCheck row184.height row184.goods { lower := 134688, upper := 269376, M := 8 } = true := by
  exact coverLayerCheck_of_parts row184_layer002_arithmetic row184_layer002_enumeration row184_bounds_eq row184_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer003_checked :
    coverLayerCheck row184.height row184.goods { lower := 269376, upper := 538752, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer004_checked :
    coverLayerCheck row184.height row184.goods { lower := 538752, upper := 1077504, M := 4 } = true := by
  decide +kernel

theorem row184_layer005_checked :
    coverLayerCheck row184.height row184.goods { lower := 1077504, upper := 2155008, M := 3 } = true := by
  decide +kernel

theorem row184_layer006_checked :
    coverLayerCheck row184.height row184.goods { lower := 2155008, upper := 4310016, M := 3 } = true := by
  decide +kernel

theorem row184_layer007_checked :
    coverLayerCheck row184.height row184.goods { lower := 4310016, upper := 8620032, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer008_checked :
    coverLayerCheck row184.height row184.goods { lower := 8620032, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layers_checked :
    row184.layers.all (coverLayerCheck row184.height row184.goods) = true := by
  change row184_layers.all (coverLayerCheck row184.height row184.goods) = true
  simp only [row184_layers, List.all_cons, List.all_nil,
    row184_layer000_checked,
    row184_layer001_checked,
    row184_layer002_checked,
    row184_layer003_checked,
    row184_layer004_checked,
    row184_layer005_checked,
    row184_layer006_checked,
    row184_layer007_checked,
    row184_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_checked : finiteCoverRowCheck row184 = true := by
  simp only [finiteCoverRowCheck, row184_registered, row184_goods_checked,
    row184_small_checked, row184_layerCover_checked, row184_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i184 :
    ∀ n j : ℕ, 1 ≤ 184 ∧ 184 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 184 ≤ p ∧ p ∣ Nat.choose n 184 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row184_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i184
