import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs008 :
    row182_layer000_block008.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_pairs009 :
    row182_layer000_block009.all (fun I => row182_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_chunks_eq : row182_layer000_chunks.flatten = row182_layer000_intervals := by
  rfl

theorem row182_layer000_pairs : pairCoverCheck row182_layer000_intervals row182_bounds = true := by
  apply pairCoverCheck_of_chunks row182_layer000_chunks_eq
  intro block hblock
  simp only [row182_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row182_layer000_pairs000
  · exact row182_layer000_pairs001
  · exact row182_layer000_pairs002
  · exact row182_layer000_pairs003
  · exact row182_layer000_pairs004
  · exact row182_layer000_pairs005
  · exact row182_layer000_pairs006
  · exact row182_layer000_pairs007
  · exact row182_layer000_pairs008
  · exact row182_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer000_checked :
    coverLayerCheck row182.height row182.goods { lower := 32942, upper := 65884, M := 15 } = true := by
  exact coverLayerCheck_of_parts row182_layer000_arithmetic row182_layer000_enumeration row182_bounds_eq row182_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row182_layer001_intervals : List ColouredInterval :=
  [(2, 81920, 82101), (2, 98304, 98485), (2, 131072, 131253), (2, 131072, 131253), (2, 131072, 131253), (3, 72171, 72352), (3, 78732, 78913), (3, 98415, 98596), (3, 118098, 118279), (3, 118098, 118279), (5, 78125, 78306), (5, 93750, 93931), (5, 109375, 109556), (5, 125000, 125181), (5, 78125, 78306), (7, 117649, 117830), (11, 73205, 73386), (11, 87846, 88027), (11, 102487, 102668), (11, 117128, 117309), (17, 83521, 83702), (19, 68590, 68771), (19, 75449, 75630), (19, 130321, 130502), (23, 73002, 73183), (23, 85169, 85350), (23, 97336, 97517), (23, 109503, 109684), (23, 121670, 121851), (29, 73167, 73348), (29, 97556, 97737), (29, 121945, 122126), (31, 89373, 89554), (31, 119164, 119345), (37, 101306, 101487), (41, 68921, 69102), (43, 79507, 79688), (47, 103823, 104004), (79, 68651, 68832), (83, 68890, 69071), (83, 75779, 75960), (89, 71289, 71470), (89, 79210, 79391), (89, 87131, 87312), (97, 65884, 66044), (97, 75272, 75453), (97, 84681, 84862), (97, 94090, 94271), (97, 103499, 103680), (101, 71407, 71588), (101, 81608, 81789), (101, 91809, 91990), (101, 102010, 102191), (101, 112211, 112392), (103, 74263, 74444), (103, 84872, 85053), (103, 95481, 95662), (103, 106090, 106271), (103, 116699, 116880), (107, 68694, 68875), (107, 80143, 80324), (107, 91592, 91773), (107, 103041, 103222), (107, 114490, 114671), (107, 125939, 126120), (109, 71286, 71467), (109, 83167, 83348), (109, 95048, 95229), (109, 106929, 107110), (109, 118810, 118991), (109, 130691, 130872), (113, 76614, 76795), (113, 89383, 89564), (113, 102152, 102333), (113, 114921, 115102), (113, 127690, 127871), (127, 80645, 80826), (127, 96774, 96955), (127, 112903, 113084), (127, 129032, 129213), (131, 68644, 68825), (131, 85805, 85986), (131, 102966, 103147), (131, 120127, 120308), (137, 75076, 75257), (137, 93845, 94026), (137, 112614, 112795), (137, 131383, 131564), (139, 77284, 77465), (139, 96605, 96786), (139, 115926, 116107), (149, 66603, 66784), (149, 88804, 88985), (149, 111005, 111186), (151, 68403, 68584), (151, 91204, 91385), (151, 114005, 114186), (157, 73947, 74128), (157, 98596, 98777), (157, 123245, 123426), (163, 79707, 79888), (163, 106276, 106457), (167, 83667, 83848), (167, 111556, 111737), (173, 89787, 89968), (173, 119716, 119897), (179, 96123, 96304), (179, 128164, 128345), (181, 98283, 98464), (181, 131044, 131225)]

def row182_layer001_block000 : List ColouredInterval :=
  [(2, 81920, 82101), (2, 98304, 98485), (2, 131072, 131253), (2, 131072, 131253), (2, 131072, 131253), (3, 72171, 72352), (3, 78732, 78913), (3, 98415, 98596), (3, 118098, 118279), (3, 118098, 118279), (5, 78125, 78306), (5, 93750, 93931), (5, 109375, 109556), (5, 125000, 125181), (5, 78125, 78306), (7, 117649, 117830)]

def row182_layer001_block001 : List ColouredInterval :=
  [(11, 73205, 73386), (11, 87846, 88027), (11, 102487, 102668), (11, 117128, 117309), (17, 83521, 83702), (19, 68590, 68771), (19, 75449, 75630), (19, 130321, 130502), (23, 73002, 73183), (23, 85169, 85350), (23, 97336, 97517), (23, 109503, 109684), (23, 121670, 121851), (29, 73167, 73348), (29, 97556, 97737), (29, 121945, 122126)]

def row182_layer001_block002 : List ColouredInterval :=
  [(31, 89373, 89554), (31, 119164, 119345), (37, 101306, 101487), (41, 68921, 69102), (43, 79507, 79688), (47, 103823, 104004), (79, 68651, 68832), (83, 68890, 69071), (83, 75779, 75960), (89, 71289, 71470), (89, 79210, 79391), (89, 87131, 87312), (97, 65884, 66044), (97, 75272, 75453), (97, 84681, 84862), (97, 94090, 94271)]

def row182_layer001_block003 : List ColouredInterval :=
  [(97, 103499, 103680), (101, 71407, 71588), (101, 81608, 81789), (101, 91809, 91990), (101, 102010, 102191), (101, 112211, 112392), (103, 74263, 74444), (103, 84872, 85053), (103, 95481, 95662), (103, 106090, 106271), (103, 116699, 116880), (107, 68694, 68875), (107, 80143, 80324), (107, 91592, 91773), (107, 103041, 103222), (107, 114490, 114671)]

def row182_layer001_block004 : List ColouredInterval :=
  [(107, 125939, 126120), (109, 71286, 71467), (109, 83167, 83348), (109, 95048, 95229), (109, 106929, 107110), (109, 118810, 118991), (109, 130691, 130872), (113, 76614, 76795), (113, 89383, 89564), (113, 102152, 102333), (113, 114921, 115102), (113, 127690, 127871), (127, 80645, 80826), (127, 96774, 96955), (127, 112903, 113084), (127, 129032, 129213)]

def row182_layer001_block005 : List ColouredInterval :=
  [(131, 68644, 68825), (131, 85805, 85986), (131, 102966, 103147), (131, 120127, 120308), (137, 75076, 75257), (137, 93845, 94026), (137, 112614, 112795), (137, 131383, 131564), (139, 77284, 77465), (139, 96605, 96786), (139, 115926, 116107), (149, 66603, 66784), (149, 88804, 88985), (149, 111005, 111186), (151, 68403, 68584), (151, 91204, 91385)]

def row182_layer001_block006 : List ColouredInterval :=
  [(151, 114005, 114186), (157, 73947, 74128), (157, 98596, 98777), (157, 123245, 123426), (163, 79707, 79888), (163, 106276, 106457), (167, 83667, 83848), (167, 111556, 111737), (173, 89787, 89968), (173, 119716, 119897), (179, 96123, 96304), (179, 128164, 128345), (181, 98283, 98464), (181, 131044, 131225)]

def row182_layer001_chunks : List (List ColouredInterval) :=
  [row182_layer001_block000, row182_layer001_block001, row182_layer001_block002, row182_layer001_block003, row182_layer001_block004, row182_layer001_block005, row182_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_arithmetic : LayerArithmeticValid row182.height { lower := 65884, upper := 131768, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_enumeration :
    activePowerIntervalList 182 11 65884 131768 = row182_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_pairs000 :
    row182_layer001_block000.all (fun I => row182_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_pairs001 :
    row182_layer001_block001.all (fun I => row182_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_pairs002 :
    row182_layer001_block002.all (fun I => row182_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_pairs003 :
    row182_layer001_block003.all (fun I => row182_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_pairs004 :
    row182_layer001_block004.all (fun I => row182_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_pairs005 :
    row182_layer001_block005.all (fun I => row182_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_pairs006 :
    row182_layer001_block006.all (fun I => row182_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_chunks_eq : row182_layer001_chunks.flatten = row182_layer001_intervals := by
  rfl

theorem row182_layer001_pairs : pairCoverCheck row182_layer001_intervals row182_bounds = true := by
  apply pairCoverCheck_of_chunks row182_layer001_chunks_eq
  intro block hblock
  simp only [row182_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row182_layer001_pairs000
  · exact row182_layer001_pairs001
  · exact row182_layer001_pairs002
  · exact row182_layer001_pairs003
  · exact row182_layer001_pairs004
  · exact row182_layer001_pairs005
  · exact row182_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer001_checked :
    coverLayerCheck row182.height row182.goods { lower := 65884, upper := 131768, M := 11 } = true := by
  exact coverLayerCheck_of_parts row182_layer001_arithmetic row182_layer001_enumeration row182_bounds_eq row182_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row182_layer002_intervals : List ColouredInterval :=
  [(2, 196608, 196789), (2, 262144, 262325), (2, 262144, 262325), (2, 262144, 262325), (3, 137781, 137962), (3, 157464, 157645), (3, 177147, 177328), (3, 236196, 236377), (3, 177147, 177328), (5, 156250, 156431), (5, 234375, 234556), (11, 161051, 161232), (17, 167042, 167223), (17, 250563, 250744), (19, 260642, 260823), (29, 146334, 146515), (29, 170723, 170904), (29, 195112, 195293), (31, 148955, 149136), (31, 178746, 178927), (31, 208537, 208718), (31, 238328, 238509), (37, 151959, 152140), (37, 202612, 202793), (37, 253265, 253446), (41, 137842, 138023), (41, 206763, 206944), (43, 159014, 159195), (43, 238521, 238702), (47, 207646, 207827), (53, 148877, 149058), (59, 205379, 205560), (61, 226981, 227162), (131, 137288, 137469), (137, 150152, 150333), (139, 135247, 135428), (139, 154568, 154749), (149, 133206, 133387), (149, 155407, 155588), (149, 177608, 177789), (151, 136806, 136987), (151, 159607, 159788), (151, 182408, 182589), (157, 147894, 148075), (157, 172543, 172724), (157, 197192, 197373), (163, 132845, 133026), (163, 159414, 159595), (163, 185983, 186164), (163, 212552, 212733), (167, 139445, 139626), (167, 167334, 167515), (167, 195223, 195404), (167, 223112, 223293), (173, 149645, 149826), (173, 179574, 179755), (173, 209503, 209684), (173, 239432, 239613), (179, 160205, 160386), (179, 192246, 192427), (179, 224287, 224468), (179, 256328, 256509), (181, 163805, 163986), (181, 196566, 196747), (181, 229327, 229508), (181, 262088, 262269)]

def row182_layer002_block000 : List ColouredInterval :=
  [(2, 196608, 196789), (2, 262144, 262325), (2, 262144, 262325), (2, 262144, 262325), (3, 137781, 137962), (3, 157464, 157645), (3, 177147, 177328), (3, 236196, 236377), (3, 177147, 177328), (5, 156250, 156431), (5, 234375, 234556), (11, 161051, 161232), (17, 167042, 167223), (17, 250563, 250744), (19, 260642, 260823), (29, 146334, 146515)]

def row182_layer002_block001 : List ColouredInterval :=
  [(29, 170723, 170904), (29, 195112, 195293), (31, 148955, 149136), (31, 178746, 178927), (31, 208537, 208718), (31, 238328, 238509), (37, 151959, 152140), (37, 202612, 202793), (37, 253265, 253446), (41, 137842, 138023), (41, 206763, 206944), (43, 159014, 159195), (43, 238521, 238702), (47, 207646, 207827), (53, 148877, 149058), (59, 205379, 205560)]

def row182_layer002_block002 : List ColouredInterval :=
  [(61, 226981, 227162), (131, 137288, 137469), (137, 150152, 150333), (139, 135247, 135428), (139, 154568, 154749), (149, 133206, 133387), (149, 155407, 155588), (149, 177608, 177789), (151, 136806, 136987), (151, 159607, 159788), (151, 182408, 182589), (157, 147894, 148075), (157, 172543, 172724), (157, 197192, 197373), (163, 132845, 133026), (163, 159414, 159595)]

def row182_layer002_block003 : List ColouredInterval :=
  [(163, 185983, 186164), (163, 212552, 212733), (167, 139445, 139626), (167, 167334, 167515), (167, 195223, 195404), (167, 223112, 223293), (173, 149645, 149826), (173, 179574, 179755), (173, 209503, 209684), (173, 239432, 239613), (179, 160205, 160386), (179, 192246, 192427), (179, 224287, 224468), (179, 256328, 256509), (181, 163805, 163986), (181, 196566, 196747)]

def row182_layer002_block004 : List ColouredInterval :=
  [(181, 229327, 229508), (181, 262088, 262269)]

def row182_layer002_chunks : List (List ColouredInterval) :=
  [row182_layer002_block000, row182_layer002_block001, row182_layer002_block002, row182_layer002_block003, row182_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_arithmetic : LayerArithmeticValid row182.height { lower := 131768, upper := 263536, M := 8 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_enumeration :
    activePowerIntervalList 182 8 131768 263536 = row182_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs000 :
    row182_layer002_block000.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs001 :
    row182_layer002_block001.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs002 :
    row182_layer002_block002.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs003 :
    row182_layer002_block003.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs004 :
    row182_layer002_block004.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_chunks_eq : row182_layer002_chunks.flatten = row182_layer002_intervals := by
  rfl

theorem row182_layer002_pairs : pairCoverCheck row182_layer002_intervals row182_bounds = true := by
  apply pairCoverCheck_of_chunks row182_layer002_chunks_eq
  intro block hblock
  simp only [row182_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row182_layer002_pairs000
  · exact row182_layer002_pairs001
  · exact row182_layer002_pairs002
  · exact row182_layer002_pairs003
  · exact row182_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_checked :
    coverLayerCheck row182.height row182.goods { lower := 131768, upper := 263536, M := 8 } = true := by
  exact coverLayerCheck_of_parts row182_layer002_arithmetic row182_layer002_enumeration row182_bounds_eq row182_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer003_checked :
    coverLayerCheck row182.height row182.goods { lower := 263536, upper := 527072, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer004_checked :
    coverLayerCheck row182.height row182.goods { lower := 527072, upper := 1054144, M := 5 } = true := by
  decide +kernel

theorem row182_layer005_checked :
    coverLayerCheck row182.height row182.goods { lower := 1054144, upper := 2108288, M := 4 } = true := by
  decide +kernel

theorem row182_layer006_checked :
    coverLayerCheck row182.height row182.goods { lower := 2108288, upper := 4216576, M := 3 } = true := by
  decide +kernel

theorem row182_layer007_checked :
    coverLayerCheck row182.height row182.goods { lower := 4216576, upper := 8433152, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer008_checked :
    coverLayerCheck row182.height row182.goods { lower := 8433152, upper := 16866304, M := 2 } = true := by
  decide +kernel

theorem row182_layer009_checked :
    coverLayerCheck row182.height row182.goods { lower := 16866304, upper := 33732608, M := 1 } = true := by
  decide +kernel

theorem row182_layer010_checked :
    coverLayerCheck row182.height row182.goods { lower := 33732608, upper := 67465216, M := 1 } = true := by
  decide +kernel

theorem row182_layer011_checked :
    coverLayerCheck row182.height row182.goods { lower := 67465216, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layers_checked :
    row182.layers.all (coverLayerCheck row182.height row182.goods) = true := by
  change row182_layers.all (coverLayerCheck row182.height row182.goods) = true
  simp only [row182_layers, List.all_cons, List.all_nil,
    row182_layer000_checked,
    row182_layer001_checked,
    row182_layer002_checked,
    row182_layer003_checked,
    row182_layer004_checked,
    row182_layer005_checked,
    row182_layer006_checked,
    row182_layer007_checked,
    row182_layer008_checked,
    row182_layer009_checked,
    row182_layer010_checked,
    row182_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_checked : finiteCoverRowCheck row182 = true := by
  simp only [finiteCoverRowCheck, row182_registered, row182_goods_checked,
    row182_small_checked, row182_layerCover_checked, row182_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i182 :
    ∀ n j : ℕ, 1 ≤ 182 ∧ 182 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 182 ≤ p ∧ p ∣ Nat.choose n 182 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row182_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i182
