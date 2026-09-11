import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037J32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037J32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer003_pairs003 :
    row037_layer003_block003.all (fun I => row037_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer003_pairs004 :
    row037_layer003_block004.all (fun I => row037_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer003_pairs005 :
    row037_layer003_block005.all (fun I => row037_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer003_pairs006 :
    row037_layer003_block006.all (fun I => row037_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer003_chunks_eq : row037_layer003_chunks.flatten = row037_layer003_intervals := by
  rfl

theorem row037_layer003_pairs : pairCoverCheck row037_layer003_intervals row037_bounds = true := by
  apply pairCoverCheck_of_chunks row037_layer003_chunks_eq
  intro block hblock
  simp only [row037_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row037_layer003_pairs000
  · exact row037_layer003_pairs001
  · exact row037_layer003_pairs002
  · exact row037_layer003_pairs003
  · exact row037_layer003_pairs004
  · exact row037_layer003_pairs005
  · exact row037_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer003_checked :
    coverLayerCheck row037.height row037.goods { lower := 10656, upper := 21312, M := 24 } = true := by
  exact coverLayerCheck_of_parts row037_layer003_arithmetic row037_layer003_enumeration row037_bounds_eq row037_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer004_intervals : List ColouredInterval :=
  [(2, 21504, 21540), (2, 22528, 22564), (2, 23552, 23588), (2, 22528, 22564), (2, 24576, 24612), (2, 26624, 26660), (2, 28672, 28708), (2, 30720, 30756), (2, 32768, 32804), (2, 34816, 34852), (2, 36864, 36900), (2, 38912, 38948), (2, 40960, 40996), (2, 24576, 24612), (2, 28672, 28708), (2, 32768, 32804), (2, 36864, 36900), (2, 40960, 40996), (2, 24576, 24612), (2, 32768, 32804), (2, 40960, 40996), (2, 32768, 32804), (2, 32768, 32804), (3, 21870, 21906), (3, 24057, 24093), (3, 26244, 26280), (3, 28431, 28467), (3, 30618, 30654), (3, 32805, 32841), (3, 34992, 35028), (3, 37179, 37215), (3, 39366, 39402), (3, 41553, 41589), (3, 26244, 26280), (3, 32805, 32841), (3, 39366, 39402), (3, 39366, 39402), (5, 21875, 21911), (5, 25000, 25036), (5, 28125, 28161), (5, 31250, 31286), (5, 34375, 34411), (5, 37500, 37536), (5, 40625, 40661), (5, 31250, 31286), (7, 21609, 21645), (7, 24010, 24046), (7, 26411, 26447), (7, 28812, 28848), (7, 31213, 31249), (7, 33614, 33650), (7, 36015, 36051), (7, 38416, 38452), (7, 40817, 40853), (7, 33614, 33650), (11, 21312, 21332), (11, 22627, 22663), (11, 23958, 23994), (11, 25289, 25325), (11, 26620, 26656), (11, 27951, 27987), (11, 29282, 29318), (11, 30613, 30649), (11, 29282, 29318), (13, 21970, 22006), (13, 24167, 24203), (13, 26364, 26400), (13, 28561, 28597), (13, 30758, 30794), (13, 32955, 32991), (13, 35152, 35188), (13, 37349, 37385), (13, 39546, 39582), (13, 41743, 41779), (13, 28561, 28597), (17, 24565, 24601), (17, 29478, 29514), (17, 34391, 34427), (17, 39304, 39340), (19, 27436, 27472), (19, 34295, 34331), (19, 41154, 41190), (23, 24334, 24370), (23, 36501, 36537), (29, 24389, 24425), (31, 22103, 22139), (31, 29791, 29827)]

def row037_layer004_block000 : List ColouredInterval :=
  [(2, 21504, 21540), (2, 22528, 22564), (2, 23552, 23588), (2, 22528, 22564), (2, 24576, 24612), (2, 26624, 26660), (2, 28672, 28708), (2, 30720, 30756), (2, 32768, 32804), (2, 34816, 34852), (2, 36864, 36900), (2, 38912, 38948), (2, 40960, 40996), (2, 24576, 24612), (2, 28672, 28708), (2, 32768, 32804)]

def row037_layer004_block001 : List ColouredInterval :=
  [(2, 36864, 36900), (2, 40960, 40996), (2, 24576, 24612), (2, 32768, 32804), (2, 40960, 40996), (2, 32768, 32804), (2, 32768, 32804), (3, 21870, 21906), (3, 24057, 24093), (3, 26244, 26280), (3, 28431, 28467), (3, 30618, 30654), (3, 32805, 32841), (3, 34992, 35028), (3, 37179, 37215), (3, 39366, 39402)]

def row037_layer004_block002 : List ColouredInterval :=
  [(3, 41553, 41589), (3, 26244, 26280), (3, 32805, 32841), (3, 39366, 39402), (3, 39366, 39402), (5, 21875, 21911), (5, 25000, 25036), (5, 28125, 28161), (5, 31250, 31286), (5, 34375, 34411), (5, 37500, 37536), (5, 40625, 40661), (5, 31250, 31286), (7, 21609, 21645), (7, 24010, 24046), (7, 26411, 26447)]

def row037_layer004_block003 : List ColouredInterval :=
  [(7, 28812, 28848), (7, 31213, 31249), (7, 33614, 33650), (7, 36015, 36051), (7, 38416, 38452), (7, 40817, 40853), (7, 33614, 33650), (11, 21312, 21332), (11, 22627, 22663), (11, 23958, 23994), (11, 25289, 25325), (11, 26620, 26656), (11, 27951, 27987), (11, 29282, 29318), (11, 30613, 30649), (11, 29282, 29318)]

def row037_layer004_block004 : List ColouredInterval :=
  [(13, 21970, 22006), (13, 24167, 24203), (13, 26364, 26400), (13, 28561, 28597), (13, 30758, 30794), (13, 32955, 32991), (13, 35152, 35188), (13, 37349, 37385), (13, 39546, 39582), (13, 41743, 41779), (13, 28561, 28597), (17, 24565, 24601), (17, 29478, 29514), (17, 34391, 34427), (17, 39304, 39340), (19, 27436, 27472)]

def row037_layer004_block005 : List ColouredInterval :=
  [(19, 34295, 34331), (19, 41154, 41190), (23, 24334, 24370), (23, 36501, 36537), (29, 24389, 24425), (31, 22103, 22139), (31, 29791, 29827)]

def row037_layer004_chunks : List (List ColouredInterval) :=
  [row037_layer004_block000, row037_layer004_block001, row037_layer004_block002, row037_layer004_block003, row037_layer004_block004, row037_layer004_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_arithmetic : LayerArithmeticValid row037.height { lower := 21312, upper := 42624, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_enumeration :
    activePowerIntervalList 37 23 21312 42624 = row037_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_pairs000 :
    row037_layer004_block000.all (fun I => row037_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_pairs001 :
    row037_layer004_block001.all (fun I => row037_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_pairs002 :
    row037_layer004_block002.all (fun I => row037_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_pairs003 :
    row037_layer004_block003.all (fun I => row037_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_pairs004 :
    row037_layer004_block004.all (fun I => row037_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_pairs005 :
    row037_layer004_block005.all (fun I => row037_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_chunks_eq : row037_layer004_chunks.flatten = row037_layer004_intervals := by
  rfl

theorem row037_layer004_pairs : pairCoverCheck row037_layer004_intervals row037_bounds = true := by
  apply pairCoverCheck_of_chunks row037_layer004_chunks_eq
  intro block hblock
  simp only [row037_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row037_layer004_pairs000
  · exact row037_layer004_pairs001
  · exact row037_layer004_pairs002
  · exact row037_layer004_pairs003
  · exact row037_layer004_pairs004
  · exact row037_layer004_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_checked :
    coverLayerCheck row037.height row037.goods { lower := 21312, upper := 42624, M := 23 } = true := by
  exact coverLayerCheck_of_parts row037_layer004_arithmetic row037_layer004_enumeration row037_bounds_eq row037_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer005_intervals : List ColouredInterval :=
  [(2, 43008, 43044), (2, 45056, 45092), (2, 49152, 49188), (2, 53248, 53284), (2, 57344, 57380), (2, 61440, 61476), (2, 65536, 65572), (2, 69632, 69668), (2, 73728, 73764), (2, 77824, 77860), (2, 81920, 81956), (2, 49152, 49188), (2, 57344, 57380), (2, 65536, 65572), (2, 73728, 73764), (2, 81920, 81956), (2, 49152, 49188), (2, 65536, 65572), (2, 81920, 81956), (2, 65536, 65572), (2, 65536, 65572), (3, 43740, 43776), (3, 45927, 45963), (3, 45927, 45963), (3, 52488, 52524), (3, 59049, 59085), (3, 65610, 65646), (3, 72171, 72207), (3, 78732, 78768), (3, 59049, 59085), (3, 78732, 78768), (3, 59049, 59085), (5, 43750, 43786), (5, 46875, 46911), (5, 50000, 50036), (5, 53125, 53161), (5, 56250, 56286), (5, 59375, 59411), (5, 62500, 62536), (5, 65625, 65661), (5, 46875, 46911), (5, 62500, 62536), (5, 78125, 78161), (5, 78125, 78161), (7, 43218, 43254), (7, 45619, 45655), (7, 48020, 48056), (7, 50421, 50457), (7, 50421, 50457), (7, 67228, 67264), (7, 84035, 84071), (11, 43923, 43959), (11, 58564, 58600), (11, 73205, 73241), (13, 43940, 43976), (13, 46137, 46173), (13, 57122, 57158), (17, 44217, 44253), (17, 49130, 49166), (17, 54043, 54079), (17, 58956, 58992), (17, 63869, 63905), (17, 68782, 68818), (17, 73695, 73731), (17, 78608, 78644), (17, 83521, 83557), (17, 83521, 83557), (19, 48013, 48049), (19, 54872, 54908), (19, 61731, 61767), (19, 68590, 68626), (19, 75449, 75485), (19, 82308, 82344), (23, 48668, 48704), (23, 60835, 60871), (23, 73002, 73038), (23, 85169, 85205), (29, 48778, 48814), (29, 73167, 73203), (31, 59582, 59618)]

def row037_layer005_block000 : List ColouredInterval :=
  [(2, 43008, 43044), (2, 45056, 45092), (2, 49152, 49188), (2, 53248, 53284), (2, 57344, 57380), (2, 61440, 61476), (2, 65536, 65572), (2, 69632, 69668), (2, 73728, 73764), (2, 77824, 77860), (2, 81920, 81956), (2, 49152, 49188), (2, 57344, 57380), (2, 65536, 65572), (2, 73728, 73764), (2, 81920, 81956)]

def row037_layer005_block001 : List ColouredInterval :=
  [(2, 49152, 49188), (2, 65536, 65572), (2, 81920, 81956), (2, 65536, 65572), (2, 65536, 65572), (3, 43740, 43776), (3, 45927, 45963), (3, 45927, 45963), (3, 52488, 52524), (3, 59049, 59085), (3, 65610, 65646), (3, 72171, 72207), (3, 78732, 78768), (3, 59049, 59085), (3, 78732, 78768), (3, 59049, 59085)]

def row037_layer005_block002 : List ColouredInterval :=
  [(5, 43750, 43786), (5, 46875, 46911), (5, 50000, 50036), (5, 53125, 53161), (5, 56250, 56286), (5, 59375, 59411), (5, 62500, 62536), (5, 65625, 65661), (5, 46875, 46911), (5, 62500, 62536), (5, 78125, 78161), (5, 78125, 78161), (7, 43218, 43254), (7, 45619, 45655), (7, 48020, 48056), (7, 50421, 50457)]

def row037_layer005_block003 : List ColouredInterval :=
  [(7, 50421, 50457), (7, 67228, 67264), (7, 84035, 84071), (11, 43923, 43959), (11, 58564, 58600), (11, 73205, 73241), (13, 43940, 43976), (13, 46137, 46173), (13, 57122, 57158), (17, 44217, 44253), (17, 49130, 49166), (17, 54043, 54079), (17, 58956, 58992), (17, 63869, 63905), (17, 68782, 68818), (17, 73695, 73731)]

def row037_layer005_block004 : List ColouredInterval :=
  [(17, 78608, 78644), (17, 83521, 83557), (17, 83521, 83557), (19, 48013, 48049), (19, 54872, 54908), (19, 61731, 61767), (19, 68590, 68626), (19, 75449, 75485), (19, 82308, 82344), (23, 48668, 48704), (23, 60835, 60871), (23, 73002, 73038), (23, 85169, 85205), (29, 48778, 48814), (29, 73167, 73203), (31, 59582, 59618)]

def row037_layer005_chunks : List (List ColouredInterval) :=
  [row037_layer005_block000, row037_layer005_block001, row037_layer005_block002, row037_layer005_block003, row037_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_arithmetic : LayerArithmeticValid row037.height { lower := 42624, upper := 85248, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_enumeration :
    activePowerIntervalList 37 21 42624 85248 = row037_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_pairs000 :
    row037_layer005_block000.all (fun I => row037_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_pairs001 :
    row037_layer005_block001.all (fun I => row037_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_pairs002 :
    row037_layer005_block002.all (fun I => row037_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_pairs003 :
    row037_layer005_block003.all (fun I => row037_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_pairs004 :
    row037_layer005_block004.all (fun I => row037_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_chunks_eq : row037_layer005_chunks.flatten = row037_layer005_intervals := by
  rfl

theorem row037_layer005_pairs : pairCoverCheck row037_layer005_intervals row037_bounds = true := by
  apply pairCoverCheck_of_chunks row037_layer005_chunks_eq
  intro block hblock
  simp only [row037_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row037_layer005_pairs000
  · exact row037_layer005_pairs001
  · exact row037_layer005_pairs002
  · exact row037_layer005_pairs003
  · exact row037_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer005_checked :
    coverLayerCheck row037.height row037.goods { lower := 42624, upper := 85248, M := 21 } = true := by
  exact coverLayerCheck_of_parts row037_layer005_arithmetic row037_layer005_enumeration row037_bounds_eq row037_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer006_intervals : List ColouredInterval :=
  [(2, 90112, 90148), (2, 98304, 98340), (2, 106496, 106532), (2, 114688, 114724), (2, 122880, 122916), (2, 131072, 131108), (2, 139264, 139300), (2, 147456, 147492), (2, 155648, 155684), (2, 163840, 163876), (2, 98304, 98340), (2, 114688, 114724), (2, 131072, 131108), (2, 147456, 147492), (2, 163840, 163876), (2, 98304, 98340), (2, 131072, 131108), (2, 163840, 163876), (2, 131072, 131108), (2, 131072, 131108), (3, 85293, 85329), (3, 91854, 91890), (3, 98415, 98451), (3, 104976, 105012), (3, 111537, 111573), (3, 118098, 118134), (3, 124659, 124695), (3, 131220, 131256), (3, 98415, 98451), (3, 118098, 118134), (3, 137781, 137817), (3, 157464, 157500), (3, 118098, 118134), (5, 93750, 93786), (5, 109375, 109411), (5, 125000, 125036), (5, 140625, 140661), (5, 156250, 156286), (5, 156250, 156286), (7, 100842, 100878), (7, 117649, 117685), (7, 134456, 134492), (7, 151263, 151299), (7, 168070, 168106), (7, 117649, 117685), (11, 87846, 87882), (11, 102487, 102523), (11, 117128, 117164), (11, 131769, 131805), (11, 146410, 146446), (11, 161051, 161087), (11, 161051, 161087), (13, 85683, 85719), (13, 114244, 114280), (13, 142805, 142841), (17, 88434, 88470), (17, 93347, 93383), (17, 98260, 98296), (17, 167042, 167078), (19, 89167, 89203), (19, 96026, 96062), (19, 102885, 102921), (19, 109744, 109780), (19, 116603, 116639), (19, 123462, 123498), (19, 130321, 130357), (19, 137180, 137216), (19, 130321, 130357), (23, 97336, 97372), (23, 109503, 109539), (23, 121670, 121706), (23, 133837, 133873), (23, 146004, 146040), (23, 158171, 158207), (23, 170338, 170374), (29, 97556, 97592), (29, 121945, 121981), (29, 146334, 146370), (31, 89373, 89409), (31, 119164, 119200), (31, 148955, 148991)]

def row037_layer006_block000 : List ColouredInterval :=
  [(2, 90112, 90148), (2, 98304, 98340), (2, 106496, 106532), (2, 114688, 114724), (2, 122880, 122916), (2, 131072, 131108), (2, 139264, 139300), (2, 147456, 147492), (2, 155648, 155684), (2, 163840, 163876), (2, 98304, 98340), (2, 114688, 114724), (2, 131072, 131108), (2, 147456, 147492), (2, 163840, 163876), (2, 98304, 98340)]

def row037_layer006_block001 : List ColouredInterval :=
  [(2, 131072, 131108), (2, 163840, 163876), (2, 131072, 131108), (2, 131072, 131108), (3, 85293, 85329), (3, 91854, 91890), (3, 98415, 98451), (3, 104976, 105012), (3, 111537, 111573), (3, 118098, 118134), (3, 124659, 124695), (3, 131220, 131256), (3, 98415, 98451), (3, 118098, 118134), (3, 137781, 137817), (3, 157464, 157500)]

def row037_layer006_block002 : List ColouredInterval :=
  [(3, 118098, 118134), (5, 93750, 93786), (5, 109375, 109411), (5, 125000, 125036), (5, 140625, 140661), (5, 156250, 156286), (5, 156250, 156286), (7, 100842, 100878), (7, 117649, 117685), (7, 134456, 134492), (7, 151263, 151299), (7, 168070, 168106), (7, 117649, 117685), (11, 87846, 87882), (11, 102487, 102523), (11, 117128, 117164)]

def row037_layer006_block003 : List ColouredInterval :=
  [(11, 131769, 131805), (11, 146410, 146446), (11, 161051, 161087), (11, 161051, 161087), (13, 85683, 85719), (13, 114244, 114280), (13, 142805, 142841), (17, 88434, 88470), (17, 93347, 93383), (17, 98260, 98296), (17, 167042, 167078), (19, 89167, 89203), (19, 96026, 96062), (19, 102885, 102921), (19, 109744, 109780), (19, 116603, 116639)]

def row037_layer006_block004 : List ColouredInterval :=
  [(19, 123462, 123498), (19, 130321, 130357), (19, 137180, 137216), (19, 130321, 130357), (23, 97336, 97372), (23, 109503, 109539), (23, 121670, 121706), (23, 133837, 133873), (23, 146004, 146040), (23, 158171, 158207), (23, 170338, 170374), (29, 97556, 97592), (29, 121945, 121981), (29, 146334, 146370), (31, 89373, 89409), (31, 119164, 119200)]

def row037_layer006_block005 : List ColouredInterval :=
  [(31, 148955, 148991)]

def row037_layer006_chunks : List (List ColouredInterval) :=
  [row037_layer006_block000, row037_layer006_block001, row037_layer006_block002, row037_layer006_block003, row037_layer006_block004, row037_layer006_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_arithmetic : LayerArithmeticValid row037.height { lower := 85248, upper := 170496, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_enumeration :
    activePowerIntervalList 37 20 85248 170496 = row037_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_pairs000 :
    row037_layer006_block000.all (fun I => row037_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_pairs000
