import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row140B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_pairs008 :
    row140_layer000_block008.all (fun I => row140_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_chunks_eq : row140_layer000_chunks.flatten = row140_layer000_intervals := by
  rfl

theorem row140_layer000_pairs : pairCoverCheck row140_layer000_intervals row140_bounds = true := by
  apply pairCoverCheck_of_chunks row140_layer000_chunks_eq
  intro block hblock
  simp only [row140_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row140_layer000_pairs000
  · exact row140_layer000_pairs001
  · exact row140_layer000_pairs002
  · exact row140_layer000_pairs003
  · exact row140_layer000_pairs004
  · exact row140_layer000_pairs005
  · exact row140_layer000_pairs006
  · exact row140_layer000_pairs007
  · exact row140_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer000_checked :
    coverLayerCheck row140.height row140.goods { lower := 19460, upper := 38920, M := 19 } = true := by
  exact coverLayerCheck_of_parts row140_layer000_arithmetic row140_layer000_enumeration row140_bounds_eq row140_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row140_layer001_intervals : List ColouredInterval :=
  [(2, 49152, 49291), (2, 65536, 65675), (2, 65536, 65675), (3, 39366, 39505), (3, 45927, 46066), (3, 52488, 52627), (3, 59049, 59188), (3, 65610, 65749), (3, 72171, 72310), (3, 39366, 39505), (3, 59049, 59188), (3, 59049, 59188), (5, 46875, 47014), (11, 43923, 44062), (11, 58564, 58703), (11, 73205, 73344), (13, 57122, 57261), (17, 39304, 39443), (17, 44217, 44356), (17, 49130, 49269), (17, 54043, 54182), (17, 58956, 59095), (17, 63869, 64008), (17, 68782, 68921), (17, 73695, 73834), (19, 41154, 41293), (19, 48013, 48152), (19, 54872, 55011), (19, 61731, 61870), (19, 68590, 68729), (19, 75449, 75588), (23, 48668, 48807), (23, 60835, 60974), (23, 73002, 73141), (29, 48778, 48917), (29, 73167, 73306), (31, 59582, 59721), (37, 50653, 50792), (41, 68921, 69060), (53, 39326, 39465), (53, 42135, 42274), (59, 41772, 41911), (59, 45253, 45392), (59, 48734, 48873), (59, 52215, 52354), (61, 40931, 41070), (61, 44652, 44791), (61, 48373, 48512), (61, 52094, 52233), (61, 55815, 55954), (67, 40401, 40540), (67, 44890, 45029), (67, 49379, 49518), (67, 53868, 54007), (67, 58357, 58496), (67, 62846, 62985), (67, 67335, 67474), (71, 40328, 40467), (71, 45369, 45508), (71, 50410, 50549), (71, 55451, 55590), (71, 60492, 60631), (71, 65533, 65672), (71, 70574, 70713), (71, 75615, 75754), (73, 42632, 42771), (73, 47961, 48100), (73, 53290, 53429), (73, 58619, 58758), (73, 63948, 64087), (73, 69277, 69416), (73, 74606, 74745), (79, 43687, 43826), (79, 49928, 50067), (79, 56169, 56308), (79, 62410, 62549), (79, 68651, 68790), (79, 74892, 75031), (83, 41334, 41473), (83, 48223, 48362), (83, 55112, 55251), (83, 62001, 62140), (83, 68890, 69029), (83, 75779, 75918), (89, 39605, 39744), (89, 47526, 47665), (89, 55447, 55586), (89, 63368, 63507), (89, 71289, 71428), (97, 47045, 47184), (97, 56454, 56593), (97, 65863, 66002), (97, 75272, 75411), (101, 40804, 40943), (101, 51005, 51144), (101, 61206, 61345), (101, 71407, 71546), (103, 42436, 42575), (103, 53045, 53184), (103, 63654, 63793), (103, 74263, 74402), (107, 45796, 45935), (107, 57245, 57384), (107, 68694, 68833), (109, 47524, 47663), (109, 59405, 59544), (109, 71286, 71425), (113, 51076, 51215), (113, 63845, 63984), (113, 76614, 76753), (127, 48387, 48526), (127, 64516, 64655), (131, 51483, 51622), (131, 68644, 68783), (137, 56307, 56446), (137, 75076, 75215), (139, 57963, 58102), (139, 77284, 77423)]

def row140_layer001_block000 : List ColouredInterval :=
  [(2, 49152, 49291), (2, 65536, 65675), (2, 65536, 65675), (3, 39366, 39505), (3, 45927, 46066), (3, 52488, 52627), (3, 59049, 59188), (3, 65610, 65749), (3, 72171, 72310), (3, 39366, 39505), (3, 59049, 59188), (3, 59049, 59188), (5, 46875, 47014), (11, 43923, 44062), (11, 58564, 58703), (11, 73205, 73344)]

def row140_layer001_block001 : List ColouredInterval :=
  [(13, 57122, 57261), (17, 39304, 39443), (17, 44217, 44356), (17, 49130, 49269), (17, 54043, 54182), (17, 58956, 59095), (17, 63869, 64008), (17, 68782, 68921), (17, 73695, 73834), (19, 41154, 41293), (19, 48013, 48152), (19, 54872, 55011), (19, 61731, 61870), (19, 68590, 68729), (19, 75449, 75588), (23, 48668, 48807)]

def row140_layer001_block002 : List ColouredInterval :=
  [(23, 60835, 60974), (23, 73002, 73141), (29, 48778, 48917), (29, 73167, 73306), (31, 59582, 59721), (37, 50653, 50792), (41, 68921, 69060), (53, 39326, 39465), (53, 42135, 42274), (59, 41772, 41911), (59, 45253, 45392), (59, 48734, 48873), (59, 52215, 52354), (61, 40931, 41070), (61, 44652, 44791), (61, 48373, 48512)]

def row140_layer001_block003 : List ColouredInterval :=
  [(61, 52094, 52233), (61, 55815, 55954), (67, 40401, 40540), (67, 44890, 45029), (67, 49379, 49518), (67, 53868, 54007), (67, 58357, 58496), (67, 62846, 62985), (67, 67335, 67474), (71, 40328, 40467), (71, 45369, 45508), (71, 50410, 50549), (71, 55451, 55590), (71, 60492, 60631), (71, 65533, 65672), (71, 70574, 70713)]

def row140_layer001_block004 : List ColouredInterval :=
  [(71, 75615, 75754), (73, 42632, 42771), (73, 47961, 48100), (73, 53290, 53429), (73, 58619, 58758), (73, 63948, 64087), (73, 69277, 69416), (73, 74606, 74745), (79, 43687, 43826), (79, 49928, 50067), (79, 56169, 56308), (79, 62410, 62549), (79, 68651, 68790), (79, 74892, 75031), (83, 41334, 41473), (83, 48223, 48362)]

def row140_layer001_block005 : List ColouredInterval :=
  [(83, 55112, 55251), (83, 62001, 62140), (83, 68890, 69029), (83, 75779, 75918), (89, 39605, 39744), (89, 47526, 47665), (89, 55447, 55586), (89, 63368, 63507), (89, 71289, 71428), (97, 47045, 47184), (97, 56454, 56593), (97, 65863, 66002), (97, 75272, 75411), (101, 40804, 40943), (101, 51005, 51144), (101, 61206, 61345)]

def row140_layer001_block006 : List ColouredInterval :=
  [(101, 71407, 71546), (103, 42436, 42575), (103, 53045, 53184), (103, 63654, 63793), (103, 74263, 74402), (107, 45796, 45935), (107, 57245, 57384), (107, 68694, 68833), (109, 47524, 47663), (109, 59405, 59544), (109, 71286, 71425), (113, 51076, 51215), (113, 63845, 63984), (113, 76614, 76753), (127, 48387, 48526), (127, 64516, 64655)]

def row140_layer001_block007 : List ColouredInterval :=
  [(131, 51483, 51622), (131, 68644, 68783), (137, 56307, 56446), (137, 75076, 75215), (139, 57963, 58102), (139, 77284, 77423)]

def row140_layer001_chunks : List (List ColouredInterval) :=
  [row140_layer001_block000, row140_layer001_block001, row140_layer001_block002, row140_layer001_block003, row140_layer001_block004, row140_layer001_block005, row140_layer001_block006, row140_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_arithmetic : LayerArithmeticValid row140.height { lower := 38920, upper := 77840, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_enumeration :
    activePowerIntervalList 140 15 38920 77840 = row140_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_pairs000 :
    row140_layer001_block000.all (fun I => row140_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_pairs001 :
    row140_layer001_block001.all (fun I => row140_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_pairs002 :
    row140_layer001_block002.all (fun I => row140_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_pairs003 :
    row140_layer001_block003.all (fun I => row140_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_pairs004 :
    row140_layer001_block004.all (fun I => row140_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_pairs005 :
    row140_layer001_block005.all (fun I => row140_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_pairs006 :
    row140_layer001_block006.all (fun I => row140_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_pairs007 :
    row140_layer001_block007.all (fun I => row140_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_chunks_eq : row140_layer001_chunks.flatten = row140_layer001_intervals := by
  rfl

theorem row140_layer001_pairs : pairCoverCheck row140_layer001_intervals row140_bounds = true := by
  apply pairCoverCheck_of_chunks row140_layer001_chunks_eq
  intro block hblock
  simp only [row140_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row140_layer001_pairs000
  · exact row140_layer001_pairs001
  · exact row140_layer001_pairs002
  · exact row140_layer001_pairs003
  · exact row140_layer001_pairs004
  · exact row140_layer001_pairs005
  · exact row140_layer001_pairs006
  · exact row140_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer001_checked :
    coverLayerCheck row140.height row140.goods { lower := 38920, upper := 77840, M := 15 } = true := by
  exact coverLayerCheck_of_parts row140_layer001_arithmetic row140_layer001_enumeration row140_bounds_eq row140_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row140_layer002_intervals : List ColouredInterval :=
  [(2, 98304, 98443), (2, 131072, 131211), (2, 131072, 131211), (3, 78732, 78871), (3, 78732, 78871), (3, 98415, 98554), (3, 118098, 118237), (3, 137781, 137920), (3, 118098, 118237), (5, 78125, 78264), (7, 117649, 117788), (11, 87846, 87985), (11, 102487, 102626), (11, 117128, 117267), (11, 131769, 131908), (11, 146410, 146549), (13, 85683, 85822), (13, 114244, 114383), (13, 142805, 142944), (17, 83521, 83660), (19, 82308, 82447), (19, 130321, 130460), (23, 85169, 85308), (23, 97336, 97475), (23, 109503, 109642), (23, 121670, 121809), (23, 133837, 133976), (23, 146004, 146143), (29, 97556, 97695), (29, 121945, 122084), (29, 146334, 146473), (31, 89373, 89512), (31, 119164, 119303), (31, 148955, 149094), (37, 101306, 101445), (37, 151959, 152098), (41, 137842, 137981), (43, 79507, 79646), (47, 103823, 103962), (53, 148877, 149016), (83, 82668, 82807), (89, 79210, 79349), (89, 87131, 87270), (89, 95052, 95191), (97, 84681, 84820), (97, 94090, 94229), (97, 103499, 103638), (97, 112908, 113047), (101, 81608, 81747), (101, 91809, 91948), (101, 102010, 102149), (101, 112211, 112350), (101, 122412, 122551), (103, 84872, 85011), (103, 95481, 95620), (103, 106090, 106229), (103, 116699, 116838), (103, 127308, 127447), (107, 80143, 80282), (107, 91592, 91731), (107, 103041, 103180), (107, 114490, 114629), (107, 125939, 126078), (107, 137388, 137527), (109, 83167, 83306), (109, 95048, 95187), (109, 106929, 107068), (109, 118810, 118949), (109, 130691, 130830), (109, 142572, 142711), (113, 89383, 89522), (113, 102152, 102291), (113, 114921, 115060), (113, 127690, 127829), (113, 140459, 140598), (113, 153228, 153367), (127, 80645, 80784), (127, 96774, 96913), (127, 112903, 113042), (127, 129032, 129171), (127, 145161, 145300), (131, 85805, 85944), (131, 102966, 103105), (131, 120127, 120266), (131, 137288, 137427), (131, 154449, 154588), (137, 93845, 93984), (137, 112614, 112753), (137, 131383, 131522), (137, 150152, 150291), (139, 96605, 96744), (139, 115926, 116065), (139, 135247, 135386), (139, 154568, 154707)]

def row140_layer002_block000 : List ColouredInterval :=
  [(2, 98304, 98443), (2, 131072, 131211), (2, 131072, 131211), (3, 78732, 78871), (3, 78732, 78871), (3, 98415, 98554), (3, 118098, 118237), (3, 137781, 137920), (3, 118098, 118237), (5, 78125, 78264), (7, 117649, 117788), (11, 87846, 87985), (11, 102487, 102626), (11, 117128, 117267), (11, 131769, 131908), (11, 146410, 146549)]

def row140_layer002_block001 : List ColouredInterval :=
  [(13, 85683, 85822), (13, 114244, 114383), (13, 142805, 142944), (17, 83521, 83660), (19, 82308, 82447), (19, 130321, 130460), (23, 85169, 85308), (23, 97336, 97475), (23, 109503, 109642), (23, 121670, 121809), (23, 133837, 133976), (23, 146004, 146143), (29, 97556, 97695), (29, 121945, 122084), (29, 146334, 146473), (31, 89373, 89512)]

def row140_layer002_block002 : List ColouredInterval :=
  [(31, 119164, 119303), (31, 148955, 149094), (37, 101306, 101445), (37, 151959, 152098), (41, 137842, 137981), (43, 79507, 79646), (47, 103823, 103962), (53, 148877, 149016), (83, 82668, 82807), (89, 79210, 79349), (89, 87131, 87270), (89, 95052, 95191), (97, 84681, 84820), (97, 94090, 94229), (97, 103499, 103638), (97, 112908, 113047)]

def row140_layer002_block003 : List ColouredInterval :=
  [(101, 81608, 81747), (101, 91809, 91948), (101, 102010, 102149), (101, 112211, 112350), (101, 122412, 122551), (103, 84872, 85011), (103, 95481, 95620), (103, 106090, 106229), (103, 116699, 116838), (103, 127308, 127447), (107, 80143, 80282), (107, 91592, 91731), (107, 103041, 103180), (107, 114490, 114629), (107, 125939, 126078), (107, 137388, 137527)]

def row140_layer002_block004 : List ColouredInterval :=
  [(109, 83167, 83306), (109, 95048, 95187), (109, 106929, 107068), (109, 118810, 118949), (109, 130691, 130830), (109, 142572, 142711), (113, 89383, 89522), (113, 102152, 102291), (113, 114921, 115060), (113, 127690, 127829), (113, 140459, 140598), (113, 153228, 153367), (127, 80645, 80784), (127, 96774, 96913), (127, 112903, 113042), (127, 129032, 129171)]

def row140_layer002_block005 : List ColouredInterval :=
  [(127, 145161, 145300), (131, 85805, 85944), (131, 102966, 103105), (131, 120127, 120266), (131, 137288, 137427), (131, 154449, 154588), (137, 93845, 93984), (137, 112614, 112753), (137, 131383, 131522), (137, 150152, 150291), (139, 96605, 96744), (139, 115926, 116065), (139, 135247, 135386), (139, 154568, 154707)]

def row140_layer002_chunks : List (List ColouredInterval) :=
  [row140_layer002_block000, row140_layer002_block001, row140_layer002_block002, row140_layer002_block003, row140_layer002_block004, row140_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_arithmetic : LayerArithmeticValid row140.height { lower := 77840, upper := 155680, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_enumeration :
    activePowerIntervalList 140 12 77840 155680 = row140_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_pairs000 :
    row140_layer002_block000.all (fun I => row140_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_pairs001 :
    row140_layer002_block001.all (fun I => row140_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_pairs002 :
    row140_layer002_block002.all (fun I => row140_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_pairs003 :
    row140_layer002_block003.all (fun I => row140_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_pairs004 :
    row140_layer002_block004.all (fun I => row140_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_pairs005 :
    row140_layer002_block005.all (fun I => row140_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row140_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_chunks_eq : row140_layer002_chunks.flatten = row140_layer002_intervals := by
  rfl

theorem row140_layer002_pairs : pairCoverCheck row140_layer002_intervals row140_bounds = true := by
  apply pairCoverCheck_of_chunks row140_layer002_chunks_eq
  intro block hblock
  simp only [row140_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row140_layer002_pairs000
  · exact row140_layer002_pairs001
  · exact row140_layer002_pairs002
  · exact row140_layer002_pairs003
  · exact row140_layer002_pairs004
  · exact row140_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer002_checked :
    coverLayerCheck row140.height row140.goods { lower := 77840, upper := 155680, M := 12 } = true := by
  exact coverLayerCheck_of_parts row140_layer002_arithmetic row140_layer002_enumeration row140_bounds_eq row140_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer003_checked :
    coverLayerCheck row140.height row140.goods { lower := 155680, upper := 311360, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer004_checked :
    coverLayerCheck row140.height row140.goods { lower := 311360, upper := 622720, M := 7 } = true := by
  decide +kernel

theorem row140_layer005_checked :
    coverLayerCheck row140.height row140.goods { lower := 622720, upper := 1245440, M := 6 } = true := by
  decide +kernel

theorem row140_layer006_checked :
    coverLayerCheck row140.height row140.goods { lower := 1245440, upper := 2490880, M := 5 } = true := by
  decide +kernel

theorem row140_layer007_checked :
    coverLayerCheck row140.height row140.goods { lower := 2490880, upper := 4981760, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer008_checked :
    coverLayerCheck row140.height row140.goods { lower := 4981760, upper := 9963520, M := 3 } = true := by
  decide +kernel

theorem row140_layer009_checked :
    coverLayerCheck row140.height row140.goods { lower := 9963520, upper := 19927040, M := 2 } = true := by
  decide +kernel

theorem row140_layer010_checked :
    coverLayerCheck row140.height row140.goods { lower := 19927040, upper := 39854080, M := 2 } = true := by
  decide +kernel

theorem row140_layer011_checked :
    coverLayerCheck row140.height row140.goods { lower := 39854080, upper := 79708160, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layer012_checked :
    coverLayerCheck row140.height row140.goods { lower := 79708160, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row140_layers_checked :
    row140.layers.all (coverLayerCheck row140.height row140.goods) = true := by
  change row140_layers.all (coverLayerCheck row140.height row140.goods) = true
  simp only [row140_layers, List.all_cons, List.all_nil,
    row140_layer000_checked,
    row140_layer001_checked,
    row140_layer002_checked,
    row140_layer003_checked,
    row140_layer004_checked,
    row140_layer005_checked,
    row140_layer006_checked,
    row140_layer007_checked,
    row140_layer008_checked,
    row140_layer009_checked,
    row140_layer010_checked,
    row140_layer011_checked,
    row140_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row140_layers_checked
