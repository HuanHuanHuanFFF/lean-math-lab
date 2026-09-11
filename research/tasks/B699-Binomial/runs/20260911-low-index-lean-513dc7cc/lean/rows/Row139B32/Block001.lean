import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row139B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs009 :
    row139_layer000_block009.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_pairs010 :
    row139_layer000_block010.all (fun I => row139_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_chunks_eq : row139_layer000_chunks.flatten = row139_layer000_intervals := by
  rfl

theorem row139_layer000_pairs : pairCoverCheck row139_layer000_intervals row139_bounds = true := by
  apply pairCoverCheck_of_chunks row139_layer000_chunks_eq
  intro block hblock
  simp only [row139_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row139_layer000_pairs000
  · exact row139_layer000_pairs001
  · exact row139_layer000_pairs002
  · exact row139_layer000_pairs003
  · exact row139_layer000_pairs004
  · exact row139_layer000_pairs005
  · exact row139_layer000_pairs006
  · exact row139_layer000_pairs007
  · exact row139_layer000_pairs008
  · exact row139_layer000_pairs009
  · exact row139_layer000_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer000_checked :
    coverLayerCheck row139.height row139.goods { lower := 19182, upper := 38364, M := 16 } = true := by
  exact coverLayerCheck_of_parts row139_layer000_arithmetic row139_layer000_enumeration row139_bounds_eq row139_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row139_layer001_intervals : List ColouredInterval :=
  [(2, 40960, 41098), (2, 45056, 45194), (2, 49152, 49290), (2, 53248, 53386), (2, 40960, 41098), (2, 49152, 49290), (2, 57344, 57482), (2, 65536, 65674), (2, 73728, 73866), (2, 49152, 49290), (2, 65536, 65674), (2, 65536, 65674), (2, 65536, 65674), (3, 39366, 39504), (3, 45927, 46065), (3, 52488, 52626), (3, 59049, 59187), (3, 65610, 65748), (3, 72171, 72309), (3, 39366, 39504), (3, 59049, 59187), (3, 59049, 59187), (5, 40625, 40763), (5, 46875, 47013), (5, 62500, 62638), (7, 50421, 50559), (7, 67228, 67366), (11, 43923, 44061), (11, 58564, 58702), (11, 73205, 73343), (13, 57122, 57260), (17, 39304, 39442), (17, 44217, 44355), (17, 49130, 49268), (17, 54043, 54181), (17, 58956, 59094), (17, 63869, 64007), (19, 41154, 41292), (19, 48013, 48151), (19, 54872, 55010), (19, 61731, 61869), (19, 68590, 68728), (19, 75449, 75587), (23, 48668, 48806), (23, 60835, 60973), (23, 73002, 73140), (29, 48778, 48916), (29, 73167, 73305), (31, 59582, 59720), (37, 50653, 50791), (41, 68921, 69059), (59, 38364, 38429), (59, 41772, 41910), (59, 45253, 45391), (61, 40931, 41069), (61, 44652, 44790), (61, 48373, 48511), (67, 40401, 40539), (67, 44890, 45028), (67, 49379, 49517), (67, 53868, 54006), (67, 58357, 58495), (71, 40328, 40466), (71, 45369, 45507), (71, 50410, 50548), (71, 55451, 55589), (71, 60492, 60630), (71, 65533, 65671), (73, 42632, 42770), (73, 47961, 48099), (73, 53290, 53428), (73, 58619, 58757), (73, 63948, 64086), (73, 69277, 69415), (79, 43687, 43825), (79, 49928, 50066), (79, 56169, 56307), (79, 62410, 62548), (79, 68651, 68789), (79, 74892, 75030), (83, 41334, 41472), (83, 48223, 48361), (83, 55112, 55250), (83, 62001, 62139), (83, 68890, 69028), (83, 75779, 75917), (89, 39605, 39743), (89, 47526, 47664), (89, 55447, 55585), (89, 63368, 63506), (89, 71289, 71427), (97, 47045, 47183), (97, 56454, 56592), (97, 65863, 66001), (97, 75272, 75410), (101, 40804, 40942), (101, 51005, 51143), (101, 61206, 61344), (101, 71407, 71545), (103, 42436, 42574), (103, 53045, 53183), (103, 63654, 63792), (103, 74263, 74401), (107, 45796, 45934), (107, 57245, 57383), (107, 68694, 68832), (109, 47524, 47662), (109, 59405, 59543), (109, 71286, 71424), (113, 38364, 38445), (113, 51076, 51214), (113, 63845, 63983), (113, 76614, 76727), (127, 48387, 48525), (127, 64516, 64654), (131, 51483, 51621), (131, 68644, 68782), (137, 56307, 56445), (137, 75076, 75214)]

def row139_layer001_block000 : List ColouredInterval :=
  [(2, 40960, 41098), (2, 45056, 45194), (2, 49152, 49290), (2, 53248, 53386), (2, 40960, 41098), (2, 49152, 49290), (2, 57344, 57482), (2, 65536, 65674), (2, 73728, 73866), (2, 49152, 49290), (2, 65536, 65674), (2, 65536, 65674), (2, 65536, 65674), (3, 39366, 39504), (3, 45927, 46065), (3, 52488, 52626)]

def row139_layer001_block001 : List ColouredInterval :=
  [(3, 59049, 59187), (3, 65610, 65748), (3, 72171, 72309), (3, 39366, 39504), (3, 59049, 59187), (3, 59049, 59187), (5, 40625, 40763), (5, 46875, 47013), (5, 62500, 62638), (7, 50421, 50559), (7, 67228, 67366), (11, 43923, 44061), (11, 58564, 58702), (11, 73205, 73343), (13, 57122, 57260), (17, 39304, 39442)]

def row139_layer001_block002 : List ColouredInterval :=
  [(17, 44217, 44355), (17, 49130, 49268), (17, 54043, 54181), (17, 58956, 59094), (17, 63869, 64007), (19, 41154, 41292), (19, 48013, 48151), (19, 54872, 55010), (19, 61731, 61869), (19, 68590, 68728), (19, 75449, 75587), (23, 48668, 48806), (23, 60835, 60973), (23, 73002, 73140), (29, 48778, 48916), (29, 73167, 73305)]

def row139_layer001_block003 : List ColouredInterval :=
  [(31, 59582, 59720), (37, 50653, 50791), (41, 68921, 69059), (59, 38364, 38429), (59, 41772, 41910), (59, 45253, 45391), (61, 40931, 41069), (61, 44652, 44790), (61, 48373, 48511), (67, 40401, 40539), (67, 44890, 45028), (67, 49379, 49517), (67, 53868, 54006), (67, 58357, 58495), (71, 40328, 40466), (71, 45369, 45507)]

def row139_layer001_block004 : List ColouredInterval :=
  [(71, 50410, 50548), (71, 55451, 55589), (71, 60492, 60630), (71, 65533, 65671), (73, 42632, 42770), (73, 47961, 48099), (73, 53290, 53428), (73, 58619, 58757), (73, 63948, 64086), (73, 69277, 69415), (79, 43687, 43825), (79, 49928, 50066), (79, 56169, 56307), (79, 62410, 62548), (79, 68651, 68789), (79, 74892, 75030)]

def row139_layer001_block005 : List ColouredInterval :=
  [(83, 41334, 41472), (83, 48223, 48361), (83, 55112, 55250), (83, 62001, 62139), (83, 68890, 69028), (83, 75779, 75917), (89, 39605, 39743), (89, 47526, 47664), (89, 55447, 55585), (89, 63368, 63506), (89, 71289, 71427), (97, 47045, 47183), (97, 56454, 56592), (97, 65863, 66001), (97, 75272, 75410), (101, 40804, 40942)]

def row139_layer001_block006 : List ColouredInterval :=
  [(101, 51005, 51143), (101, 61206, 61344), (101, 71407, 71545), (103, 42436, 42574), (103, 53045, 53183), (103, 63654, 63792), (103, 74263, 74401), (107, 45796, 45934), (107, 57245, 57383), (107, 68694, 68832), (109, 47524, 47662), (109, 59405, 59543), (109, 71286, 71424), (113, 38364, 38445), (113, 51076, 51214), (113, 63845, 63983)]

def row139_layer001_block007 : List ColouredInterval :=
  [(113, 76614, 76727), (127, 48387, 48525), (127, 64516, 64654), (131, 51483, 51621), (131, 68644, 68782), (137, 56307, 56445), (137, 75076, 75214)]

def row139_layer001_chunks : List (List ColouredInterval) :=
  [row139_layer001_block000, row139_layer001_block001, row139_layer001_block002, row139_layer001_block003, row139_layer001_block004, row139_layer001_block005, row139_layer001_block006, row139_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_arithmetic : LayerArithmeticValid row139.height { lower := 38364, upper := 76728, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_enumeration :
    activePowerIntervalList 139 13 38364 76728 = row139_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_pairs000 :
    row139_layer001_block000.all (fun I => row139_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_pairs001 :
    row139_layer001_block001.all (fun I => row139_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_pairs002 :
    row139_layer001_block002.all (fun I => row139_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_pairs003 :
    row139_layer001_block003.all (fun I => row139_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_pairs004 :
    row139_layer001_block004.all (fun I => row139_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_pairs005 :
    row139_layer001_block005.all (fun I => row139_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_pairs006 :
    row139_layer001_block006.all (fun I => row139_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_pairs007 :
    row139_layer001_block007.all (fun I => row139_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_chunks_eq : row139_layer001_chunks.flatten = row139_layer001_intervals := by
  rfl

theorem row139_layer001_pairs : pairCoverCheck row139_layer001_intervals row139_bounds = true := by
  apply pairCoverCheck_of_chunks row139_layer001_chunks_eq
  intro block hblock
  simp only [row139_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row139_layer001_pairs000
  · exact row139_layer001_pairs001
  · exact row139_layer001_pairs002
  · exact row139_layer001_pairs003
  · exact row139_layer001_pairs004
  · exact row139_layer001_pairs005
  · exact row139_layer001_pairs006
  · exact row139_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer001_checked :
    coverLayerCheck row139.height row139.goods { lower := 38364, upper := 76728, M := 13 } = true := by
  exact coverLayerCheck_of_parts row139_layer001_arithmetic row139_layer001_enumeration row139_bounds_eq row139_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row139_layer002_intervals : List ColouredInterval :=
  [(2, 81920, 82058), (2, 81920, 82058), (2, 98304, 98442), (2, 114688, 114826), (2, 131072, 131210), (2, 147456, 147594), (2, 98304, 98442), (2, 131072, 131210), (2, 131072, 131210), (2, 131072, 131210), (3, 78732, 78870), (3, 98415, 98553), (3, 118098, 118236), (3, 137781, 137919), (3, 118098, 118236), (5, 78125, 78263), (5, 93750, 93888), (5, 109375, 109513), (5, 125000, 125138), (5, 140625, 140763), (5, 78125, 78263), (7, 84035, 84173), (7, 100842, 100980), (7, 117649, 117787), (7, 134456, 134594), (7, 151263, 151401), (7, 117649, 117787), (11, 87846, 87984), (11, 102487, 102625), (11, 117128, 117266), (11, 131769, 131907), (11, 146410, 146548), (13, 85683, 85821), (13, 114244, 114382), (13, 142805, 142943), (17, 83521, 83659), (19, 130321, 130459), (23, 85169, 85307), (23, 97336, 97474), (23, 109503, 109641), (23, 121670, 121808), (29, 97556, 97694), (29, 121945, 122083), (29, 146334, 146472), (31, 89373, 89511), (31, 119164, 119302), (31, 148955, 149093), (37, 101306, 101444), (37, 151959, 152097), (41, 137842, 137980), (43, 79507, 79645), (47, 103823, 103961), (53, 148877, 149015), (89, 79210, 79348), (97, 84681, 84819), (97, 94090, 94228), (101, 81608, 81746), (101, 91809, 91947), (101, 102010, 102148), (103, 84872, 85010), (103, 95481, 95619), (103, 106090, 106228), (107, 80143, 80281), (107, 91592, 91730), (107, 103041, 103179), (107, 114490, 114628), (109, 83167, 83305), (109, 95048, 95186), (109, 106929, 107067), (109, 118810, 118948), (113, 76728, 76752), (113, 89383, 89521), (113, 102152, 102290), (113, 114921, 115059), (113, 127690, 127828), (127, 80645, 80783), (127, 96774, 96912), (127, 112903, 113041), (127, 129032, 129170), (127, 145161, 145299), (131, 85805, 85943), (131, 102966, 103104), (131, 120127, 120265), (131, 137288, 137426), (137, 93845, 93983), (137, 112614, 112752), (137, 131383, 131521), (137, 150152, 150290)]

def row139_layer002_block000 : List ColouredInterval :=
  [(2, 81920, 82058), (2, 81920, 82058), (2, 98304, 98442), (2, 114688, 114826), (2, 131072, 131210), (2, 147456, 147594), (2, 98304, 98442), (2, 131072, 131210), (2, 131072, 131210), (2, 131072, 131210), (3, 78732, 78870), (3, 98415, 98553), (3, 118098, 118236), (3, 137781, 137919), (3, 118098, 118236), (5, 78125, 78263)]

def row139_layer002_block001 : List ColouredInterval :=
  [(5, 93750, 93888), (5, 109375, 109513), (5, 125000, 125138), (5, 140625, 140763), (5, 78125, 78263), (7, 84035, 84173), (7, 100842, 100980), (7, 117649, 117787), (7, 134456, 134594), (7, 151263, 151401), (7, 117649, 117787), (11, 87846, 87984), (11, 102487, 102625), (11, 117128, 117266), (11, 131769, 131907), (11, 146410, 146548)]

def row139_layer002_block002 : List ColouredInterval :=
  [(13, 85683, 85821), (13, 114244, 114382), (13, 142805, 142943), (17, 83521, 83659), (19, 130321, 130459), (23, 85169, 85307), (23, 97336, 97474), (23, 109503, 109641), (23, 121670, 121808), (29, 97556, 97694), (29, 121945, 122083), (29, 146334, 146472), (31, 89373, 89511), (31, 119164, 119302), (31, 148955, 149093), (37, 101306, 101444)]

def row139_layer002_block003 : List ColouredInterval :=
  [(37, 151959, 152097), (41, 137842, 137980), (43, 79507, 79645), (47, 103823, 103961), (53, 148877, 149015), (89, 79210, 79348), (97, 84681, 84819), (97, 94090, 94228), (101, 81608, 81746), (101, 91809, 91947), (101, 102010, 102148), (103, 84872, 85010), (103, 95481, 95619), (103, 106090, 106228), (107, 80143, 80281), (107, 91592, 91730)]

def row139_layer002_block004 : List ColouredInterval :=
  [(107, 103041, 103179), (107, 114490, 114628), (109, 83167, 83305), (109, 95048, 95186), (109, 106929, 107067), (109, 118810, 118948), (113, 76728, 76752), (113, 89383, 89521), (113, 102152, 102290), (113, 114921, 115059), (113, 127690, 127828), (127, 80645, 80783), (127, 96774, 96912), (127, 112903, 113041), (127, 129032, 129170), (127, 145161, 145299)]

def row139_layer002_block005 : List ColouredInterval :=
  [(131, 85805, 85943), (131, 102966, 103104), (131, 120127, 120265), (131, 137288, 137426), (137, 93845, 93983), (137, 112614, 112752), (137, 131383, 131521), (137, 150152, 150290)]

def row139_layer002_chunks : List (List ColouredInterval) :=
  [row139_layer002_block000, row139_layer002_block001, row139_layer002_block002, row139_layer002_block003, row139_layer002_block004, row139_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_arithmetic : LayerArithmeticValid row139.height { lower := 76728, upper := 153456, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_enumeration :
    activePowerIntervalList 139 10 76728 153456 = row139_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_pairs000 :
    row139_layer002_block000.all (fun I => row139_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_pairs001 :
    row139_layer002_block001.all (fun I => row139_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_pairs002 :
    row139_layer002_block002.all (fun I => row139_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_pairs003 :
    row139_layer002_block003.all (fun I => row139_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_pairs004 :
    row139_layer002_block004.all (fun I => row139_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_pairs005 :
    row139_layer002_block005.all (fun I => row139_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row139_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_chunks_eq : row139_layer002_chunks.flatten = row139_layer002_intervals := by
  rfl

theorem row139_layer002_pairs : pairCoverCheck row139_layer002_intervals row139_bounds = true := by
  apply pairCoverCheck_of_chunks row139_layer002_chunks_eq
  intro block hblock
  simp only [row139_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row139_layer002_pairs000
  · exact row139_layer002_pairs001
  · exact row139_layer002_pairs002
  · exact row139_layer002_pairs003
  · exact row139_layer002_pairs004
  · exact row139_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer002_checked :
    coverLayerCheck row139.height row139.goods { lower := 76728, upper := 153456, M := 10 } = true := by
  exact coverLayerCheck_of_parts row139_layer002_arithmetic row139_layer002_enumeration row139_bounds_eq row139_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer003_checked :
    coverLayerCheck row139.height row139.goods { lower := 153456, upper := 306912, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer004_checked :
    coverLayerCheck row139.height row139.goods { lower := 306912, upper := 613824, M := 6 } = true := by
  decide +kernel

theorem row139_layer005_checked :
    coverLayerCheck row139.height row139.goods { lower := 613824, upper := 1227648, M := 4 } = true := by
  decide +kernel

theorem row139_layer006_checked :
    coverLayerCheck row139.height row139.goods { lower := 1227648, upper := 2455296, M := 4 } = true := by
  decide +kernel

theorem row139_layer007_checked :
    coverLayerCheck row139.height row139.goods { lower := 2455296, upper := 4910592, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer008_checked :
    coverLayerCheck row139.height row139.goods { lower := 4910592, upper := 9821184, M := 2 } = true := by
  decide +kernel

theorem row139_layer009_checked :
    coverLayerCheck row139.height row139.goods { lower := 9821184, upper := 19642368, M := 2 } = true := by
  decide +kernel

theorem row139_layer010_checked :
    coverLayerCheck row139.height row139.goods { lower := 19642368, upper := 39284736, M := 1 } = true := by
  decide +kernel

theorem row139_layer011_checked :
    coverLayerCheck row139.height row139.goods { lower := 39284736, upper := 78569472, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_layer012_checked :
    coverLayerCheck row139.height row139.goods { lower := 78569472, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layer012_checked
