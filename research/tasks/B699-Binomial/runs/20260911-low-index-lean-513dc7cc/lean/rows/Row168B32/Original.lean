import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row168B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer000_checked :
    coverLayerCheck row168.height row168.goods { lower := 28056, upper := 56112, M := 15 } = true := by
  exact coverLayerCheck_of_parts row168_layer000_arithmetic row168_layer000_enumeration row168_bounds_eq row168_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row168_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65703), (3, 59049, 59216), (3, 59049, 59216), (5, 62500, 62667), (5, 78125, 78292), (5, 93750, 93917), (5, 109375, 109542), (5, 78125, 78292), (11, 58564, 58731), (11, 73205, 73372), (11, 87846, 88013), (11, 102487, 102654), (13, 57122, 57289), (13, 85683, 85850), (17, 83521, 83688), (19, 61731, 61898), (19, 68590, 68757), (19, 75449, 75616), (23, 60835, 61002), (23, 73002, 73169), (23, 85169, 85336), (23, 97336, 97503), (23, 109503, 109670), (29, 73167, 73334), (29, 97556, 97723), (31, 59582, 59749), (31, 89373, 89540), (37, 101306, 101473), (41, 68921, 69088), (43, 79507, 79674), (47, 103823, 103990), (73, 58619, 58786), (79, 56169, 56336), (79, 62410, 62577), (79, 68651, 68818), (83, 62001, 62168), (83, 68890, 69057), (83, 75779, 75946), (89, 63368, 63535), (89, 71289, 71456), (89, 79210, 79377), (89, 87131, 87298), (97, 56454, 56621), (97, 65863, 66030), (97, 75272, 75439), (97, 84681, 84848), (97, 94090, 94257), (97, 103499, 103666), (101, 61206, 61373), (101, 71407, 71574), (101, 81608, 81775), (101, 91809, 91976), (101, 102010, 102177), (101, 112211, 112223), (103, 63654, 63821), (103, 74263, 74430), (103, 84872, 85039), (103, 95481, 95648), (103, 106090, 106257), (107, 57245, 57412), (107, 68694, 68861), (107, 80143, 80310), (107, 91592, 91759), (107, 103041, 103208), (109, 59405, 59572), (109, 71286, 71453), (109, 83167, 83334), (109, 95048, 95215), (109, 106929, 107096), (113, 63845, 64012), (113, 76614, 76781), (113, 89383, 89550), (113, 102152, 102319), (127, 64516, 64683), (127, 80645, 80812), (127, 96774, 96941), (131, 68644, 68811), (131, 85805, 85972), (131, 102966, 103133), (137, 56307, 56474), (137, 75076, 75243), (137, 93845, 94012), (139, 57963, 58130), (139, 77284, 77451), (139, 96605, 96772), (149, 66603, 66770), (149, 88804, 88971), (149, 111005, 111172), (151, 68403, 68570), (151, 91204, 91371), (157, 73947, 74114), (157, 98596, 98763), (163, 79707, 79874), (163, 106276, 106443), (167, 83667, 83834), (167, 111556, 111723)]

def row168_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65703), (3, 59049, 59216), (3, 59049, 59216), (5, 62500, 62667), (5, 78125, 78292), (5, 93750, 93917), (5, 109375, 109542), (5, 78125, 78292), (11, 58564, 58731), (11, 73205, 73372), (11, 87846, 88013), (11, 102487, 102654), (13, 57122, 57289), (13, 85683, 85850), (17, 83521, 83688), (19, 61731, 61898)]

def row168_layer001_block001 : List ColouredInterval :=
  [(19, 68590, 68757), (19, 75449, 75616), (23, 60835, 61002), (23, 73002, 73169), (23, 85169, 85336), (23, 97336, 97503), (23, 109503, 109670), (29, 73167, 73334), (29, 97556, 97723), (31, 59582, 59749), (31, 89373, 89540), (37, 101306, 101473), (41, 68921, 69088), (43, 79507, 79674), (47, 103823, 103990), (73, 58619, 58786)]

