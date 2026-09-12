import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row131B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer000_checked :
    coverLayerCheck row131.height row131.goods { lower := 17030, upper := 34060, M := 16 } = true := by
  exact coverLayerCheck_of_parts row131_layer000_arithmetic row131_layer000_enumeration row131_bounds_eq row131_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row131_layer001_intervals : List ColouredInterval :=
  [(2, 36864, 36994), (2, 40960, 41090), (2, 45056, 45186), (2, 49152, 49282), (2, 40960, 41090), (2, 49152, 49282), (2, 57344, 57474), (2, 65536, 65666), (2, 49152, 49282), (2, 65536, 65666), (2, 65536, 65666), (2, 65536, 65666), (3, 39366, 39496), (3, 45927, 46057), (3, 52488, 52618), (3, 59049, 59179), (3, 65610, 65740), (3, 39366, 39496), (3, 59049, 59179), (3, 59049, 59179), (5, 34375, 34505), (5, 37500, 37630), (5, 46875, 47005), (5, 62500, 62630), (7, 50421, 50551), (7, 67228, 67358), (11, 43923, 44053), (11, 58564, 58694), (13, 57122, 57252), (17, 34391, 34521), (17, 39304, 39434), (17, 44217, 44347), (17, 49130, 49260), (17, 54043, 54173), (17, 58956, 59086), (19, 34295, 34425), (19, 41154, 41284), (19, 48013, 48143), (19, 54872, 55002), (19, 61731, 61861), (23, 36501, 36631), (23, 48668, 48798), (23, 60835, 60965), (29, 48778, 48908), (31, 59582, 59712), (37, 50653, 50783), (59, 34810, 34940), (59, 38291, 38421), (59, 41772, 41902), (61, 37210, 37340), (61, 40931, 41061), (61, 44652, 44782), (67, 35912, 36042), (67, 40401, 40531), (67, 44890, 45020), (67, 49379, 49509), (67, 53868, 53998), (71, 35287, 35417), (71, 40328, 40458), (71, 45369, 45499), (71, 50410, 50540), (71, 55451, 55581), (71, 60492, 60622), (73, 37303, 37433), (73, 42632, 42762), (73, 47961, 48091), (73, 53290, 53420), (73, 58619, 58749), (73, 63948, 64078), (79, 37446, 37576), (79, 43687, 43817), (79, 49928, 50058), (79, 56169, 56299), (79, 62410, 62540), (83, 34445, 34575), (83, 41334, 41464), (83, 48223, 48353), (83, 55112, 55242), (83, 62001, 62131), (89, 39605, 39735), (89, 47526, 47656), (89, 55447, 55577), (89, 63368, 63498), (97, 37636, 37766), (97, 47045, 47175), (97, 56454, 56584), (97, 65863, 65993), (101, 40804, 40934), (101, 51005, 51135), (101, 61206, 61336), (103, 42436, 42566), (103, 53045, 53175), (103, 63654, 63784), (107, 34347, 34477), (107, 45796, 45926), (107, 57245, 57375), (109, 35643, 35773), (109, 47524, 47654), (109, 59405, 59535), (113, 38307, 38437), (113, 51076, 51206), (113, 63845, 63975), (127, 48387, 48517), (127, 64516, 64646)]

def row131_layer001_block000 : List ColouredInterval :=
  [(2, 36864, 36994), (2, 40960, 41090), (2, 45056, 45186), (2, 49152, 49282), (2, 40960, 41090), (2, 49152, 49282), (2, 57344, 57474), (2, 65536, 65666), (2, 49152, 49282), (2, 65536, 65666), (2, 65536, 65666), (2, 65536, 65666), (3, 39366, 39496), (3, 45927, 46057), (3, 52488, 52618), (3, 59049, 59179)]

def row131_layer001_block001 : List ColouredInterval :=
  [(3, 65610, 65740), (3, 39366, 39496), (3, 59049, 59179), (3, 59049, 59179), (5, 34375, 34505), (5, 37500, 37630), (5, 46875, 47005), (5, 62500, 62630), (7, 50421, 50551), (7, 67228, 67358), (11, 43923, 44053), (11, 58564, 58694), (13, 57122, 57252), (17, 34391, 34521), (17, 39304, 39434), (17, 44217, 44347)]

