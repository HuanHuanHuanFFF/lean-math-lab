import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_chunks_eq : row103_layer001_chunks.flatten = row103_layer001_intervals := by
  rfl

theorem row103_layer001_pairs : pairCoverCheck row103_layer001_intervals row103_bounds = true := by
  apply pairCoverCheck_of_chunks row103_layer001_chunks_eq
  intro block hblock
  simp only [row103_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row103_layer001_pairs000
  · exact row103_layer001_pairs001
  · exact row103_layer001_pairs002
  · exact row103_layer001_pairs003
  · exact row103_layer001_pairs004
  · exact row103_layer001_pairs005
  · exact row103_layer001_pairs006
  · exact row103_layer001_pairs007
  · exact row103_layer001_pairs008
  · exact row103_layer001_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_checked :
    coverLayerCheck row103.height row103.goods { lower := 21012, upper := 42024, M := 17 } = true := by
  exact coverLayerCheck_of_parts row103_layer001_arithmetic row103_layer001_enumeration row103_bounds_eq row103_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row103_layer002_intervals : List ColouredInterval :=
  [(2, 45056, 45158), (2, 49152, 49254), (2, 53248, 53350), (2, 57344, 57446), (2, 49152, 49254), (2, 57344, 57446), (2, 65536, 65638), (2, 73728, 73830), (2, 81920, 82022), (2, 49152, 49254), (2, 65536, 65638), (2, 81920, 82022), (2, 65536, 65638), (2, 65536, 65638), (3, 45927, 46029), (3, 52488, 52590), (3, 59049, 59151), (3, 65610, 65712), (3, 72171, 72273), (3, 78732, 78834), (3, 59049, 59151), (3, 78732, 78834), (3, 59049, 59151), (5, 43750, 43852), (5, 46875, 46977), (5, 62500, 62602), (5, 78125, 78227), (5, 78125, 78227), (7, 50421, 50523), (7, 67228, 67330), (7, 84035, 84047), (11, 43923, 44025), (11, 58564, 58666), (11, 73205, 73307), (13, 57122, 57224), (17, 44217, 44319), (17, 49130, 49232), (17, 54043, 54145), (17, 58956, 59058), (17, 63869, 63971), (17, 68782, 68884), (17, 83521, 83623), (19, 48013, 48115), (19, 54872, 54974), (19, 61731, 61833), (19, 68590, 68692), (19, 75449, 75551), (19, 82308, 82410), (23, 48668, 48770), (23, 60835, 60937), (23, 73002, 73104), (29, 48778, 48880), (29, 73167, 73269), (31, 59582, 59684), (37, 50653, 50755), (41, 68921, 69023), (43, 79507, 79609), (59, 45253, 45355), (59, 48734, 48836), (61, 44652, 44754), (61, 48373, 48475), (61, 52094, 52196), (67, 44890, 44992), (67, 49379, 49481), (67, 53868, 53970), (67, 58357, 58459), (67, 62846, 62948), (71, 45369, 45471), (71, 50410, 50512), (71, 55451, 55553), (71, 60492, 60594), (71, 65533, 65635), (71, 70574, 70676), (73, 42632, 42734), (73, 47961, 48063), (73, 53290, 53392), (73, 58619, 58721), (73, 63948, 64050), (73, 69277, 69379), (73, 74606, 74708), (79, 43687, 43789), (79, 49928, 50030), (79, 56169, 56271), (79, 62410, 62512), (79, 68651, 68753), (79, 74892, 74994), (79, 81133, 81235), (83, 48223, 48325), (83, 55112, 55214), (83, 62001, 62103), (83, 68890, 68992), (83, 75779, 75881), (83, 82668, 82770), (89, 47526, 47628), (89, 55447, 55549), (89, 63368, 63470), (89, 71289, 71391), (89, 79210, 79312), (97, 47045, 47147), (97, 56454, 56556), (97, 65863, 65965), (97, 75272, 75374), (101, 51005, 51107), (101, 61206, 61308), (101, 71407, 71509), (101, 81608, 81710)]

def row103_layer002_block000 : List ColouredInterval :=
  [(2, 45056, 45158), (2, 49152, 49254), (2, 53248, 53350), (2, 57344, 57446), (2, 49152, 49254), (2, 57344, 57446), (2, 65536, 65638), (2, 73728, 73830), (2, 81920, 82022), (2, 49152, 49254), (2, 65536, 65638), (2, 81920, 82022), (2, 65536, 65638), (2, 65536, 65638), (3, 45927, 46029), (3, 52488, 52590)]

def row103_layer002_block001 : List ColouredInterval :=
  [(3, 59049, 59151), (3, 65610, 65712), (3, 72171, 72273), (3, 78732, 78834), (3, 59049, 59151), (3, 78732, 78834), (3, 59049, 59151), (5, 43750, 43852), (5, 46875, 46977), (5, 62500, 62602), (5, 78125, 78227), (5, 78125, 78227), (7, 50421, 50523), (7, 67228, 67330), (7, 84035, 84047), (11, 43923, 44025)]

def row103_layer002_block002 : List ColouredInterval :=
  [(11, 58564, 58666), (11, 73205, 73307), (13, 57122, 57224), (17, 44217, 44319), (17, 49130, 49232), (17, 54043, 54145), (17, 58956, 59058), (17, 63869, 63971), (17, 68782, 68884), (17, 83521, 83623), (19, 48013, 48115), (19, 54872, 54974), (19, 61731, 61833), (19, 68590, 68692), (19, 75449, 75551), (19, 82308, 82410)]

def row103_layer002_block003 : List ColouredInterval :=
  [(23, 48668, 48770), (23, 60835, 60937), (23, 73002, 73104), (29, 48778, 48880), (29, 73167, 73269), (31, 59582, 59684), (37, 50653, 50755), (41, 68921, 69023), (43, 79507, 79609), (59, 45253, 45355), (59, 48734, 48836), (61, 44652, 44754), (61, 48373, 48475), (61, 52094, 52196), (67, 44890, 44992), (67, 49379, 49481)]

def row103_layer002_block004 : List ColouredInterval :=
  [(67, 53868, 53970), (67, 58357, 58459), (67, 62846, 62948), (71, 45369, 45471), (71, 50410, 50512), (71, 55451, 55553), (71, 60492, 60594), (71, 65533, 65635), (71, 70574, 70676), (73, 42632, 42734), (73, 47961, 48063), (73, 53290, 53392), (73, 58619, 58721), (73, 63948, 64050), (73, 69277, 69379), (73, 74606, 74708)]

def row103_layer002_block005 : List ColouredInterval :=
  [(79, 43687, 43789), (79, 49928, 50030), (79, 56169, 56271), (79, 62410, 62512), (79, 68651, 68753), (79, 74892, 74994), (79, 81133, 81235), (83, 48223, 48325), (83, 55112, 55214), (83, 62001, 62103), (83, 68890, 68992), (83, 75779, 75881), (83, 82668, 82770), (89, 47526, 47628), (89, 55447, 55549), (89, 63368, 63470)]

def row103_layer002_block006 : List ColouredInterval :=
  [(89, 71289, 71391), (89, 79210, 79312), (97, 47045, 47147), (97, 56454, 56556), (97, 65863, 65965), (97, 75272, 75374), (101, 51005, 51107), (101, 61206, 61308), (101, 71407, 71509), (101, 81608, 81710)]

def row103_layer002_chunks : List (List ColouredInterval) :=
  [row103_layer002_block000, row103_layer002_block001, row103_layer002_block002, row103_layer002_block003, row103_layer002_block004, row103_layer002_block005, row103_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_arithmetic : LayerArithmeticValid row103.height { lower := 42024, upper := 84048, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_enumeration :
    activePowerIntervalList 103 14 42024 84048 = row103_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_pairs000 :
    row103_layer002_block000.all (fun I => row103_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_pairs001 :
    row103_layer002_block001.all (fun I => row103_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_pairs002 :
    row103_layer002_block002.all (fun I => row103_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_pairs003 :
    row103_layer002_block003.all (fun I => row103_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_pairs004 :
    row103_layer002_block004.all (fun I => row103_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_pairs005 :
    row103_layer002_block005.all (fun I => row103_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_pairs006 :
    row103_layer002_block006.all (fun I => row103_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_chunks_eq : row103_layer002_chunks.flatten = row103_layer002_intervals := by
  rfl

theorem row103_layer002_pairs : pairCoverCheck row103_layer002_intervals row103_bounds = true := by
  apply pairCoverCheck_of_chunks row103_layer002_chunks_eq
  intro block hblock
  simp only [row103_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row103_layer002_pairs000
  · exact row103_layer002_pairs001
  · exact row103_layer002_pairs002
  · exact row103_layer002_pairs003
  · exact row103_layer002_pairs004
  · exact row103_layer002_pairs005
  · exact row103_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer002_checked :
    coverLayerCheck row103.height row103.goods { lower := 42024, upper := 84048, M := 14 } = true := by
  exact coverLayerCheck_of_parts row103_layer002_arithmetic row103_layer002_enumeration row103_bounds_eq row103_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row103_layer003_intervals : List ColouredInterval :=
  [(2, 90112, 90214), (2, 98304, 98406), (2, 114688, 114790), (2, 131072, 131174), (2, 147456, 147558), (2, 163840, 163942), (2, 98304, 98406), (2, 131072, 131174), (2, 163840, 163942), (2, 131072, 131174), (2, 131072, 131174), (3, 98415, 98517), (3, 118098, 118200), (3, 137781, 137883), (3, 157464, 157566), (3, 118098, 118200), (5, 93750, 93852), (5, 109375, 109477), (5, 125000, 125102), (5, 140625, 140727), (5, 156250, 156352), (5, 156250, 156352), (7, 84048, 84137), (7, 100842, 100944), (7, 117649, 117751), (7, 134456, 134558), (7, 151263, 151365), (7, 168070, 168095), (7, 117649, 117751), (11, 87846, 87948), (11, 102487, 102589), (11, 117128, 117230), (11, 131769, 131871), (11, 146410, 146512), (11, 161051, 161153), (11, 161051, 161153), (13, 85683, 85785), (13, 114244, 114346), (13, 142805, 142907), (17, 167042, 167144), (19, 130321, 130423), (23, 85169, 85271), (23, 97336, 97438), (23, 109503, 109605), (23, 121670, 121772), (23, 133837, 133939), (29, 97556, 97658), (29, 121945, 122047), (29, 146334, 146436), (31, 89373, 89475), (31, 119164, 119266), (31, 148955, 149057), (37, 101306, 101408), (37, 151959, 152061), (41, 137842, 137944), (43, 159014, 159116), (47, 103823, 103925), (53, 148877, 148979), (89, 87131, 87233), (97, 84681, 84783), (97, 94090, 94192), (97, 103499, 103601), (101, 91809, 91911), (101, 102010, 102112), (101, 112211, 112313)]

def row103_layer003_block000 : List ColouredInterval :=
  [(2, 90112, 90214), (2, 98304, 98406), (2, 114688, 114790), (2, 131072, 131174), (2, 147456, 147558), (2, 163840, 163942), (2, 98304, 98406), (2, 131072, 131174), (2, 163840, 163942), (2, 131072, 131174), (2, 131072, 131174), (3, 98415, 98517), (3, 118098, 118200), (3, 137781, 137883), (3, 157464, 157566), (3, 118098, 118200)]

def row103_layer003_block001 : List ColouredInterval :=
  [(5, 93750, 93852), (5, 109375, 109477), (5, 125000, 125102), (5, 140625, 140727), (5, 156250, 156352), (5, 156250, 156352), (7, 84048, 84137), (7, 100842, 100944), (7, 117649, 117751), (7, 134456, 134558), (7, 151263, 151365), (7, 168070, 168095), (7, 117649, 117751), (11, 87846, 87948), (11, 102487, 102589), (11, 117128, 117230)]

def row103_layer003_block002 : List ColouredInterval :=
  [(11, 131769, 131871), (11, 146410, 146512), (11, 161051, 161153), (11, 161051, 161153), (13, 85683, 85785), (13, 114244, 114346), (13, 142805, 142907), (17, 167042, 167144), (19, 130321, 130423), (23, 85169, 85271), (23, 97336, 97438), (23, 109503, 109605), (23, 121670, 121772), (23, 133837, 133939), (29, 97556, 97658), (29, 121945, 122047)]

def row103_layer003_block003 : List ColouredInterval :=
  [(29, 146334, 146436), (31, 89373, 89475), (31, 119164, 119266), (31, 148955, 149057), (37, 101306, 101408), (37, 151959, 152061), (41, 137842, 137944), (43, 159014, 159116), (47, 103823, 103925), (53, 148877, 148979), (89, 87131, 87233), (97, 84681, 84783), (97, 94090, 94192), (97, 103499, 103601), (101, 91809, 91911), (101, 102010, 102112)]

def row103_layer003_block004 : List ColouredInterval :=
  [(101, 112211, 112313)]

def row103_layer003_chunks : List (List ColouredInterval) :=
  [row103_layer003_block000, row103_layer003_block001, row103_layer003_block002, row103_layer003_block003, row103_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_arithmetic : LayerArithmeticValid row103.height { lower := 84048, upper := 168096, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_arithmetic