def row168_layer001_block002 : List ColouredInterval :=
  [(79, 56169, 56336), (79, 62410, 62577), (79, 68651, 68818), (83, 62001, 62168), (83, 68890, 69057), (83, 75779, 75946), (89, 63368, 63535), (89, 71289, 71456), (89, 79210, 79377), (89, 87131, 87298), (97, 56454, 56621), (97, 65863, 66030), (97, 75272, 75439), (97, 84681, 84848), (97, 94090, 94257), (97, 103499, 103666)]

def row168_layer001_block003 : List ColouredInterval :=
  [(101, 61206, 61373), (101, 71407, 71574), (101, 81608, 81775), (101, 91809, 91976), (101, 102010, 102177), (101, 112211, 112223), (103, 63654, 63821), (103, 74263, 74430), (103, 84872, 85039), (103, 95481, 95648), (103, 106090, 106257), (107, 57245, 57412), (107, 68694, 68861), (107, 80143, 80310), (107, 91592, 91759), (107, 103041, 103208)]

def row168_layer001_block004 : List ColouredInterval :=
  [(109, 59405, 59572), (109, 71286, 71453), (109, 83167, 83334), (109, 95048, 95215), (109, 106929, 107096), (113, 63845, 64012), (113, 76614, 76781), (113, 89383, 89550), (113, 102152, 102319), (127, 64516, 64683), (127, 80645, 80812), (127, 96774, 96941), (131, 68644, 68811), (131, 85805, 85972), (131, 102966, 103133), (137, 56307, 56474)]

def row168_layer001_block005 : List ColouredInterval :=
  [(137, 75076, 75243), (137, 93845, 94012), (139, 57963, 58130), (139, 77284, 77451), (139, 96605, 96772), (149, 66603, 66770), (149, 88804, 88971), (149, 111005, 111172), (151, 68403, 68570), (151, 91204, 91371), (157, 73947, 74114), (157, 98596, 98763), (163, 79707, 79874), (163, 106276, 106443), (167, 83667, 83834), (167, 111556, 111723)]