def row131_layer001_block002 : List ColouredInterval :=
  [(17, 49130, 49260), (17, 54043, 54173), (17, 58956, 59086), (19, 34295, 34425), (19, 41154, 41284), (19, 48013, 48143), (19, 54872, 55002), (19, 61731, 61861), (23, 36501, 36631), (23, 48668, 48798), (23, 60835, 60965), (29, 48778, 48908), (31, 59582, 59712), (37, 50653, 50783), (59, 34810, 34940), (59, 38291, 38421)]

def row131_layer001_block003 : List ColouredInterval :=
  [(59, 41772, 41902), (61, 37210, 37340), (61, 40931, 41061), (61, 44652, 44782), (67, 35912, 36042), (67, 40401, 40531), (67, 44890, 45020), (67, 49379, 49509), (67, 53868, 53998), (71, 35287, 35417), (71, 40328, 40458), (71, 45369, 45499), (71, 50410, 50540), (71, 55451, 55581), (71, 60492, 60622), (73, 37303, 37433)]

def row131_layer001_block004 : List ColouredInterval :=
  [(73, 42632, 42762), (73, 47961, 48091), (73, 53290, 53420), (73, 58619, 58749), (73, 63948, 64078), (79, 37446, 37576), (79, 43687, 43817), (79, 49928, 50058), (79, 56169, 56299), (79, 62410, 62540), (83, 34445, 34575), (83, 41334, 41464), (83, 48223, 48353), (83, 55112, 55242), (83, 62001, 62131), (89, 39605, 39735)]

def row131_layer001_block005 : List ColouredInterval :=
  [(89, 47526, 47656), (89, 55447, 55577), (89, 63368, 63498), (97, 37636, 37766), (97, 47045, 47175), (97, 56454, 56584), (97, 65863, 65993), (101, 40804, 40934), (101, 51005, 51135), (101, 61206, 61336), (103, 42436, 42566), (103, 53045, 53175), (103, 63654, 63784), (107, 34347, 34477), (107, 45796, 45926), (107, 57245, 57375)]

def row131_layer001_block006 : List ColouredInterval :=
  [(109, 35643, 35773), (109, 47524, 47654), (109, 59405, 59535), (113, 38307, 38437), (113, 51076, 51206), (113, 63845, 63975), (127, 48387, 48517), (127, 64516, 64646)]

