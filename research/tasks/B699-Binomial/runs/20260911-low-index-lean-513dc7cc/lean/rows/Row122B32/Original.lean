import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row122B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_chunks_eq : row122_layer000_chunks.flatten = row122_layer000_intervals := by
  rfl

theorem row122_layer000_pairs : pairCoverCheck row122_layer000_intervals row122_bounds = true := by
  apply pairCoverCheck_of_chunks row122_layer000_chunks_eq
  intro block hblock
  simp only [row122_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row122_layer000_pairs000
  · exact row122_layer000_pairs001
  · exact row122_layer000_pairs002
  · exact row122_layer000_pairs003
  · exact row122_layer000_pairs004
  · exact row122_layer000_pairs005
  · exact row122_layer000_pairs006
  · exact row122_layer000_pairs007
  · exact row122_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_checked :
    coverLayerCheck row122.height row122.goods { lower := 14762, upper := 29524, M := 20 } = true := by
  exact coverLayerCheck_of_parts row122_layer000_arithmetic row122_layer000_enumeration row122_bounds_eq row122_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row122_layer001_intervals : List ColouredInterval :=
  [(2, 32768, 32889), (2, 40960, 41081), (2, 49152, 49273), (2, 57344, 57465), (2, 32768, 32889), (2, 49152, 49273), (2, 32768, 32889), (3, 30618, 30739), (3, 32805, 32926), (3, 32805, 32926), (3, 39366, 39487), (3, 45927, 46048), (3, 52488, 52609), (3, 39366, 39487), (5, 31250, 31371), (5, 34375, 34496), (5, 37500, 37621), (5, 40625, 40746), (5, 43750, 43871), (5, 46875, 46996), (5, 31250, 31371), (5, 46875, 46996), (7, 31213, 31334), (7, 33614, 33735), (7, 36015, 36136), (7, 33614, 33735), (7, 50421, 50542), (11, 43923, 44044), (11, 58564, 58685), (13, 30758, 30879), (13, 32955, 33076), (13, 57122, 57243), (17, 29524, 29599), (17, 34391, 34512), (17, 39304, 39425), (17, 44217, 44338), (17, 49130, 49251), (17, 54043, 54164), (17, 58956, 59047), (19, 34295, 34416), (19, 41154, 41275), (19, 48013, 48134), (19, 54872, 54993), (23, 36501, 36622), (23, 48668, 48789), (29, 48778, 48899), (31, 29791, 29912), (37, 50653, 50774), (47, 30926, 31047), (47, 33135, 33256), (53, 30899, 31020), (53, 33708, 33829), (53, 36517, 36638), (53, 39326, 39447), (53, 42135, 42256), (59, 31329, 31450), (59, 34810, 34931), (59, 38291, 38412), (59, 41772, 41893), (59, 45253, 45374), (59, 48734, 48855), (59, 52215, 52336), (67, 31423, 31544), (67, 35912, 36033), (67, 40401, 40522), (67, 44890, 45011), (67, 49379, 49500), (67, 53868, 53989), (67, 58357, 58478), (71, 30246, 30367), (71, 35287, 35408), (71, 40328, 40449), (71, 45369, 45490), (71, 50410, 50531), (71, 55451, 55572), (73, 31974, 32095), (73, 37303, 37424), (73, 42632, 42753), (73, 47961, 48082), (73, 53290, 53411), (73, 58619, 58740), (79, 31205, 31326), (79, 37446, 37567), (79, 43687, 43808), (79, 49928, 50049), (79, 56169, 56290), (83, 34445, 34566), (83, 41334, 41455), (83, 48223, 48344), (83, 55112, 55233), (89, 31684, 31805), (89, 39605, 39726), (89, 47526, 47647), (89, 55447, 55568), (97, 37636, 37757), (97, 47045, 47166), (97, 56454, 56575), (101, 30603, 30724), (101, 40804, 40925), (101, 51005, 51126), (103, 31827, 31948), (103, 42436, 42557), (103, 53045, 53166), (107, 34347, 34468), (107, 45796, 45917), (107, 57245, 57366), (109, 35643, 35764), (109, 47524, 47645), (113, 38307, 38428), (113, 51076, 51197)]

def row122_layer001_block000 : List ColouredInterval :=
  [(2, 32768, 32889), (2, 40960, 41081), (2, 49152, 49273), (2, 57344, 57465), (2, 32768, 32889), (2, 49152, 49273), (2, 32768, 32889), (3, 30618, 30739), (3, 32805, 32926), (3, 32805, 32926), (3, 39366, 39487), (3, 45927, 46048), (3, 52488, 52609), (3, 39366, 39487), (5, 31250, 31371), (5, 34375, 34496)]

def row122_layer001_block001 : List ColouredInterval :=
  [(5, 37500, 37621), (5, 40625, 40746), (5, 43750, 43871), (5, 46875, 46996), (5, 31250, 31371), (5, 46875, 46996), (7, 31213, 31334), (7, 33614, 33735), (7, 36015, 36136), (7, 33614, 33735), (7, 50421, 50542), (11, 43923, 44044), (11, 58564, 58685), (13, 30758, 30879), (13, 32955, 33076), (13, 57122, 57243)]

def row122_layer001_block002 : List ColouredInterval :=
  [(17, 29524, 29599), (17, 34391, 34512), (17, 39304, 39425), (17, 44217, 44338), (17, 49130, 49251), (17, 54043, 54164), (17, 58956, 59047), (19, 34295, 34416), (19, 41154, 41275), (19, 48013, 48134), (19, 54872, 54993), (23, 36501, 36622), (23, 48668, 48789), (29, 48778, 48899), (31, 29791, 29912), (37, 50653, 50774)]

def row122_layer001_block003 : List ColouredInterval :=
  [(47, 30926, 31047), (47, 33135, 33256), (53, 30899, 31020), (53, 33708, 33829), (53, 36517, 36638), (53, 39326, 39447), (53, 42135, 42256), (59, 31329, 31450), (59, 34810, 34931), (59, 38291, 38412), (59, 41772, 41893), (59, 45253, 45374), (59, 48734, 48855), (59, 52215, 52336), (67, 31423, 31544), (67, 35912, 36033)]

def row122_layer001_block004 : List ColouredInterval :=
  [(67, 40401, 40522), (67, 44890, 45011), (67, 49379, 49500), (67, 53868, 53989), (67, 58357, 58478), (71, 30246, 30367), (71, 35287, 35408), (71, 40328, 40449), (71, 45369, 45490), (71, 50410, 50531), (71, 55451, 55572), (73, 31974, 32095), (73, 37303, 37424), (73, 42632, 42753), (73, 47961, 48082), (73, 53290, 53411)]

def row122_layer001_block005 : List ColouredInterval :=
  [(73, 58619, 58740), (79, 31205, 31326), (79, 37446, 37567), (79, 43687, 43808), (79, 49928, 50049), (79, 56169, 56290), (83, 34445, 34566), (83, 41334, 41455), (83, 48223, 48344), (83, 55112, 55233), (89, 31684, 31805), (89, 39605, 39726), (89, 47526, 47647), (89, 55447, 55568), (97, 37636, 37757), (97, 47045, 47166)]

def row122_layer001_block006 : List ColouredInterval :=
  [(97, 56454, 56575), (101, 30603, 30724), (101, 40804, 40925), (101, 51005, 51126), (103, 31827, 31948), (103, 42436, 42557), (103, 53045, 53166), (107, 34347, 34468), (107, 45796, 45917), (107, 57245, 57366), (109, 35643, 35764), (109, 47524, 47645), (113, 38307, 38428), (113, 51076, 51197)]

def row122_layer001_chunks : List (List ColouredInterval) :=
  [row122_layer001_block000, row122_layer001_block001, row122_layer001_block002, row122_layer001_block003, row122_layer001_block004, row122_layer001_block005, row122_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_arithmetic : LayerArithmeticValid row122.height { lower := 29524, upper := 59048, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_enumeration :
    activePowerIntervalList 122 15 29524 59048 = row122_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_pairs000 :
    row122_layer001_block000.all (fun I => row122_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_pairs001 :
    row122_layer001_block001.all (fun I => row122_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_pairs002 :
    row122_layer001_block002.all (fun I => row122_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_pairs003 :
    row122_layer001_block003.all (fun I => row122_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_pairs004 :
    row122_layer001_block004.all (fun I => row122_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_pairs005 :
    row122_layer001_block005.all (fun I => row122_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_pairs006 :
    row122_layer001_block006.all (fun I => row122_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_chunks_eq : row122_layer001_chunks.flatten = row122_layer001_intervals := by
  rfl

theorem row122_layer001_pairs : pairCoverCheck row122_layer001_intervals row122_bounds = true := by
  apply pairCoverCheck_of_chunks row122_layer001_chunks_eq
  intro block hblock
  simp only [row122_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row122_layer001_pairs000
  · exact row122_layer001_pairs001
  · exact row122_layer001_pairs002
  · exact row122_layer001_pairs003
  · exact row122_layer001_pairs004
  · exact row122_layer001_pairs005
  · exact row122_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer001_checked :
    coverLayerCheck row122.height row122.goods { lower := 29524, upper := 59048, M := 15 } = true := by
  exact coverLayerCheck_of_parts row122_layer001_arithmetic row122_layer001_enumeration row122_bounds_eq row122_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row122_layer002_intervals : List ColouredInterval :=
  [(2, 65536, 65657), (2, 81920, 82041), (2, 98304, 98425), (2, 65536, 65657), (2, 98304, 98425), (2, 65536, 65657), (3, 59049, 59170), (3, 65610, 65731), (3, 72171, 72292), (3, 78732, 78853), (3, 59049, 59170), (3, 78732, 78853), (3, 98415, 98536), (3, 59049, 59170), (5, 62500, 62621), (5, 78125, 78246), (5, 93750, 93871), (5, 109375, 109496), (5, 78125, 78246), (7, 67228, 67349), (7, 84035, 84156), (7, 100842, 100963), (7, 117649, 117770), (7, 117649, 117770), (11, 73205, 73326), (11, 87846, 87967), (11, 102487, 102608), (11, 117128, 117249), (13, 85683, 85804), (13, 114244, 114365), (17, 59048, 59077), (17, 83521, 83642), (19, 61731, 61852), (19, 68590, 68711), (19, 75449, 75570), (19, 82308, 82429), (23, 60835, 60956), (23, 73002, 73123), (23, 85169, 85290), (23, 97336, 97457), (23, 109503, 109624), (29, 73167, 73288), (29, 97556, 97677), (31, 59582, 59703), (31, 89373, 89494), (37, 101306, 101427), (41, 68921, 69042), (43, 79507, 79628), (47, 103823, 103944), (71, 60492, 60613), (73, 63948, 64069), (79, 62410, 62531), (79, 68651, 68772), (79, 74892, 75013), (83, 62001, 62122), (83, 68890, 69011), (83, 75779, 75900), (83, 82668, 82789), (89, 63368, 63489), (89, 71289, 71410), (89, 79210, 79331), (89, 87131, 87252), (89, 95052, 95173), (97, 65863, 65984), (97, 75272, 75393), (97, 84681, 84802), (97, 94090, 94211), (97, 103499, 103620), (97, 112908, 113029), (101, 61206, 61327), (101, 71407, 71528), (101, 81608, 81729), (101, 91809, 91930), (101, 102010, 102131), (101, 112211, 112332), (103, 63654, 63775), (103, 74263, 74384), (103, 84872, 84993), (103, 95481, 95602), (103, 106090, 106211), (103, 116699, 116820), (107, 68694, 68815), (107, 80143, 80264), (107, 91592, 91713), (107, 103041, 103162), (107, 114490, 114611), (109, 59405, 59526), (109, 71286, 71407), (109, 83167, 83288), (109, 95048, 95169), (109, 106929, 107050), (113, 63845, 63966), (113, 76614, 76735), (113, 89383, 89504), (113, 102152, 102273), (113, 114921, 115042)]

def row122_layer002_block000 : List ColouredInterval :=
  [(2, 65536, 65657), (2, 81920, 82041), (2, 98304, 98425), (2, 65536, 65657), (2, 98304, 98425), (2, 65536, 65657), (3, 59049, 59170), (3, 65610, 65731), (3, 72171, 72292), (3, 78732, 78853), (3, 59049, 59170), (3, 78732, 78853), (3, 98415, 98536), (3, 59049, 59170), (5, 62500, 62621), (5, 78125, 78246)]

def row122_layer002_block001 : List ColouredInterval :=
  [(5, 93750, 93871), (5, 109375, 109496), (5, 78125, 78246), (7, 67228, 67349), (7, 84035, 84156), (7, 100842, 100963), (7, 117649, 117770), (7, 117649, 117770), (11, 73205, 73326), (11, 87846, 87967), (11, 102487, 102608), (11, 117128, 117249), (13, 85683, 85804), (13, 114244, 114365), (17, 59048, 59077), (17, 83521, 83642)]

def row122_layer002_block002 : List ColouredInterval :=
  [(19, 61731, 61852), (19, 68590, 68711), (19, 75449, 75570), (19, 82308, 82429), (23, 60835, 60956), (23, 73002, 73123), (23, 85169, 85290), (23, 97336, 97457), (23, 109503, 109624), (29, 73167, 73288), (29, 97556, 97677), (31, 59582, 59703), (31, 89373, 89494), (37, 101306, 101427), (41, 68921, 69042), (43, 79507, 79628)]

def row122_layer002_block003 : List ColouredInterval :=
  [(47, 103823, 103944), (71, 60492, 60613), (73, 63948, 64069), (79, 62410, 62531), (79, 68651, 68772), (79, 74892, 75013), (83, 62001, 62122), (83, 68890, 69011), (83, 75779, 75900), (83, 82668, 82789), (89, 63368, 63489), (89, 71289, 71410), (89, 79210, 79331), (89, 87131, 87252), (89, 95052, 95173), (97, 65863, 65984)]

def row122_layer002_block004 : List ColouredInterval :=
  [(97, 75272, 75393), (97, 84681, 84802), (97, 94090, 94211), (97, 103499, 103620), (97, 112908, 113029), (101, 61206, 61327), (101, 71407, 71528), (101, 81608, 81729), (101, 91809, 91930), (101, 102010, 102131), (101, 112211, 112332), (103, 63654, 63775), (103, 74263, 74384), (103, 84872, 84993), (103, 95481, 95602), (103, 106090, 106211)]

def row122_layer002_block005 : List ColouredInterval :=
  [(103, 116699, 116820), (107, 68694, 68815), (107, 80143, 80264), (107, 91592, 91713), (107, 103041, 103162), (107, 114490, 114611), (109, 59405, 59526), (109, 71286, 71407), (109, 83167, 83288), (109, 95048, 95169), (109, 106929, 107050), (113, 63845, 63966), (113, 76614, 76735), (113, 89383, 89504), (113, 102152, 102273), (113, 114921, 115042)]

def row122_layer002_chunks : List (List ColouredInterval) :=
  [row122_layer002_block000, row122_layer002_block001, row122_layer002_block002, row122_layer002_block003, row122_layer002_block004, row122_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_arithmetic : LayerArithmeticValid row122.height { lower := 59048, upper := 118096, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_enumeration :
    activePowerIntervalList 122 12 59048 118096 = row122_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_pairs000 :
    row122_layer002_block000.all (fun I => row122_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_pairs001 :
    row122_layer002_block001.all (fun I => row122_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_pairs002 :
    row122_layer002_block002.all (fun I => row122_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_pairs003 :
    row122_layer002_block003.all (fun I => row122_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_pairs004 :
    row122_layer002_block004.all (fun I => row122_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_pairs005 :
    row122_layer002_block005.all (fun I => row122_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_chunks_eq : row122_layer002_chunks.flatten = row122_layer002_intervals := by
  rfl

theorem row122_layer002_pairs : pairCoverCheck row122_layer002_intervals row122_bounds = true := by
  apply pairCoverCheck_of_chunks row122_layer002_chunks_eq
  intro block hblock
  simp only [row122_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row122_layer002_pairs000
  · exact row122_layer002_pairs001
  · exact row122_layer002_pairs002
  · exact row122_layer002_pairs003
  · exact row122_layer002_pairs004
  · exact row122_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer002_checked :
    coverLayerCheck row122.height row122.goods { lower := 59048, upper := 118096, M := 12 } = true := by
  exact coverLayerCheck_of_parts row122_layer002_arithmetic row122_layer002_enumeration row122_bounds_eq row122_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer003_checked :
    coverLayerCheck row122.height row122.goods { lower := 118096, upper := 236192, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer004_checked :
    coverLayerCheck row122.height row122.goods { lower := 236192, upper := 472384, M := 8 } = true := by
  decide +kernel

theorem row122_layer005_checked :
    coverLayerCheck row122.height row122.goods { lower := 472384, upper := 944768, M := 6 } = true := by
  decide +kernel

theorem row122_layer006_checked :
    coverLayerCheck row122.height row122.goods { lower := 944768, upper := 1889536, M := 5 } = true := by
  decide +kernel

theorem row122_layer007_checked :
    coverLayerCheck row122.height row122.goods { lower := 1889536, upper := 3779072, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer008_checked :
    coverLayerCheck row122.height row122.goods { lower := 3779072, upper := 7558144, M := 3 } = true := by
  decide +kernel

theorem row122_layer009_checked :
    coverLayerCheck row122.height row122.goods { lower := 7558144, upper := 15116288, M := 3 } = true := by
  decide +kernel

theorem row122_layer010_checked :
    coverLayerCheck row122.height row122.goods { lower := 15116288, upper := 30232576, M := 2 } = true := by
  decide +kernel

theorem row122_layer011_checked :
    coverLayerCheck row122.height row122.goods { lower := 30232576, upper := 60465152, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer012_checked :
    coverLayerCheck row122.height row122.goods { lower := 60465152, upper := 100000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layers_checked :
    row122.layers.all (coverLayerCheck row122.height row122.goods) = true := by
  change row122_layers.all (coverLayerCheck row122.height row122.goods) = true
  simp only [row122_layers, List.all_cons, List.all_nil,
    row122_layer000_checked,
    row122_layer001_checked,
    row122_layer002_checked,
    row122_layer003_checked,
    row122_layer004_checked,
    row122_layer005_checked,
    row122_layer006_checked,
    row122_layer007_checked,
    row122_layer008_checked,
    row122_layer009_checked,
    row122_layer010_checked,
    row122_layer011_checked,
    row122_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_checked : finiteCoverRowCheck row122 = true := by
  simp only [finiteCoverRowCheck, row122_registered, row122_goods_checked,
    row122_small_checked, row122_layerCover_checked, row122_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i122 :
    ∀ n j : ℕ, 1 ≤ 122 ∧ 122 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 122 ≤ p ∧ p ∣ Nat.choose n 122 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row122_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i122