def row168_layer001_chunks : List (List ColouredInterval) :=
  [row168_layer001_block000, row168_layer001_block001, row168_layer001_block002, row168_layer001_block003, row168_layer001_block004, row168_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_arithmetic : LayerArithmeticValid row168.height { lower := 56112, upper := 112224, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_enumeration :
    activePowerIntervalList 168 11 56112 112224 = row168_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_pairs000 :
    row168_layer001_block000.all (fun I => row168_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_pairs001 :
    row168_layer001_block001.all (fun I => row168_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_pairs002 :
    row168_layer001_block002.all (fun I => row168_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_pairs003 :
    row168_layer001_block003.all (fun I => row168_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_pairs004 :
    row168_layer001_block004.all (fun I => row168_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_pairs005 :
    row168_layer001_block005.all (fun I => row168_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_chunks_eq : row168_layer001_chunks.flatten = row168_layer001_intervals := by
  rfl

theorem row168_layer001_pairs : pairCoverCheck row168_layer001_intervals row168_bounds = true := by
  apply pairCoverCheck_of_chunks row168_layer001_chunks_eq
  intro block hblock
  simp only [row168_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row168_layer001_pairs000
  · exact row168_layer001_pairs001
  · exact row168_layer001_pairs002
  · exact row168_layer001_pairs003
  · exact row168_layer001_pairs004
  · exact row168_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer001_checked :
    coverLayerCheck row168.height row168.goods { lower := 56112, upper := 112224, M := 11 } = true := by
  exact coverLayerCheck_of_parts row168_layer001_arithmetic row168_layer001_enumeration row168_bounds_eq row168_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row168_layer002_intervals : List ColouredInterval :=
  [(2, 131072, 131239), (3, 118098, 118265), (3, 177147, 177314), (3, 177147, 177314), (5, 125000, 125167), (5, 140625, 140792), (5, 156250, 156417), (7, 117649, 117816), (11, 117128, 117295), (11, 131769, 131936), (11, 161051, 161218), (13, 114244, 114411), (13, 142805, 142972), (13, 171366, 171533), (13, 199927, 200094), (17, 167042, 167209), (19, 130321, 130488), (29, 121945, 122112), (29, 146334, 146501), (29, 170723, 170890), (29, 195112, 195279), (29, 219501, 219668), (31, 119164, 119331), (31, 148955, 149122), (31, 178746, 178913), (31, 208537, 208704), (37, 151959, 152126), (37, 202612, 202779), (41, 137842, 138009), (41, 206763, 206930), (43, 159014, 159181), (47, 207646, 207813), (53, 148877, 149044), (59, 205379, 205546), (113, 114921, 115088), (127, 112903, 113070), (127, 129032, 129199), (127, 145161, 145328), (131, 120127, 120294), (131, 137288, 137455), (131, 154449, 154616), (137, 112614, 112781), (137, 131383, 131550), (137, 150152, 150319), (137, 168921, 169088), (139, 115926, 116093), (139, 135247, 135414), (139, 154568, 154735), (139, 173889, 174056), (149, 133206, 133373), (149, 155407, 155574), (149, 177608, 177775), (149, 199809, 199976), (151, 114005, 114172), (151, 136806, 136973), (151, 159607, 159774), (151, 182408, 182575), (151, 205209, 205376), (157, 123245, 123412), (157, 147894, 148061), (157, 172543, 172710), (157, 197192, 197359), (157, 221841, 222008), (163, 132845, 133012), (163, 159414, 159581), (163, 185983, 186150), (163, 212552, 212719), (167, 139445, 139612), (167, 167334, 167501), (167, 195223, 195390), (167, 223112, 223279)]

def row168_layer002_block000 : List ColouredInterval :=
  [(2, 131072, 131239), (3, 118098, 118265), (3, 177147, 177314), (3, 177147, 177314), (5, 125000, 125167), (5, 140625, 140792), (5, 156250, 156417), (7, 117649, 117816), (11, 117128, 117295), (11, 131769, 131936), (11, 161051, 161218), (13, 114244, 114411), (13, 142805, 142972), (13, 171366, 171533), (13, 199927, 200094), (17, 167042, 167209)]

def row168_layer002_block001 : List ColouredInterval :=
  [(19, 130321, 130488), (29, 121945, 122112), (29, 146334, 146501), (29, 170723, 170890), (29, 195112, 195279), (29, 219501, 219668), (31, 119164, 119331), (31, 148955, 149122), (31, 178746, 178913), (31, 208537, 208704), (37, 151959, 152126), (37, 202612, 202779), (41, 137842, 138009), (41, 206763, 206930), (43, 159014, 159181), (47, 207646, 207813)]

def row168_layer002_block002 : List ColouredInterval :=
  [(53, 148877, 149044), (59, 205379, 205546), (113, 114921, 115088), (127, 112903, 113070), (127, 129032, 129199), (127, 145161, 145328), (131, 120127, 120294), (131, 137288, 137455), (131, 154449, 154616), (137, 112614, 112781), (137, 131383, 131550), (137, 150152, 150319), (137, 168921, 169088), (139, 115926, 116093), (139, 135247, 135414), (139, 154568, 154735)]

def row168_layer002_block003 : List ColouredInterval :=
  [(139, 173889, 174056), (149, 133206, 133373), (149, 155407, 155574), (149, 177608, 177775), (149, 199809, 199976), (151, 114005, 114172), (151, 136806, 136973), (151, 159607, 159774), (151, 182408, 182575), (151, 205209, 205376), (157, 123245, 123412), (157, 147894, 148061), (157, 172543, 172710), (157, 197192, 197359), (157, 221841, 222008), (163, 132845, 133012)]

def row168_layer002_block004 : List ColouredInterval :=
  [(163, 159414, 159581), (163, 185983, 186150), (163, 212552, 212719), (167, 139445, 139612), (167, 167334, 167501), (167, 195223, 195390), (167, 223112, 223279)]

def row168_layer002_chunks : List (List ColouredInterval) :=
  [row168_layer002_block000, row168_layer002_block001, row168_layer002_block002, row168_layer002_block003, row168_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_arithmetic : LayerArithmeticValid row168.height { lower := 112224, upper := 224448, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_enumeration :
    activePowerIntervalList 168 9 112224 224448 = row168_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_pairs000 :
    row168_layer002_block000.all (fun I => row168_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_pairs001 :
    row168_layer002_block001.all (fun I => row168_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_pairs002 :
    row168_layer002_block002.all (fun I => row168_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_pairs003 :
    row168_layer002_block003.all (fun I => row168_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_pairs004 :
    row168_layer002_block004.all (fun I => row168_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row168_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_chunks_eq : row168_layer002_chunks.flatten = row168_layer002_intervals := by
  rfl

theorem row168_layer002_pairs : pairCoverCheck row168_layer002_intervals row168_bounds = true := by
  apply pairCoverCheck_of_chunks row168_layer002_chunks_eq
  intro block hblock
  simp only [row168_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row168_layer002_pairs000
  · exact row168_layer002_pairs001
  · exact row168_layer002_pairs002
  · exact row168_layer002_pairs003
  · exact row168_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer002_checked :
    coverLayerCheck row168.height row168.goods { lower := 112224, upper := 224448, M := 9 } = true := by
  exact coverLayerCheck_of_parts row168_layer002_arithmetic row168_layer002_enumeration row168_bounds_eq row168_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer003_checked :
    coverLayerCheck row168.height row168.goods { lower := 224448, upper := 448896, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer004_checked :
    coverLayerCheck row168.height row168.goods { lower := 448896, upper := 897792, M := 5 } = true := by
  decide +kernel

theorem row168_layer005_checked :
    coverLayerCheck row168.height row168.goods { lower := 897792, upper := 1795584, M := 4 } = true := by
  decide +kernel

theorem row168_layer006_checked :
    coverLayerCheck row168.height row168.goods { lower := 1795584, upper := 3591168, M := 3 } = true := by
  decide +kernel

theorem row168_layer007_checked :
    coverLayerCheck row168.height row168.goods { lower := 3591168, upper := 7182336, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer008_checked :
    coverLayerCheck row168.height row168.goods { lower := 7182336, upper := 14364672, M := 2 } = true := by
  decide +kernel

theorem row168_layer009_checked :
    coverLayerCheck row168.height row168.goods { lower := 14364672, upper := 28729344, M := 1 } = true := by
  decide +kernel

theorem row168_layer010_checked :
    coverLayerCheck row168.height row168.goods { lower := 28729344, upper := 57458688, M := 1 } = true := by
  decide +kernel

theorem row168_layer011_checked :
    coverLayerCheck row168.height row168.goods { lower := 57458688, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layers_checked :
    row168.layers.all (coverLayerCheck row168.height row168.goods) = true := by
  change row168_layers.all (coverLayerCheck row168.height row168.goods) = true
  simp only [row168_layers, List.all_cons, List.all_nil,
    row168_layer000_checked,
    row168_layer001_checked,
    row168_layer002_checked,
    row168_layer003_checked,
    row168_layer004_checked,
    row168_layer005_checked,
    row168_layer006_checked,
    row168_layer007_checked,
    row168_layer008_checked,
    row168_layer009_checked,
    row168_layer010_checked,
    row168_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_checked : finiteCoverRowCheck row168 = true := by
  simp only [finiteCoverRowCheck, row168_registered, row168_goods_checked,
    row168_small_checked, row168_layerCover_checked, row168_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i168 :
    ∀ n j : ℕ, 1 ≤ 168 ∧ 168 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 168 ≤ p ∧ p ∣ Nat.choose n 168 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row168_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i168