def row131_layer001_chunks : List (List ColouredInterval) :=
  [row131_layer001_block000, row131_layer001_block001, row131_layer001_block002, row131_layer001_block003, row131_layer001_block004, row131_layer001_block005, row131_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_arithmetic : LayerArithmeticValid row131.height { lower := 34060, upper := 68120, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_enumeration :
    activePowerIntervalList 131 12 34060 68120 = row131_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_pairs000 :
    row131_layer001_block000.all (fun I => row131_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_pairs001 :
    row131_layer001_block001.all (fun I => row131_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_pairs002 :
    row131_layer001_block002.all (fun I => row131_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_pairs003 :
    row131_layer001_block003.all (fun I => row131_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_pairs004 :
    row131_layer001_block004.all (fun I => row131_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_pairs005 :
    row131_layer001_block005.all (fun I => row131_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_pairs006 :
    row131_layer001_block006.all (fun I => row131_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_chunks_eq : row131_layer001_chunks.flatten = row131_layer001_intervals := by
  rfl

theorem row131_layer001_pairs : pairCoverCheck row131_layer001_intervals row131_bounds = true := by
  apply pairCoverCheck_of_chunks row131_layer001_chunks_eq
  intro block hblock
  simp only [row131_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row131_layer001_pairs000
  · exact row131_layer001_pairs001
  · exact row131_layer001_pairs002
  · exact row131_layer001_pairs003
  · exact row131_layer001_pairs004
  · exact row131_layer001_pairs005
  · exact row131_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer001_checked :
    coverLayerCheck row131.height row131.goods { lower := 34060, upper := 68120, M := 12 } = true := by
  exact coverLayerCheck_of_parts row131_layer001_arithmetic row131_layer001_enumeration row131_bounds_eq row131_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row131_layer002_intervals : List ColouredInterval :=
  [(2, 73728, 73858), (2, 81920, 82050), (2, 98304, 98434), (2, 114688, 114818), (2, 131072, 131202), (2, 98304, 98434), (2, 131072, 131202), (2, 131072, 131202), (2, 131072, 131202), (3, 78732, 78862), (3, 98415, 98545), (3, 118098, 118228), (3, 118098, 118228), (5, 78125, 78255), (5, 93750, 93880), (5, 109375, 109505), (5, 125000, 125130), (5, 78125, 78255), (7, 84035, 84165), (7, 100842, 100972), (7, 117649, 117779), (7, 134456, 134586), (7, 117649, 117779), (11, 73205, 73335), (11, 87846, 87976), (11, 102487, 102617), (11, 117128, 117258), (11, 131769, 131899), (13, 85683, 85813), (13, 114244, 114374), (17, 83521, 83651), (19, 130321, 130451), (23, 73002, 73132), (23, 85169, 85299), (23, 97336, 97466), (23, 109503, 109633), (29, 73167, 73297), (29, 97556, 97686), (29, 121945, 122075), (31, 89373, 89503), (31, 119164, 119294), (37, 101306, 101436), (41, 68921, 69051), (43, 79507, 79637), (47, 103823, 103953), (89, 71289, 71419), (97, 75272, 75402), (97, 84681, 84811), (101, 71407, 71537), (101, 81608, 81738), (101, 91809, 91939), (103, 74263, 74393), (103, 84872, 85002), (103, 95481, 95611), (107, 68694, 68824), (107, 80143, 80273), (107, 91592, 91722), (107, 103041, 103171), (109, 71286, 71416), (109, 83167, 83297), (109, 95048, 95178), (109, 106929, 107059), (113, 76614, 76744), (113, 89383, 89513), (113, 102152, 102282), (113, 114921, 115051), (127, 80645, 80775), (127, 96774, 96904), (127, 112903, 113033), (127, 129032, 129162)]

def row131_layer002_block000 : List ColouredInterval :=
  [(2, 73728, 73858), (2, 81920, 82050), (2, 98304, 98434), (2, 114688, 114818), (2, 131072, 131202), (2, 98304, 98434), (2, 131072, 131202), (2, 131072, 131202), (2, 131072, 131202), (3, 78732, 78862), (3, 98415, 98545), (3, 118098, 118228), (3, 118098, 118228), (5, 78125, 78255), (5, 93750, 93880), (5, 109375, 109505)]

def row131_layer002_block001 : List ColouredInterval :=
  [(5, 125000, 125130), (5, 78125, 78255), (7, 84035, 84165), (7, 100842, 100972), (7, 117649, 117779), (7, 134456, 134586), (7, 117649, 117779), (11, 73205, 73335), (11, 87846, 87976), (11, 102487, 102617), (11, 117128, 117258), (11, 131769, 131899), (13, 85683, 85813), (13, 114244, 114374), (17, 83521, 83651), (19, 130321, 130451)]

def row131_layer002_block002 : List ColouredInterval :=
  [(23, 73002, 73132), (23, 85169, 85299), (23, 97336, 97466), (23, 109503, 109633), (29, 73167, 73297), (29, 97556, 97686), (29, 121945, 122075), (31, 89373, 89503), (31, 119164, 119294), (37, 101306, 101436), (41, 68921, 69051), (43, 79507, 79637), (47, 103823, 103953), (89, 71289, 71419), (97, 75272, 75402), (97, 84681, 84811)]

def row131_layer002_block003 : List ColouredInterval :=
  [(101, 71407, 71537), (101, 81608, 81738), (101, 91809, 91939), (103, 74263, 74393), (103, 84872, 85002), (103, 95481, 95611), (107, 68694, 68824), (107, 80143, 80273), (107, 91592, 91722), (107, 103041, 103171), (109, 71286, 71416), (109, 83167, 83297), (109, 95048, 95178), (109, 106929, 107059), (113, 76614, 76744), (113, 89383, 89513)]

def row131_layer002_block004 : List ColouredInterval :=
  [(113, 102152, 102282), (113, 114921, 115051), (127, 80645, 80775), (127, 96774, 96904), (127, 112903, 113033), (127, 129032, 129162)]

def row131_layer002_chunks : List (List ColouredInterval) :=
  [row131_layer002_block000, row131_layer002_block001, row131_layer002_block002, row131_layer002_block003, row131_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_arithmetic : LayerArithmeticValid row131.height { lower := 68120, upper := 136240, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_enumeration :
    activePowerIntervalList 131 9 68120 136240 = row131_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_pairs000 :
    row131_layer002_block000.all (fun I => row131_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_pairs001 :
    row131_layer002_block001.all (fun I => row131_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_pairs002 :
    row131_layer002_block002.all (fun I => row131_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_pairs003 :
    row131_layer002_block003.all (fun I => row131_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_pairs004 :
    row131_layer002_block004.all (fun I => row131_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row131_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_chunks_eq : row131_layer002_chunks.flatten = row131_layer002_intervals := by
  rfl

theorem row131_layer002_pairs : pairCoverCheck row131_layer002_intervals row131_bounds = true := by
  apply pairCoverCheck_of_chunks row131_layer002_chunks_eq
  intro block hblock
  simp only [row131_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row131_layer002_pairs000
  · exact row131_layer002_pairs001
  · exact row131_layer002_pairs002
  · exact row131_layer002_pairs003
  · exact row131_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer002_checked :
    coverLayerCheck row131.height row131.goods { lower := 68120, upper := 136240, M := 9 } = true := by
  exact coverLayerCheck_of_parts row131_layer002_arithmetic row131_layer002_enumeration row131_bounds_eq row131_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer003_checked :
    coverLayerCheck row131.height row131.goods { lower := 136240, upper := 272480, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer004_checked :
    coverLayerCheck row131.height row131.goods { lower := 272480, upper := 544960, M := 5 } = true := by
  decide +kernel

theorem row131_layer005_checked :
    coverLayerCheck row131.height row131.goods { lower := 544960, upper := 1089920, M := 4 } = true := by
  decide +kernel

theorem row131_layer006_checked :
    coverLayerCheck row131.height row131.goods { lower := 1089920, upper := 2179840, M := 3 } = true := by
  decide +kernel

theorem row131_layer007_checked :
    coverLayerCheck row131.height row131.goods { lower := 2179840, upper := 4359680, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer008_checked :
    coverLayerCheck row131.height row131.goods { lower := 4359680, upper := 8719360, M := 2 } = true := by
  decide +kernel

theorem row131_layer009_checked :
    coverLayerCheck row131.height row131.goods { lower := 8719360, upper := 17438720, M := 2 } = true := by
  decide +kernel

theorem row131_layer010_checked :
    coverLayerCheck row131.height row131.goods { lower := 17438720, upper := 34877440, M := 1 } = true := by
  decide +kernel

theorem row131_layer011_checked :
    coverLayerCheck row131.height row131.goods { lower := 34877440, upper := 69754880, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer012_checked :
    coverLayerCheck row131.height row131.goods { lower := 69754880, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layers_checked :
    row131.layers.all (coverLayerCheck row131.height row131.goods) = true := by
  change row131_layers.all (coverLayerCheck row131.height row131.goods) = true
  simp only [row131_layers, List.all_cons, List.all_nil,
    row131_layer000_checked,
    row131_layer001_checked,
    row131_layer002_checked,
    row131_layer003_checked,
    row131_layer004_checked,
    row131_layer005_checked,
    row131_layer006_checked,
    row131_layer007_checked,
    row131_layer008_checked,
    row131_layer009_checked,
    row131_layer010_checked,
    row131_layer011_checked,
    row131_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_checked : finiteCoverRowCheck row131 = true := by
  simp only [finiteCoverRowCheck, row131_registered, row131_goods_checked,
    row131_small_checked, row131_layerCover_checked, row131_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i131 :
    ∀ n j : ℕ, 1 ≤ 131 ∧ 131 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 131 ≤ p ∧ p ∣ Nat.choose n 131 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row131_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i131
