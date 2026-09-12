import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row121B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs009 :
    row121_layer000_block009.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_pairs010 :
    row121_layer000_block010.all (fun I => row121_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_chunks_eq : row121_layer000_chunks.flatten = row121_layer000_intervals := by
  rfl

theorem row121_layer000_pairs : pairCoverCheck row121_layer000_intervals row121_bounds = true := by
  apply pairCoverCheck_of_chunks row121_layer000_chunks_eq
  intro block hblock
  simp only [row121_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row121_layer000_pairs000
  · exact row121_layer000_pairs001
  · exact row121_layer000_pairs002
  · exact row121_layer000_pairs003
  · exact row121_layer000_pairs004
  · exact row121_layer000_pairs005
  · exact row121_layer000_pairs006
  · exact row121_layer000_pairs007
  · exact row121_layer000_pairs008
  · exact row121_layer000_pairs009
  · exact row121_layer000_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer000_checked :
    coverLayerCheck row121.height row121.goods { lower := 14520, upper := 29040, M := 21 } = true := by
  exact coverLayerCheck_of_parts row121_layer000_arithmetic row121_layer000_enumeration row121_bounds_eq row121_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row121_layer001_intervals : List ColouredInterval :=
  [(2, 30720, 30840), (2, 32768, 32888), (2, 32768, 32888), (2, 36864, 36984), (2, 40960, 41080), (2, 45056, 45176), (2, 49152, 49272), (2, 53248, 53368), (2, 57344, 57464), (2, 32768, 32888), (2, 40960, 41080), (2, 49152, 49272), (2, 57344, 57464), (2, 32768, 32888), (2, 49152, 49272), (2, 32768, 32888), (3, 30618, 30738), (3, 32805, 32925), (3, 34992, 35112), (3, 32805, 32925), (3, 39366, 39486), (3, 45927, 46047), (3, 52488, 52608), (3, 39366, 39486), (5, 31250, 31370), (5, 34375, 34495), (5, 37500, 37620), (5, 40625, 40745), (5, 43750, 43870), (5, 46875, 46995), (5, 50000, 50120), (5, 31250, 31370), (5, 46875, 46995), (7, 31213, 31333), (7, 33614, 33734), (7, 36015, 36135), (7, 38416, 38536), (7, 33614, 33734), (7, 50421, 50541), (13, 30758, 30878), (13, 32955, 33075), (13, 35152, 35272), (13, 57122, 57242), (17, 29478, 29598), (17, 34391, 34511), (17, 39304, 39424), (17, 44217, 44337), (17, 49130, 49250), (17, 54043, 54163), (19, 34295, 34415), (19, 41154, 41274), (19, 48013, 48133), (19, 54872, 54992), (23, 36501, 36621), (23, 48668, 48788), (29, 48778, 48898), (31, 29791, 29911), (37, 50653, 50773), (43, 29584, 29704), (47, 30926, 31046), (47, 33135, 33255), (47, 35344, 35464), (53, 30899, 31019), (53, 33708, 33828), (53, 36517, 36637), (53, 39326, 39446), (53, 42135, 42255), (53, 44944, 45064), (59, 31329, 31449), (59, 34810, 34930), (59, 38291, 38411), (59, 41772, 41892), (59, 45253, 45373), (59, 48734, 48854), (59, 52215, 52335), (59, 55696, 55816), (61, 29768, 29888), (61, 33489, 33609), (61, 37210, 37330), (61, 40931, 41051), (61, 44652, 44772), (61, 48373, 48493), (61, 52094, 52214), (61, 55815, 55935), (67, 31423, 31543), (67, 35912, 36032), (67, 40401, 40521), (67, 44890, 45010), (67, 49379, 49499), (67, 53868, 53988), (71, 30246, 30366), (71, 35287, 35407), (71, 40328, 40448), (71, 45369, 45489), (71, 50410, 50530), (71, 55451, 55571), (73, 31974, 32094), (73, 37303, 37423), (73, 42632, 42752), (73, 47961, 48081), (73, 53290, 53410), (79, 31205, 31325), (79, 37446, 37566), (79, 43687, 43807), (79, 49928, 50048), (79, 56169, 56289), (83, 34445, 34565), (83, 41334, 41454), (83, 48223, 48343), (83, 55112, 55232), (89, 31684, 31804), (89, 39605, 39725), (89, 47526, 47646), (89, 55447, 55567), (97, 37636, 37756), (97, 47045, 47165), (97, 56454, 56574), (101, 30603, 30723), (101, 40804, 40924), (101, 51005, 51125), (103, 31827, 31947), (103, 42436, 42556), (103, 53045, 53165), (107, 34347, 34467), (107, 45796, 45916), (107, 57245, 57365), (109, 35643, 35763), (109, 47524, 47644), (113, 38307, 38427), (113, 51076, 51196)]

def row121_layer001_block000 : List ColouredInterval :=
  [(2, 30720, 30840), (2, 32768, 32888), (2, 32768, 32888), (2, 36864, 36984), (2, 40960, 41080), (2, 45056, 45176), (2, 49152, 49272), (2, 53248, 53368), (2, 57344, 57464), (2, 32768, 32888), (2, 40960, 41080), (2, 49152, 49272), (2, 57344, 57464), (2, 32768, 32888), (2, 49152, 49272)]

def row121_layer001_block001 : List ColouredInterval :=
  [(2, 32768, 32888), (3, 30618, 30738), (3, 32805, 32925), (3, 34992, 35112), (3, 32805, 32925), (3, 39366, 39486), (3, 45927, 46047), (3, 52488, 52608), (3, 39366, 39486), (5, 31250, 31370), (5, 34375, 34495), (5, 37500, 37620), (5, 40625, 40745), (5, 43750, 43870), (5, 46875, 46995)]

def row121_layer001_block002 : List ColouredInterval :=
  [(5, 50000, 50120), (5, 31250, 31370), (5, 46875, 46995), (7, 31213, 31333), (7, 33614, 33734), (7, 36015, 36135), (7, 38416, 38536), (7, 33614, 33734), (7, 50421, 50541), (13, 30758, 30878), (13, 32955, 33075), (13, 35152, 35272), (13, 57122, 57242), (17, 29478, 29598), (17, 34391, 34511)]

def row121_layer001_block003 : List ColouredInterval :=
  [(17, 39304, 39424), (17, 44217, 44337), (17, 49130, 49250), (17, 54043, 54163), (19, 34295, 34415), (19, 41154, 41274), (19, 48013, 48133), (19, 54872, 54992), (23, 36501, 36621), (23, 48668, 48788), (29, 48778, 48898), (31, 29791, 29911), (37, 50653, 50773), (43, 29584, 29704), (47, 30926, 31046)]

def row121_layer001_block004 : List ColouredInterval :=
  [(47, 33135, 33255), (47, 35344, 35464), (53, 30899, 31019), (53, 33708, 33828), (53, 36517, 36637), (53, 39326, 39446), (53, 42135, 42255), (53, 44944, 45064), (59, 31329, 31449), (59, 34810, 34930), (59, 38291, 38411), (59, 41772, 41892), (59, 45253, 45373), (59, 48734, 48854), (59, 52215, 52335)]

def row121_layer001_block005 : List ColouredInterval :=
  [(59, 55696, 55816), (61, 29768, 29888), (61, 33489, 33609), (61, 37210, 37330), (61, 40931, 41051), (61, 44652, 44772), (61, 48373, 48493), (61, 52094, 52214), (61, 55815, 55935), (67, 31423, 31543), (67, 35912, 36032), (67, 40401, 40521), (67, 44890, 45010), (67, 49379, 49499), (67, 53868, 53988)]

def row121_layer001_block006 : List ColouredInterval :=
  [(71, 30246, 30366), (71, 35287, 35407), (71, 40328, 40448), (71, 45369, 45489), (71, 50410, 50530), (71, 55451, 55571), (73, 31974, 32094), (73, 37303, 37423), (73, 42632, 42752), (73, 47961, 48081), (73, 53290, 53410), (79, 31205, 31325), (79, 37446, 37566), (79, 43687, 43807), (79, 49928, 50048)]

def row121_layer001_block007 : List ColouredInterval :=
  [(79, 56169, 56289), (83, 34445, 34565), (83, 41334, 41454), (83, 48223, 48343), (83, 55112, 55232), (89, 31684, 31804), (89, 39605, 39725), (89, 47526, 47646), (89, 55447, 55567), (97, 37636, 37756), (97, 47045, 47165), (97, 56454, 56574), (101, 30603, 30723), (101, 40804, 40924), (101, 51005, 51125)]

def row121_layer001_block008 : List ColouredInterval :=
  [(103, 31827, 31947), (103, 42436, 42556), (103, 53045, 53165), (107, 34347, 34467), (107, 45796, 45916), (107, 57245, 57365), (109, 35643, 35763), (109, 47524, 47644), (113, 38307, 38427), (113, 51076, 51196)]

def row121_layer001_chunks : List (List ColouredInterval) :=
  [row121_layer001_block000, row121_layer001_block001, row121_layer001_block002, row121_layer001_block003, row121_layer001_block004, row121_layer001_block005, row121_layer001_block006, row121_layer001_block007, row121_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_arithmetic : LayerArithmeticValid row121.height { lower := 29040, upper := 58080, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_enumeration :
    activePowerIntervalList 121 16 29040 58080 = row121_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs000 :
    row121_layer001_block000.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs001 :
    row121_layer001_block001.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs002 :
    row121_layer001_block002.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs003 :
    row121_layer001_block003.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs004 :
    row121_layer001_block004.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs005 :
    row121_layer001_block005.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs006 :
    row121_layer001_block006.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs007 :
    row121_layer001_block007.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_pairs008 :
    row121_layer001_block008.all (fun I => row121_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_chunks_eq : row121_layer001_chunks.flatten = row121_layer001_intervals := by
  rfl

theorem row121_layer001_pairs : pairCoverCheck row121_layer001_intervals row121_bounds = true := by
  apply pairCoverCheck_of_chunks row121_layer001_chunks_eq
  intro block hblock
  simp only [row121_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row121_layer001_pairs000
  · exact row121_layer001_pairs001
  · exact row121_layer001_pairs002
  · exact row121_layer001_pairs003
  · exact row121_layer001_pairs004
  · exact row121_layer001_pairs005
  · exact row121_layer001_pairs006
  · exact row121_layer001_pairs007
  · exact row121_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer001_checked :
    coverLayerCheck row121.height row121.goods { lower := 29040, upper := 58080, M := 16 } = true := by
  exact coverLayerCheck_of_parts row121_layer001_arithmetic row121_layer001_enumeration row121_bounds_eq row121_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row121_layer002_intervals : List ColouredInterval :=
  [(2, 65536, 65656), (2, 73728, 73848), (2, 81920, 82040), (2, 90112, 90232), (2, 98304, 98424), (2, 106496, 106616), (2, 65536, 65656), (2, 81920, 82040), (2, 98304, 98424), (2, 114688, 114808), (2, 65536, 65656), (2, 98304, 98424), (2, 65536, 65656), (3, 59049, 59169), (3, 65610, 65730), (3, 72171, 72291), (3, 78732, 78852), (3, 85293, 85413), (3, 59049, 59169), (3, 78732, 78852), (3, 98415, 98535), (3, 59049, 59169), (5, 62500, 62620), (5, 78125, 78245), (5, 93750, 93870), (5, 109375, 109495), (5, 78125, 78245), (7, 67228, 67348), (7, 84035, 84155), (7, 100842, 100962), (13, 85683, 85803), (13, 114244, 114364), (17, 58956, 59076), (17, 63869, 63989), (17, 83521, 83641), (19, 61731, 61851), (19, 68590, 68710), (19, 75449, 75569), (19, 82308, 82428), (19, 89167, 89287), (23, 60835, 60955), (23, 73002, 73122), (23, 85169, 85289), (23, 97336, 97456), (23, 109503, 109623), (29, 73167, 73287), (29, 97556, 97676), (31, 59582, 59702), (31, 89373, 89493), (37, 101306, 101426), (41, 68921, 69041), (43, 79507, 79627), (47, 103823, 103943), (67, 58357, 58477), (71, 60492, 60612), (71, 65533, 65653), (73, 58619, 58739), (73, 63948, 64068), (73, 69277, 69397), (79, 62410, 62530), (79, 68651, 68771), (79, 74892, 75012), (79, 81133, 81253), (83, 62001, 62121), (83, 68890, 69010), (83, 75779, 75899), (83, 82668, 82788), (83, 89557, 89677), (89, 63368, 63488), (89, 71289, 71409), (89, 79210, 79330), (89, 87131, 87251), (89, 95052, 95172), (89, 102973, 103093), (97, 65863, 65983), (97, 75272, 75392), (97, 84681, 84801), (97, 94090, 94210), (97, 103499, 103619), (97, 112908, 113028), (101, 61206, 61326), (101, 71407, 71527), (101, 81608, 81728), (101, 91809, 91929), (101, 102010, 102130), (101, 112211, 112331), (103, 63654, 63774), (103, 74263, 74383), (103, 84872, 84992), (103, 95481, 95601), (103, 106090, 106210), (107, 68694, 68814), (107, 80143, 80263), (107, 91592, 91712), (107, 103041, 103161), (107, 114490, 114610), (109, 59405, 59525), (109, 71286, 71406), (109, 83167, 83287), (109, 95048, 95168), (109, 106929, 107049), (113, 63845, 63965), (113, 76614, 76734), (113, 89383, 89503), (113, 102152, 102272), (113, 114921, 115041)]

def row121_layer002_block000 : List ColouredInterval :=
  [(2, 65536, 65656), (2, 73728, 73848), (2, 81920, 82040), (2, 90112, 90232), (2, 98304, 98424), (2, 106496, 106616), (2, 65536, 65656), (2, 81920, 82040), (2, 98304, 98424), (2, 114688, 114808), (2, 65536, 65656), (2, 98304, 98424), (2, 65536, 65656), (3, 59049, 59169), (3, 65610, 65730), (3, 72171, 72291)]

def row121_layer002_block001 : List ColouredInterval :=
  [(3, 78732, 78852), (3, 85293, 85413), (3, 59049, 59169), (3, 78732, 78852), (3, 98415, 98535), (3, 59049, 59169), (5, 62500, 62620), (5, 78125, 78245), (5, 93750, 93870), (5, 109375, 109495), (5, 78125, 78245), (7, 67228, 67348), (7, 84035, 84155), (7, 100842, 100962), (13, 85683, 85803), (13, 114244, 114364)]

def row121_layer002_block002 : List ColouredInterval :=
  [(17, 58956, 59076), (17, 63869, 63989), (17, 83521, 83641), (19, 61731, 61851), (19, 68590, 68710), (19, 75449, 75569), (19, 82308, 82428), (19, 89167, 89287), (23, 60835, 60955), (23, 73002, 73122), (23, 85169, 85289), (23, 97336, 97456), (23, 109503, 109623), (29, 73167, 73287), (29, 97556, 97676), (31, 59582, 59702)]

def row121_layer002_block003 : List ColouredInterval :=
  [(31, 89373, 89493), (37, 101306, 101426), (41, 68921, 69041), (43, 79507, 79627), (47, 103823, 103943), (67, 58357, 58477), (71, 60492, 60612), (71, 65533, 65653), (73, 58619, 58739), (73, 63948, 64068), (73, 69277, 69397), (79, 62410, 62530), (79, 68651, 68771), (79, 74892, 75012), (79, 81133, 81253), (83, 62001, 62121)]

def row121_layer002_block004 : List ColouredInterval :=
  [(83, 68890, 69010), (83, 75779, 75899), (83, 82668, 82788), (83, 89557, 89677), (89, 63368, 63488), (89, 71289, 71409), (89, 79210, 79330), (89, 87131, 87251), (89, 95052, 95172), (89, 102973, 103093), (97, 65863, 65983), (97, 75272, 75392), (97, 84681, 84801), (97, 94090, 94210), (97, 103499, 103619), (97, 112908, 113028)]

def row121_layer002_block005 : List ColouredInterval :=
  [(101, 61206, 61326), (101, 71407, 71527), (101, 81608, 81728), (101, 91809, 91929), (101, 102010, 102130), (101, 112211, 112331), (103, 63654, 63774), (103, 74263, 74383), (103, 84872, 84992), (103, 95481, 95601), (103, 106090, 106210), (107, 68694, 68814), (107, 80143, 80263), (107, 91592, 91712), (107, 103041, 103161), (107, 114490, 114610)]

def row121_layer002_block006 : List ColouredInterval :=
  [(109, 59405, 59525), (109, 71286, 71406), (109, 83167, 83287), (109, 95048, 95168), (109, 106929, 107049), (113, 63845, 63965), (113, 76614, 76734), (113, 89383, 89503), (113, 102152, 102272), (113, 114921, 115041)]

def row121_layer002_chunks : List (List ColouredInterval) :=
  [row121_layer002_block000, row121_layer002_block001, row121_layer002_block002, row121_layer002_block003, row121_layer002_block004, row121_layer002_block005, row121_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_arithmetic : LayerArithmeticValid row121.height { lower := 58080, upper := 116160, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_enumeration :
    activePowerIntervalList 121 13 58080 116160 = row121_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_pairs000 :
    row121_layer002_block000.all (fun I => row121_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_pairs001 :
    row121_layer002_block001.all (fun I => row121_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_pairs002 :
    row121_layer002_block002.all (fun I => row121_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_pairs003 :
    row121_layer002_block003.all (fun I => row121_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_pairs004 :
    row121_layer002_block004.all (fun I => row121_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_pairs005 :
    row121_layer002_block005.all (fun I => row121_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_pairs006 :
    row121_layer002_block006.all (fun I => row121_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row121_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_chunks_eq : row121_layer002_chunks.flatten = row121_layer002_intervals := by
  rfl

theorem row121_layer002_pairs : pairCoverCheck row121_layer002_intervals row121_bounds = true := by
  apply pairCoverCheck_of_chunks row121_layer002_chunks_eq
  intro block hblock
  simp only [row121_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row121_layer002_pairs000
  · exact row121_layer002_pairs001
  · exact row121_layer002_pairs002
  · exact row121_layer002_pairs003
  · exact row121_layer002_pairs004
  · exact row121_layer002_pairs005
  · exact row121_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer002_checked :
    coverLayerCheck row121.height row121.goods { lower := 58080, upper := 116160, M := 13 } = true := by
  exact coverLayerCheck_of_parts row121_layer002_arithmetic row121_layer002_enumeration row121_bounds_eq row121_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer003_checked :
    coverLayerCheck row121.height row121.goods { lower := 116160, upper := 232320, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer004_checked :
    coverLayerCheck row121.height row121.goods { lower := 232320, upper := 464640, M := 8 } = true := by
  decide +kernel

theorem row121_layer005_checked :
    coverLayerCheck row121.height row121.goods { lower := 464640, upper := 929280, M := 7 } = true := by
  decide +kernel

theorem row121_layer006_checked :
    coverLayerCheck row121.height row121.goods { lower := 929280, upper := 1858560, M := 5 } = true := by
  decide +kernel

theorem row121_layer007_checked :
    coverLayerCheck row121.height row121.goods { lower := 1858560, upper := 3717120, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer007_checked
