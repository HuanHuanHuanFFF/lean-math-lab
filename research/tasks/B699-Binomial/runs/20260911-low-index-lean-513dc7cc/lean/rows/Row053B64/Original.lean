import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_pairs000 :
    row053_layer003_block000.all (fun I => row053_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_pairs001 :
    row053_layer003_block001.all (fun I => row053_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_pairs002 :
    row053_layer003_block002.all (fun I => row053_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_pairs003 :
    row053_layer003_block003.all (fun I => row053_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_pairs004 :
    row053_layer003_block004.all (fun I => row053_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_pairs005 :
    row053_layer003_block005.all (fun I => row053_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_pairs006 :
    row053_layer003_block006.all (fun I => row053_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_pairs007 :
    row053_layer003_block007.all (fun I => row053_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_chunks_eq : row053_layer003_chunks.flatten = row053_layer003_intervals := by
  rfl

theorem row053_layer003_pairs : pairCoverCheck row053_layer003_intervals row053_bounds = true := by
  apply pairCoverCheck_of_chunks row053_layer003_chunks_eq
  intro block hblock
  simp only [row053_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row053_layer003_pairs000
  · exact row053_layer003_pairs001
  · exact row053_layer003_pairs002
  · exact row053_layer003_pairs003
  · exact row053_layer003_pairs004
  · exact row053_layer003_pairs005
  · exact row053_layer003_pairs006
  · exact row053_layer003_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer003_checked :
    coverLayerCheck row053.height row053.goods { lower := 22048, upper := 44096, M := 21 } = true := by
  exact coverLayerCheck_of_parts row053_layer003_arithmetic row053_layer003_enumeration row053_bounds_eq row053_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_layer004_intervals : List ColouredInterval :=
  [(2, 45056, 45108), (2, 49152, 49204), (2, 53248, 53300), (2, 57344, 57396), (2, 61440, 61492), (2, 65536, 65588), (2, 69632, 69684), (2, 73728, 73780), (2, 49152, 49204), (2, 57344, 57396), (2, 65536, 65588), (2, 73728, 73780), (2, 81920, 81972), (2, 49152, 49204), (2, 65536, 65588), (2, 81920, 81972), (2, 65536, 65588), (2, 65536, 65588), (3, 45927, 45979), (3, 52488, 52540), (3, 59049, 59101), (3, 65610, 65662), (3, 72171, 72223), (3, 78732, 78784), (3, 85293, 85345), (3, 59049, 59101), (3, 78732, 78784), (3, 59049, 59101), (5, 46875, 46927), (5, 50000, 50052), (5, 53125, 53177), (5, 56250, 56302), (5, 46875, 46927), (5, 62500, 62552), (5, 78125, 78177), (5, 78125, 78177), (7, 50421, 50473), (7, 67228, 67280), (7, 84035, 84087), (11, 58564, 58616), (11, 73205, 73257), (11, 87846, 87898), (13, 57122, 57174), (13, 85683, 85735), (17, 44217, 44269), (17, 49130, 49182), (17, 54043, 54095), (17, 58956, 59008), (17, 63869, 63921), (17, 68782, 68834), (17, 73695, 73747), (17, 78608, 78660), (17, 83521, 83573), (17, 83521, 83573), (19, 48013, 48065), (19, 54872, 54924), (19, 61731, 61783), (19, 68590, 68642), (19, 75449, 75501), (19, 82308, 82360), (23, 48668, 48720), (23, 60835, 60887), (23, 73002, 73054), (23, 85169, 85221), (29, 48778, 48830), (29, 73167, 73219), (31, 59582, 59634), (37, 50653, 50705), (41, 68921, 68973), (43, 79507, 79559)]

def row053_layer004_block000 : List ColouredInterval :=
  [(2, 45056, 45108), (2, 49152, 49204), (2, 53248, 53300), (2, 57344, 57396), (2, 61440, 61492), (2, 65536, 65588), (2, 69632, 69684), (2, 73728, 73780), (2, 49152, 49204), (2, 57344, 57396), (2, 65536, 65588), (2, 73728, 73780), (2, 81920, 81972), (2, 49152, 49204), (2, 65536, 65588), (2, 81920, 81972)]

def row053_layer004_block001 : List ColouredInterval :=
  [(2, 65536, 65588), (2, 65536, 65588), (3, 45927, 45979), (3, 52488, 52540), (3, 59049, 59101), (3, 65610, 65662), (3, 72171, 72223), (3, 78732, 78784), (3, 85293, 85345), (3, 59049, 59101), (3, 78732, 78784), (3, 59049, 59101), (5, 46875, 46927), (5, 50000, 50052), (5, 53125, 53177), (5, 56250, 56302)]

def row053_layer004_block002 : List ColouredInterval :=
  [(5, 46875, 46927), (5, 62500, 62552), (5, 78125, 78177), (5, 78125, 78177), (7, 50421, 50473), (7, 67228, 67280), (7, 84035, 84087), (11, 58564, 58616), (11, 73205, 73257), (11, 87846, 87898), (13, 57122, 57174), (13, 85683, 85735), (17, 44217, 44269), (17, 49130, 49182), (17, 54043, 54095), (17, 58956, 59008)]

def row053_layer004_block003 : List ColouredInterval :=
  [(17, 63869, 63921), (17, 68782, 68834), (17, 73695, 73747), (17, 78608, 78660), (17, 83521, 83573), (17, 83521, 83573), (19, 48013, 48065), (19, 54872, 54924), (19, 61731, 61783), (19, 68590, 68642), (19, 75449, 75501), (19, 82308, 82360), (23, 48668, 48720), (23, 60835, 60887), (23, 73002, 73054), (23, 85169, 85221)]

def row053_layer004_block004 : List ColouredInterval :=
  [(29, 48778, 48830), (29, 73167, 73219), (31, 59582, 59634), (37, 50653, 50705), (41, 68921, 68973), (43, 79507, 79559)]

def row053_layer004_chunks : List (List ColouredInterval) :=
  [row053_layer004_block000, row053_layer004_block001, row053_layer004_block002, row053_layer004_block003, row053_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_arithmetic : LayerArithmeticValid row053.height { lower := 44096, upper := 88192, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_enumeration :
    activePowerIntervalList 53 18 44096 88192 = row053_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_pairs000 :
    row053_layer004_block000.all (fun I => row053_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_pairs001 :
    row053_layer004_block001.all (fun I => row053_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_pairs002 :
    row053_layer004_block002.all (fun I => row053_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_pairs003 :
    row053_layer004_block003.all (fun I => row053_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_pairs004 :
    row053_layer004_block004.all (fun I => row053_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_chunks_eq : row053_layer004_chunks.flatten = row053_layer004_intervals := by
  rfl

theorem row053_layer004_pairs : pairCoverCheck row053_layer004_intervals row053_bounds = true := by
  apply pairCoverCheck_of_chunks row053_layer004_chunks_eq
  intro block hblock
  simp only [row053_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row053_layer004_pairs000
  · exact row053_layer004_pairs001
  · exact row053_layer004_pairs002
  · exact row053_layer004_pairs003
  · exact row053_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer004_checked :
    coverLayerCheck row053.height row053.goods { lower := 44096, upper := 88192, M := 18 } = true := by
  exact coverLayerCheck_of_parts row053_layer004_arithmetic row053_layer004_enumeration row053_bounds_eq row053_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_layer005_intervals : List ColouredInterval :=
  [(2, 90112, 90164), (2, 98304, 98356), (2, 106496, 106548), (2, 114688, 114740), (2, 122880, 122932), (2, 131072, 131124), (2, 139264, 139316), (2, 98304, 98356), (2, 114688, 114740), (2, 131072, 131124), (2, 147456, 147508), (2, 163840, 163892), (2, 98304, 98356), (2, 131072, 131124), (2, 163840, 163892), (2, 131072, 131124), (2, 131072, 131124), (3, 91854, 91906), (3, 98415, 98467), (3, 104976, 105028), (3, 111537, 111589), (3, 98415, 98467), (3, 118098, 118150), (3, 137781, 137833), (3, 157464, 157516), (3, 118098, 118150), (5, 93750, 93802), (5, 109375, 109427), (5, 125000, 125052), (5, 140625, 140677), (5, 156250, 156302), (5, 171875, 171927), (5, 156250, 156302), (7, 100842, 100894), (7, 117649, 117701), (7, 134456, 134508), (7, 151263, 151315), (7, 168070, 168122), (7, 117649, 117701), (11, 102487, 102539), (11, 117128, 117180), (11, 131769, 131821), (11, 146410, 146462), (11, 161051, 161103), (11, 175692, 175744), (11, 161051, 161103), (13, 114244, 114296), (13, 142805, 142857), (13, 171366, 171418), (17, 167042, 167094), (19, 89167, 89219), (19, 96026, 96078), (19, 102885, 102937), (19, 109744, 109796), (19, 116603, 116655), (19, 130321, 130373), (23, 97336, 97388), (23, 109503, 109555), (23, 121670, 121722), (23, 133837, 133889), (23, 146004, 146056), (23, 158171, 158223), (23, 170338, 170390), (29, 97556, 97608), (29, 121945, 121997), (29, 146334, 146386), (29, 170723, 170775), (31, 89373, 89425), (31, 119164, 119216), (31, 148955, 149007), (37, 101306, 101358), (37, 151959, 152011), (41, 137842, 137894), (43, 159014, 159066), (47, 103823, 103875)]

def row053_layer005_block000 : List ColouredInterval :=
  [(2, 90112, 90164), (2, 98304, 98356), (2, 106496, 106548), (2, 114688, 114740), (2, 122880, 122932), (2, 131072, 131124), (2, 139264, 139316), (2, 98304, 98356), (2, 114688, 114740), (2, 131072, 131124), (2, 147456, 147508), (2, 163840, 163892), (2, 98304, 98356), (2, 131072, 131124), (2, 163840, 163892), (2, 131072, 131124)]

def row053_layer005_block001 : List ColouredInterval :=
  [(2, 131072, 131124), (3, 91854, 91906), (3, 98415, 98467), (3, 104976, 105028), (3, 111537, 111589), (3, 98415, 98467), (3, 118098, 118150), (3, 137781, 137833), (3, 157464, 157516), (3, 118098, 118150), (5, 93750, 93802), (5, 109375, 109427), (5, 125000, 125052), (5, 140625, 140677), (5, 156250, 156302), (5, 171875, 171927)]

def row053_layer005_block002 : List ColouredInterval :=
  [(5, 156250, 156302), (7, 100842, 100894), (7, 117649, 117701), (7, 134456, 134508), (7, 151263, 151315), (7, 168070, 168122), (7, 117649, 117701), (11, 102487, 102539), (11, 117128, 117180), (11, 131769, 131821), (11, 146410, 146462), (11, 161051, 161103), (11, 175692, 175744), (11, 161051, 161103), (13, 114244, 114296), (13, 142805, 142857)]

def row053_layer005_block003 : List ColouredInterval :=
  [(13, 171366, 171418), (17, 167042, 167094), (19, 89167, 89219), (19, 96026, 96078), (19, 102885, 102937), (19, 109744, 109796), (19, 116603, 116655), (19, 130321, 130373), (23, 97336, 97388), (23, 109503, 109555), (23, 121670, 121722), (23, 133837, 133889), (23, 146004, 146056), (23, 158171, 158223), (23, 170338, 170390), (29, 97556, 97608)]

def row053_layer005_block004 : List ColouredInterval :=
  [(29, 121945, 121997), (29, 146334, 146386), (29, 170723, 170775), (31, 89373, 89425), (31, 119164, 119216), (31, 148955, 149007), (37, 101306, 101358), (37, 151959, 152011), (41, 137842, 137894), (43, 159014, 159066), (47, 103823, 103875)]

def row053_layer005_chunks : List (List ColouredInterval) :=
  [row053_layer005_block000, row053_layer005_block001, row053_layer005_block002, row053_layer005_block003, row053_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_arithmetic : LayerArithmeticValid row053.height { lower := 88192, upper := 176384, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_enumeration :
    activePowerIntervalList 53 17 88192 176384 = row053_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_pairs000 :
    row053_layer005_block000.all (fun I => row053_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_pairs001 :
    row053_layer005_block001.all (fun I => row053_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_pairs002 :
    row053_layer005_block002.all (fun I => row053_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_pairs003 :
    row053_layer005_block003.all (fun I => row053_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_pairs004 :
    row053_layer005_block004.all (fun I => row053_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_chunks_eq : row053_layer005_chunks.flatten = row053_layer005_intervals := by
  rfl

theorem row053_layer005_pairs : pairCoverCheck row053_layer005_intervals row053_bounds = true := by
  apply pairCoverCheck_of_chunks row053_layer005_chunks_eq
  intro block hblock
  simp only [row053_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row053_layer005_pairs000
  · exact row053_layer005_pairs001
  · exact row053_layer005_pairs002
  · exact row053_layer005_pairs003
  · exact row053_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer005_checked :
    coverLayerCheck row053.height row053.goods { lower := 88192, upper := 176384, M := 17 } = true := by
  exact coverLayerCheck_of_parts row053_layer005_arithmetic row053_layer005_enumeration row053_bounds_eq row053_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row053_layer006_intervals : List ColouredInterval :=
  [(2, 180224, 180276), (2, 196608, 196660), (2, 212992, 213044), (2, 229376, 229428), (2, 245760, 245812), (2, 196608, 196660), (2, 229376, 229428), (2, 262144, 262196), (2, 294912, 294964), (2, 327680, 327732), (2, 196608, 196660), (2, 262144, 262196), (2, 327680, 327732), (2, 262144, 262196), (2, 262144, 262196), (3, 177147, 177199), (3, 196830, 196882), (3, 216513, 216565), (3, 236196, 236248), (3, 255879, 255931), (3, 275562, 275614), (3, 295245, 295297), (3, 177147, 177199), (3, 236196, 236248), (3, 295245, 295297), (3, 177147, 177199), (5, 187500, 187552), (5, 203125, 203177), (5, 218750, 218802), (5, 234375, 234427), (5, 234375, 234427), (5, 312500, 312552), (7, 184877, 184929), (7, 201684, 201736), (7, 218491, 218543), (7, 235298, 235350), (7, 252105, 252157), (7, 235298, 235350), (11, 190333, 190385), (11, 204974, 205026), (11, 219615, 219667), (11, 322102, 322154), (13, 199927, 199979), (13, 228488, 228540), (13, 257049, 257101), (13, 285610, 285662), (13, 314171, 314223), (13, 342732, 342784), (17, 250563, 250615), (17, 334084, 334136), (19, 260642, 260694), (23, 182505, 182557), (23, 279841, 279893), (29, 195112, 195164), (29, 219501, 219553), (29, 243890, 243942), (29, 268279, 268331), (29, 292668, 292720), (29, 317057, 317109), (29, 341446, 341498), (31, 178746, 178798), (31, 208537, 208589), (31, 238328, 238380), (31, 268119, 268171), (31, 297910, 297962), (31, 327701, 327753), (37, 202612, 202664), (37, 253265, 253317), (37, 303918, 303970), (41, 206763, 206815), (41, 275684, 275736), (41, 344605, 344657), (43, 238521, 238573), (43, 318028, 318080), (47, 207646, 207698), (47, 311469, 311521)]

def row053_layer006_block000 : List ColouredInterval :=
  [(2, 180224, 180276), (2, 196608, 196660), (2, 212992, 213044), (2, 229376, 229428), (2, 245760, 245812), (2, 196608, 196660), (2, 229376, 229428), (2, 262144, 262196), (2, 294912, 294964), (2, 327680, 327732), (2, 196608, 196660), (2, 262144, 262196), (2, 327680, 327732), (2, 262144, 262196), (2, 262144, 262196), (3, 177147, 177199)]

def row053_layer006_block001 : List ColouredInterval :=
  [(3, 196830, 196882), (3, 216513, 216565), (3, 236196, 236248), (3, 255879, 255931), (3, 275562, 275614), (3, 295245, 295297), (3, 177147, 177199), (3, 236196, 236248), (3, 295245, 295297), (3, 177147, 177199), (5, 187500, 187552), (5, 203125, 203177), (5, 218750, 218802), (5, 234375, 234427), (5, 234375, 234427), (5, 312500, 312552)]

def row053_layer006_block002 : List ColouredInterval :=
  [(7, 184877, 184929), (7, 201684, 201736), (7, 218491, 218543), (7, 235298, 235350), (7, 252105, 252157), (7, 235298, 235350), (11, 190333, 190385), (11, 204974, 205026), (11, 219615, 219667), (11, 322102, 322154), (13, 199927, 199979), (13, 228488, 228540), (13, 257049, 257101), (13, 285610, 285662), (13, 314171, 314223), (13, 342732, 342784)]

def row053_layer006_block003 : List ColouredInterval :=
  [(17, 250563, 250615), (17, 334084, 334136), (19, 260642, 260694), (23, 182505, 182557), (23, 279841, 279893), (29, 195112, 195164), (29, 219501, 219553), (29, 243890, 243942), (29, 268279, 268331), (29, 292668, 292720), (29, 317057, 317109), (29, 341446, 341498), (31, 178746, 178798), (31, 208537, 208589), (31, 238328, 238380), (31, 268119, 268171)]

def row053_layer006_block004 : List ColouredInterval :=
  [(31, 297910, 297962), (31, 327701, 327753), (37, 202612, 202664), (37, 253265, 253317), (37, 303918, 303970), (41, 206763, 206815), (41, 275684, 275736), (41, 344605, 344657), (43, 238521, 238573), (43, 318028, 318080), (47, 207646, 207698), (47, 311469, 311521)]

def row053_layer006_chunks : List (List ColouredInterval) :=
  [row053_layer006_block000, row053_layer006_block001, row053_layer006_block002, row053_layer006_block003, row053_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_arithmetic : LayerArithmeticValid row053.height { lower := 176384, upper := 352768, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_enumeration :
    activePowerIntervalList 53 15 176384 352768 = row053_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_pairs000 :
    row053_layer006_block000.all (fun I => row053_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_pairs001 :
    row053_layer006_block001.all (fun I => row053_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_pairs002 :
    row053_layer006_block002.all (fun I => row053_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_pairs003 :
    row053_layer006_block003.all (fun I => row053_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_pairs004 :
    row053_layer006_block004.all (fun I => row053_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row053_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_chunks_eq : row053_layer006_chunks.flatten = row053_layer006_intervals := by
  rfl

theorem row053_layer006_pairs : pairCoverCheck row053_layer006_intervals row053_bounds = true := by
  apply pairCoverCheck_of_chunks row053_layer006_chunks_eq
  intro block hblock
  simp only [row053_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row053_layer006_pairs000
  · exact row053_layer006_pairs001
  · exact row053_layer006_pairs002
  · exact row053_layer006_pairs003
  · exact row053_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer006_checked :
    coverLayerCheck row053.height row053.goods { lower := 176384, upper := 352768, M := 15 } = true := by
  exact coverLayerCheck_of_parts row053_layer006_arithmetic row053_layer006_enumeration row053_bounds_eq row053_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer007_checked :
    coverLayerCheck row053.height row053.goods { lower := 352768, upper := 705536, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer008_checked :
    coverLayerCheck row053.height row053.goods { lower := 705536, upper := 1411072, M := 12 } = true := by
  decide +kernel

theorem row053_layer009_checked :
    coverLayerCheck row053.height row053.goods { lower := 1411072, upper := 2822144, M := 11 } = true := by
  decide +kernel

theorem row053_layer010_checked :
    coverLayerCheck row053.height row053.goods { lower := 2822144, upper := 5644288, M := 10 } = true := by
  decide +kernel

theorem row053_layer011_checked :
    coverLayerCheck row053.height row053.goods { lower := 5644288, upper := 11288576, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer012_checked :
    coverLayerCheck row053.height row053.goods { lower := 11288576, upper := 22577152, M := 8 } = true := by
  decide +kernel

theorem row053_layer013_checked :
    coverLayerCheck row053.height row053.goods { lower := 22577152, upper := 45154304, M := 7 } = true := by
  decide +kernel

theorem row053_layer014_checked :
    coverLayerCheck row053.height row053.goods { lower := 45154304, upper := 90308608, M := 6 } = true := by
  decide +kernel

theorem row053_layer015_checked :
    coverLayerCheck row053.height row053.goods { lower := 90308608, upper := 180617216, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer016_checked :
    coverLayerCheck row053.height row053.goods { lower := 180617216, upper := 361234432, M := 5 } = true := by
  decide +kernel

theorem row053_layer017_checked :
    coverLayerCheck row053.height row053.goods { lower := 361234432, upper := 722468864, M := 5 } = true := by
  decide +kernel

theorem row053_layer018_checked :
    coverLayerCheck row053.height row053.goods { lower := 722468864, upper := 1444937728, M := 4 } = true := by
  decide +kernel

theorem row053_layer019_checked :
    coverLayerCheck row053.height row053.goods { lower := 1444937728, upper := 2889875456, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer020_checked :
    coverLayerCheck row053.height row053.goods { lower := 2889875456, upper := 5779750912, M := 3 } = true := by
  decide +kernel

theorem row053_layer021_checked :
    coverLayerCheck row053.height row053.goods { lower := 5779750912, upper := 11559501824, M := 3 } = true := by
  decide +kernel

theorem row053_layer022_checked :
    coverLayerCheck row053.height row053.goods { lower := 11559501824, upper := 23119003648, M := 3 } = true := by
  decide +kernel

theorem row053_layer023_checked :
    coverLayerCheck row053.height row053.goods { lower := 23119003648, upper := 46238007296, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer024_checked :
    coverLayerCheck row053.height row053.goods { lower := 46238007296, upper := 92476014592, M := 2 } = true := by
  decide +kernel

theorem row053_layer025_checked :
    coverLayerCheck row053.height row053.goods { lower := 92476014592, upper := 184952029184, M := 2 } = true := by
  decide +kernel

theorem row053_layer026_checked :
    coverLayerCheck row053.height row053.goods { lower := 184952029184, upper := 369904058368, M := 2 } = true := by
  decide +kernel

theorem row053_layer027_checked :
    coverLayerCheck row053.height row053.goods { lower := 369904058368, upper := 739808116736, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer028_checked :
    coverLayerCheck row053.height row053.goods { lower := 739808116736, upper := 1479616233472, M := 2 } = true := by
  decide +kernel

theorem row053_layer029_checked :
    coverLayerCheck row053.height row053.goods { lower := 1479616233472, upper := 2959232466944, M := 2 } = true := by
  decide +kernel

theorem row053_layer030_checked :
    coverLayerCheck row053.height row053.goods { lower := 2959232466944, upper := 5918464933888, M := 1 } = true := by
  decide +kernel

theorem row053_layer031_checked :
    coverLayerCheck row053.height row053.goods { lower := 5918464933888, upper := 10000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layers_checked :
    row053.layers.all (coverLayerCheck row053.height row053.goods) = true := by
  change row053_layers.all (coverLayerCheck row053.height row053.goods) = true
  simp only [row053_layers, List.all_cons, List.all_nil,
    row053_layer000_checked,
    row053_layer001_checked,
    row053_layer002_checked,
    row053_layer003_checked,
    row053_layer004_checked,
    row053_layer005_checked,
    row053_layer006_checked,
    row053_layer007_checked,
    row053_layer008_checked,
    row053_layer009_checked,
    row053_layer010_checked,
    row053_layer011_checked,
    row053_layer012_checked,
    row053_layer013_checked,
    row053_layer014_checked,
    row053_layer015_checked,
    row053_layer016_checked,
    row053_layer017_checked,
    row053_layer018_checked,
    row053_layer019_checked,
    row053_layer020_checked,
    row053_layer021_checked,
    row053_layer022_checked,
    row053_layer023_checked,
    row053_layer024_checked,
    row053_layer025_checked,
    row053_layer026_checked,
    row053_layer027_checked,
    row053_layer028_checked,
    row053_layer029_checked,
    row053_layer030_checked,
    row053_layer031_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_checked : finiteCoverRowCheck row053 = true := by
  simp only [finiteCoverRowCheck, row053_registered, row053_goods_checked,
    row053_small_checked, row053_layerCover_checked, row053_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i053 :
    ∀ n j : ℕ, 1 ≤ 53 ∧ 53 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 53 ≤ p ∧ p ∣ Nat.choose n 53 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row053_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i053
