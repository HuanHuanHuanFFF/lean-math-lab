import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_pairs002 :
    row051_layer003_block002.all (fun I => row051_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_pairs003 :
    row051_layer003_block003.all (fun I => row051_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_pairs004 :
    row051_layer003_block004.all (fun I => row051_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_pairs005 :
    row051_layer003_block005.all (fun I => row051_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_pairs006 :
    row051_layer003_block006.all (fun I => row051_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_pairs007 :
    row051_layer003_block007.all (fun I => row051_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_chunks_eq : row051_layer003_chunks.flatten = row051_layer003_intervals := by
  rfl

theorem row051_layer003_pairs : pairCoverCheck row051_layer003_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer003_chunks_eq
  intro block hblock
  simp only [row051_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row051_layer003_pairs000
  · exact row051_layer003_pairs001
  · exact row051_layer003_pairs002
  · exact row051_layer003_pairs003
  · exact row051_layer003_pairs004
  · exact row051_layer003_pairs005
  · exact row051_layer003_pairs006
  · exact row051_layer003_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_checked :
    coverLayerCheck row051.height row051.goods { lower := 20400, upper := 40800, M := 26 } = true := by
  exact coverLayerCheck_of_parts row051_layer003_arithmetic row051_layer003_enumeration row051_bounds_eq row051_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer004_intervals : List ColouredInterval :=
  [(2, 40960, 41010), (2, 43008, 43058), (2, 45056, 45106), (2, 47104, 47154), (2, 49152, 49202), (2, 40960, 41010), (2, 45056, 45106), (2, 49152, 49202), (2, 53248, 53298), (2, 57344, 57394), (2, 61440, 61490), (2, 65536, 65586), (2, 69632, 69682), (2, 73728, 73778), (2, 77824, 77874), (2, 40960, 41010), (2, 49152, 49202), (2, 57344, 57394), (2, 65536, 65586), (2, 73728, 73778), (2, 49152, 49202), (2, 65536, 65586), (2, 65536, 65586), (2, 65536, 65586), (3, 45927, 45977), (3, 52488, 52538), (3, 59049, 59099), (3, 78732, 78782), (3, 59049, 59099), (5, 43750, 43800), (5, 46875, 46925), (5, 50000, 50050), (5, 53125, 53175), (5, 56250, 56300), (5, 59375, 59425), (5, 62500, 62550), (5, 65625, 65675), (5, 68750, 68800), (5, 71875, 71925), (5, 75000, 75050), (5, 46875, 46925), (5, 62500, 62550), (5, 78125, 78175), (5, 78125, 78175), (7, 40817, 40867), (7, 43218, 43268), (7, 45619, 45669), (7, 48020, 48070), (7, 50421, 50471), (7, 52822, 52872), (7, 55223, 55273), (7, 57624, 57674), (7, 50421, 50471), (7, 67228, 67278), (11, 43923, 43973), (11, 58564, 58614), (11, 73205, 73255), (13, 41743, 41793), (13, 43940, 43990), (13, 46137, 46187), (13, 48334, 48384), (13, 50531, 50581), (13, 52728, 52778), (13, 57122, 57172), (19, 41154, 41204), (19, 48013, 48063), (19, 54872, 54922), (19, 61731, 61781), (19, 68590, 68640), (19, 75449, 75499), (23, 48668, 48718), (23, 60835, 60885), (23, 73002, 73052), (29, 48778, 48828), (29, 73167, 73217), (31, 59582, 59632), (37, 50653, 50703), (41, 68921, 68971), (43, 42527, 42577), (43, 44376, 44426), (43, 79507, 79557), (47, 41971, 42021), (47, 44180, 44230), (47, 46389, 46439), (47, 48598, 48648), (47, 50807, 50857), (47, 53016, 53066)]

def row051_layer004_block000 : List ColouredInterval :=
  [(2, 40960, 41010), (2, 43008, 43058), (2, 45056, 45106), (2, 47104, 47154), (2, 49152, 49202), (2, 40960, 41010), (2, 45056, 45106), (2, 49152, 49202), (2, 53248, 53298), (2, 57344, 57394), (2, 61440, 61490), (2, 65536, 65586), (2, 69632, 69682), (2, 73728, 73778), (2, 77824, 77874), (2, 40960, 41010)]

def row051_layer004_block001 : List ColouredInterval :=
  [(2, 49152, 49202), (2, 57344, 57394), (2, 65536, 65586), (2, 73728, 73778), (2, 49152, 49202), (2, 65536, 65586), (2, 65536, 65586), (2, 65536, 65586), (3, 45927, 45977), (3, 52488, 52538), (3, 59049, 59099), (3, 78732, 78782), (3, 59049, 59099), (5, 43750, 43800), (5, 46875, 46925), (5, 50000, 50050)]

def row051_layer004_block002 : List ColouredInterval :=
  [(5, 53125, 53175), (5, 56250, 56300), (5, 59375, 59425), (5, 62500, 62550), (5, 65625, 65675), (5, 68750, 68800), (5, 71875, 71925), (5, 75000, 75050), (5, 46875, 46925), (5, 62500, 62550), (5, 78125, 78175), (5, 78125, 78175), (7, 40817, 40867), (7, 43218, 43268), (7, 45619, 45669), (7, 48020, 48070)]

def row051_layer004_block003 : List ColouredInterval :=
  [(7, 50421, 50471), (7, 52822, 52872), (7, 55223, 55273), (7, 57624, 57674), (7, 50421, 50471), (7, 67228, 67278), (11, 43923, 43973), (11, 58564, 58614), (11, 73205, 73255), (13, 41743, 41793), (13, 43940, 43990), (13, 46137, 46187), (13, 48334, 48384), (13, 50531, 50581), (13, 52728, 52778), (13, 57122, 57172)]

def row051_layer004_block004 : List ColouredInterval :=
  [(19, 41154, 41204), (19, 48013, 48063), (19, 54872, 54922), (19, 61731, 61781), (19, 68590, 68640), (19, 75449, 75499), (23, 48668, 48718), (23, 60835, 60885), (23, 73002, 73052), (29, 48778, 48828), (29, 73167, 73217), (31, 59582, 59632), (37, 50653, 50703), (41, 68921, 68971), (43, 42527, 42577), (43, 44376, 44426)]

def row051_layer004_block005 : List ColouredInterval :=
  [(43, 79507, 79557), (47, 41971, 42021), (47, 44180, 44230), (47, 46389, 46439), (47, 48598, 48648), (47, 50807, 50857), (47, 53016, 53066)]

def row051_layer004_chunks : List (List ColouredInterval) :=
  [row051_layer004_block000, row051_layer004_block001, row051_layer004_block002, row051_layer004_block003, row051_layer004_block004, row051_layer004_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_arithmetic : LayerArithmeticValid row051.height { lower := 40800, upper := 81600, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_enumeration :
    activePowerIntervalList 51 24 40800 81600 = row051_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_pairs000 :
    row051_layer004_block000.all (fun I => row051_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_pairs001 :
    row051_layer004_block001.all (fun I => row051_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_pairs002 :
    row051_layer004_block002.all (fun I => row051_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_pairs003 :
    row051_layer004_block003.all (fun I => row051_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_pairs004 :
    row051_layer004_block004.all (fun I => row051_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_pairs005 :
    row051_layer004_block005.all (fun I => row051_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_chunks_eq : row051_layer004_chunks.flatten = row051_layer004_intervals := by
  rfl

theorem row051_layer004_pairs : pairCoverCheck row051_layer004_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer004_chunks_eq
  intro block hblock
  simp only [row051_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row051_layer004_pairs000
  · exact row051_layer004_pairs001
  · exact row051_layer004_pairs002
  · exact row051_layer004_pairs003
  · exact row051_layer004_pairs004
  · exact row051_layer004_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer004_checked :
    coverLayerCheck row051.height row051.goods { lower := 40800, upper := 81600, M := 24 } = true := by
  exact coverLayerCheck_of_parts row051_layer004_arithmetic row051_layer004_enumeration row051_bounds_eq row051_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer005_intervals : List ColouredInterval :=
  [(2, 81920, 81970), (2, 86016, 86066), (2, 90112, 90162), (2, 81920, 81970), (2, 90112, 90162), (2, 98304, 98354), (2, 106496, 106546), (2, 114688, 114738), (2, 122880, 122930), (2, 131072, 131122), (2, 139264, 139314), (2, 147456, 147506), (2, 155648, 155698), (2, 81920, 81970), (2, 98304, 98354), (2, 114688, 114738), (2, 131072, 131122), (2, 147456, 147506), (2, 98304, 98354), (2, 131072, 131122), (2, 131072, 131122), (2, 131072, 131122), (3, 98415, 98465), (3, 118098, 118148), (3, 137781, 137831), (3, 118098, 118148), (5, 93750, 93800), (5, 109375, 109425), (5, 125000, 125050), (5, 140625, 140675), (5, 156250, 156300), (5, 156250, 156300), (7, 84035, 84085), (7, 100842, 100892), (7, 117649, 117699), (7, 134456, 134506), (7, 151263, 151313), (7, 117649, 117699), (11, 87846, 87896), (11, 102487, 102537), (11, 117128, 117178), (11, 131769, 131819), (11, 146410, 146460), (11, 161051, 161101), (11, 161051, 161101), (13, 85683, 85733), (13, 114244, 114294), (13, 142805, 142855), (17, 83521, 83571), (19, 82308, 82358), (19, 89167, 89217), (19, 96026, 96076), (19, 102885, 102935), (19, 109744, 109794), (19, 116603, 116653), (19, 123462, 123512), (19, 130321, 130371), (19, 137180, 137230), (19, 144039, 144089), (19, 150898, 150948), (19, 130321, 130371), (23, 85169, 85219), (23, 97336, 97386), (23, 109503, 109553), (23, 121670, 121720), (23, 133837, 133887), (23, 146004, 146054), (23, 158171, 158221), (29, 97556, 97606), (29, 121945, 121995), (29, 146334, 146384), (31, 89373, 89423), (31, 119164, 119214), (31, 148955, 149005), (37, 101306, 101356), (37, 151959, 152009), (41, 137842, 137892), (43, 159014, 159064), (47, 103823, 103873)]

def row051_layer005_block000 : List ColouredInterval :=
  [(2, 81920, 81970), (2, 86016, 86066), (2, 90112, 90162), (2, 81920, 81970), (2, 90112, 90162), (2, 98304, 98354), (2, 106496, 106546), (2, 114688, 114738), (2, 122880, 122930), (2, 131072, 131122), (2, 139264, 139314), (2, 147456, 147506), (2, 155648, 155698), (2, 81920, 81970), (2, 98304, 98354), (2, 114688, 114738)]

def row051_layer005_block001 : List ColouredInterval :=
  [(2, 131072, 131122), (2, 147456, 147506), (2, 98304, 98354), (2, 131072, 131122), (2, 131072, 131122), (2, 131072, 131122), (3, 98415, 98465), (3, 118098, 118148), (3, 137781, 137831), (3, 118098, 118148), (5, 93750, 93800), (5, 109375, 109425), (5, 125000, 125050), (5, 140625, 140675), (5, 156250, 156300), (5, 156250, 156300)]

def row051_layer005_block002 : List ColouredInterval :=
  [(7, 84035, 84085), (7, 100842, 100892), (7, 117649, 117699), (7, 134456, 134506), (7, 151263, 151313), (7, 117649, 117699), (11, 87846, 87896), (11, 102487, 102537), (11, 117128, 117178), (11, 131769, 131819), (11, 146410, 146460), (11, 161051, 161101), (11, 161051, 161101), (13, 85683, 85733), (13, 114244, 114294), (13, 142805, 142855)]

def row051_layer005_block003 : List ColouredInterval :=
  [(17, 83521, 83571), (19, 82308, 82358), (19, 89167, 89217), (19, 96026, 96076), (19, 102885, 102935), (19, 109744, 109794), (19, 116603, 116653), (19, 123462, 123512), (19, 130321, 130371), (19, 137180, 137230), (19, 144039, 144089), (19, 150898, 150948), (19, 130321, 130371), (23, 85169, 85219), (23, 97336, 97386), (23, 109503, 109553)]

def row051_layer005_block004 : List ColouredInterval :=
  [(23, 121670, 121720), (23, 133837, 133887), (23, 146004, 146054), (23, 158171, 158221), (29, 97556, 97606), (29, 121945, 121995), (29, 146334, 146384), (31, 89373, 89423), (31, 119164, 119214), (31, 148955, 149005), (37, 101306, 101356), (37, 151959, 152009), (41, 137842, 137892), (43, 159014, 159064), (47, 103823, 103873)]

def row051_layer005_chunks : List (List ColouredInterval) :=
  [row051_layer005_block000, row051_layer005_block001, row051_layer005_block002, row051_layer005_block003, row051_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_arithmetic : LayerArithmeticValid row051.height { lower := 81600, upper := 163200, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_enumeration :
    activePowerIntervalList 51 22 81600 163200 = row051_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_pairs000 :
    row051_layer005_block000.all (fun I => row051_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_pairs001 :
    row051_layer005_block001.all (fun I => row051_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_pairs002 :
    row051_layer005_block002.all (fun I => row051_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_pairs003 :
    row051_layer005_block003.all (fun I => row051_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_pairs004 :
    row051_layer005_block004.all (fun I => row051_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_chunks_eq : row051_layer005_chunks.flatten = row051_layer005_intervals := by
  rfl

theorem row051_layer005_pairs : pairCoverCheck row051_layer005_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer005_chunks_eq
  intro block hblock
  simp only [row051_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row051_layer005_pairs000
  · exact row051_layer005_pairs001
  · exact row051_layer005_pairs002
  · exact row051_layer005_pairs003
  · exact row051_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer005_checked :
    coverLayerCheck row051.height row051.goods { lower := 81600, upper := 163200, M := 22 } = true := by
  exact coverLayerCheck_of_parts row051_layer005_arithmetic row051_layer005_enumeration row051_bounds_eq row051_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer006_intervals : List ColouredInterval :=
  [(2, 163840, 163890), (2, 172032, 172082), (2, 163840, 163890), (2, 180224, 180274), (2, 196608, 196658), (2, 212992, 213042), (2, 229376, 229426), (2, 245760, 245810), (2, 262144, 262194), (2, 278528, 278578), (2, 294912, 294962), (2, 311296, 311346), (2, 163840, 163890), (2, 196608, 196658), (2, 229376, 229426), (2, 262144, 262194), (2, 294912, 294962), (2, 196608, 196658), (2, 262144, 262194), (2, 262144, 262194), (2, 262144, 262194), (3, 177147, 177197), (3, 236196, 236246), (3, 295245, 295295), (3, 177147, 177197), (5, 171875, 171925), (5, 187500, 187550), (5, 203125, 203175), (5, 218750, 218800), (5, 234375, 234425), (5, 250000, 250050), (5, 265625, 265675), (5, 281250, 281300), (5, 296875, 296925), (5, 312500, 312550), (5, 234375, 234425), (5, 312500, 312550), (7, 168070, 168120), (7, 184877, 184927), (7, 201684, 201734), (7, 218491, 218541), (7, 235298, 235348), (7, 252105, 252155), (7, 268912, 268962), (7, 285719, 285769), (7, 302526, 302576), (7, 319333, 319383), (7, 235298, 235348), (11, 175692, 175742), (11, 190333, 190383), (11, 204974, 205024), (11, 219615, 219665), (11, 234256, 234306), (11, 248897, 248947), (11, 263538, 263588), (11, 278179, 278229), (11, 292820, 292870), (11, 307461, 307511), (11, 322102, 322152), (13, 171366, 171416), (13, 199927, 199977), (13, 228488, 228538), (13, 257049, 257099), (13, 285610, 285660), (13, 314171, 314221), (19, 260642, 260692), (23, 170338, 170388), (23, 182505, 182555), (23, 194672, 194722), (23, 206839, 206889), (23, 219006, 219056), (23, 231173, 231223), (23, 243340, 243390), (23, 255507, 255557), (23, 279841, 279891), (29, 170723, 170773), (29, 195112, 195162), (29, 219501, 219551), (29, 243890, 243940), (29, 268279, 268329), (29, 292668, 292718), (29, 317057, 317107), (31, 178746, 178796), (31, 208537, 208587), (31, 238328, 238378), (31, 268119, 268169), (31, 297910, 297960), (37, 202612, 202662), (37, 253265, 253315), (37, 303918, 303968), (41, 206763, 206813), (41, 275684, 275734), (43, 238521, 238571), (43, 318028, 318078), (47, 207646, 207696), (47, 311469, 311519)]

def row051_layer006_block000 : List ColouredInterval :=
  [(2, 163840, 163890), (2, 172032, 172082), (2, 163840, 163890), (2, 180224, 180274), (2, 196608, 196658), (2, 212992, 213042), (2, 229376, 229426), (2, 245760, 245810), (2, 262144, 262194), (2, 278528, 278578), (2, 294912, 294962), (2, 311296, 311346), (2, 163840, 163890), (2, 196608, 196658), (2, 229376, 229426), (2, 262144, 262194)]

def row051_layer006_block001 : List ColouredInterval :=
  [(2, 294912, 294962), (2, 196608, 196658), (2, 262144, 262194), (2, 262144, 262194), (2, 262144, 262194), (3, 177147, 177197), (3, 236196, 236246), (3, 295245, 295295), (3, 177147, 177197), (5, 171875, 171925), (5, 187500, 187550), (5, 203125, 203175), (5, 218750, 218800), (5, 234375, 234425), (5, 250000, 250050), (5, 265625, 265675)]

def row051_layer006_block002 : List ColouredInterval :=
  [(5, 281250, 281300), (5, 296875, 296925), (5, 312500, 312550), (5, 234375, 234425), (5, 312500, 312550), (7, 168070, 168120), (7, 184877, 184927), (7, 201684, 201734), (7, 218491, 218541), (7, 235298, 235348), (7, 252105, 252155), (7, 268912, 268962), (7, 285719, 285769), (7, 302526, 302576), (7, 319333, 319383), (7, 235298, 235348)]

def row051_layer006_block003 : List ColouredInterval :=
  [(11, 175692, 175742), (11, 190333, 190383), (11, 204974, 205024), (11, 219615, 219665), (11, 234256, 234306), (11, 248897, 248947), (11, 263538, 263588), (11, 278179, 278229), (11, 292820, 292870), (11, 307461, 307511), (11, 322102, 322152), (13, 171366, 171416), (13, 199927, 199977), (13, 228488, 228538), (13, 257049, 257099), (13, 285610, 285660)]

def row051_layer006_block004 : List ColouredInterval :=
  [(13, 314171, 314221), (19, 260642, 260692), (23, 170338, 170388), (23, 182505, 182555), (23, 194672, 194722), (23, 206839, 206889), (23, 219006, 219056), (23, 231173, 231223), (23, 243340, 243390), (23, 255507, 255557), (23, 279841, 279891), (29, 170723, 170773), (29, 195112, 195162), (29, 219501, 219551), (29, 243890, 243940), (29, 268279, 268329)]

def row051_layer006_block005 : List ColouredInterval :=
  [(29, 292668, 292718), (29, 317057, 317107), (31, 178746, 178796), (31, 208537, 208587), (31, 238328, 238378), (31, 268119, 268169), (31, 297910, 297960), (37, 202612, 202662), (37, 253265, 253315), (37, 303918, 303968), (41, 206763, 206813), (41, 275684, 275734), (43, 238521, 238571), (43, 318028, 318078), (47, 207646, 207696), (47, 311469, 311519)]

def row051_layer006_chunks : List (List ColouredInterval) :=
  [row051_layer006_block000, row051_layer006_block001, row051_layer006_block002, row051_layer006_block003, row051_layer006_block004, row051_layer006_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_arithmetic : LayerArithmeticValid row051.height { lower := 163200, upper := 326400, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_enumeration :
    activePowerIntervalList 51 21 163200 326400 = row051_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_pairs000 :
    row051_layer006_block000.all (fun I => row051_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_pairs001 :
    row051_layer006_block001.all (fun I => row051_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_pairs002 :
    row051_layer006_block002.all (fun I => row051_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_pairs003 :
    row051_layer006_block003.all (fun I => row051_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_pairs004 :
    row051_layer006_block004.all (fun I => row051_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_pairs005 :
    row051_layer006_block005.all (fun I => row051_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_chunks_eq : row051_layer006_chunks.flatten = row051_layer006_intervals := by
  rfl

theorem row051_layer006_pairs : pairCoverCheck row051_layer006_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer006_chunks_eq
  intro block hblock
  simp only [row051_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row051_layer006_pairs000
  · exact row051_layer006_pairs001
  · exact row051_layer006_pairs002
  · exact row051_layer006_pairs003
  · exact row051_layer006_pairs004
  · exact row051_layer006_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_checked :
    coverLayerCheck row051.height row051.goods { lower := 163200, upper := 326400, M := 21 } = true := by
  exact coverLayerCheck_of_parts row051_layer006_arithmetic row051_layer006_enumeration row051_bounds_eq row051_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer007_intervals : List ColouredInterval :=
  [(2, 327680, 327730), (2, 360448, 360498), (2, 393216, 393266), (2, 425984, 426034), (2, 458752, 458802), (2, 491520, 491570), (2, 524288, 524338), (2, 557056, 557106), (2, 589824, 589874), (2, 622592, 622642), (2, 327680, 327730), (2, 393216, 393266), (2, 458752, 458802), (2, 524288, 524338), (2, 589824, 589874), (2, 393216, 393266), (2, 524288, 524338), (2, 524288, 524338), (2, 524288, 524338), (3, 354294, 354344), (3, 354294, 354344), (3, 531441, 531491), (3, 531441, 531491), (5, 390625, 390675), (5, 468750, 468800), (5, 546875, 546925), (5, 625000, 625050), (5, 390625, 390675), (7, 352947, 352997), (7, 470596, 470646), (7, 588245, 588295), (11, 483153, 483203), (11, 644204, 644254), (13, 342732, 342782), (13, 371293, 371343), (13, 399854, 399904), (13, 428415, 428465), (13, 456976, 457026), (13, 485537, 485587), (13, 514098, 514148), (13, 542659, 542709), (13, 371293, 371343), (19, 390963, 391013), (19, 521284, 521334), (19, 651605, 651655), (23, 559682, 559732), (29, 341446, 341496), (29, 365835, 365885), (29, 390224, 390274), (29, 414613, 414663), (29, 439002, 439052), (29, 463391, 463441), (31, 327701, 327751), (31, 357492, 357542), (31, 387283, 387333), (31, 417074, 417124), (31, 446865, 446915), (31, 476656, 476706), (31, 506447, 506497), (31, 536238, 536288), (31, 566029, 566079), (37, 354571, 354621), (37, 405224, 405274), (37, 455877, 455927), (37, 506530, 506580), (37, 557183, 557233), (37, 607836, 607886), (41, 344605, 344655), (41, 413526, 413576), (41, 482447, 482497), (41, 551368, 551418), (41, 620289, 620339), (43, 397535, 397585), (43, 477042, 477092), (43, 556549, 556599), (43, 636056, 636106), (47, 415292, 415342), (47, 519115, 519165), (47, 622938, 622988)]

def row051_layer007_block000 : List ColouredInterval :=
  [(2, 327680, 327730), (2, 360448, 360498), (2, 393216, 393266), (2, 425984, 426034), (2, 458752, 458802), (2, 491520, 491570), (2, 524288, 524338), (2, 557056, 557106), (2, 589824, 589874), (2, 622592, 622642), (2, 327680, 327730), (2, 393216, 393266), (2, 458752, 458802), (2, 524288, 524338), (2, 589824, 589874), (2, 393216, 393266)]

def row051_layer007_block001 : List ColouredInterval :=
  [(2, 524288, 524338), (2, 524288, 524338), (2, 524288, 524338), (3, 354294, 354344), (3, 354294, 354344), (3, 531441, 531491), (3, 531441, 531491), (5, 390625, 390675), (5, 468750, 468800), (5, 546875, 546925), (5, 625000, 625050), (5, 390625, 390675), (7, 352947, 352997), (7, 470596, 470646), (7, 588245, 588295), (11, 483153, 483203)]

def row051_layer007_block002 : List ColouredInterval :=
  [(11, 644204, 644254), (13, 342732, 342782), (13, 371293, 371343), (13, 399854, 399904), (13, 428415, 428465), (13, 456976, 457026), (13, 485537, 485587), (13, 514098, 514148), (13, 542659, 542709), (13, 371293, 371343), (19, 390963, 391013), (19, 521284, 521334), (19, 651605, 651655), (23, 559682, 559732), (29, 341446, 341496), (29, 365835, 365885)]

def row051_layer007_block003 : List ColouredInterval :=
  [(29, 390224, 390274), (29, 414613, 414663), (29, 439002, 439052), (29, 463391, 463441), (31, 327701, 327751), (31, 357492, 357542), (31, 387283, 387333), (31, 417074, 417124), (31, 446865, 446915), (31, 476656, 476706), (31, 506447, 506497), (31, 536238, 536288), (31, 566029, 566079), (37, 354571, 354621), (37, 405224, 405274), (37, 455877, 455927)]

def row051_layer007_block004 : List ColouredInterval :=
  [(37, 506530, 506580), (37, 557183, 557233), (37, 607836, 607886), (41, 344605, 344655), (41, 413526, 413576), (41, 482447, 482497), (41, 551368, 551418), (41, 620289, 620339), (43, 397535, 397585), (43, 477042, 477092), (43, 556549, 556599), (43, 636056, 636106), (47, 415292, 415342), (47, 519115, 519165), (47, 622938, 622988)]

def row051_layer007_chunks : List (List ColouredInterval) :=
  [row051_layer007_block000, row051_layer007_block001, row051_layer007_block002, row051_layer007_block003, row051_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_arithmetic : LayerArithmeticValid row051.height { lower := 326400, upper := 652800, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_enumeration :
    activePowerIntervalList 51 19 326400 652800 = row051_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_pairs000 :
    row051_layer007_block000.all (fun I => row051_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_pairs001 :
    row051_layer007_block001.all (fun I => row051_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_pairs002 :
    row051_layer007_block002.all (fun I => row051_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_pairs003 :
    row051_layer007_block003.all (fun I => row051_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_pairs004 :
    row051_layer007_block004.all (fun I => row051_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_chunks_eq : row051_layer007_chunks.flatten = row051_layer007_intervals := by
  rfl

theorem row051_layer007_pairs : pairCoverCheck row051_layer007_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer007_chunks_eq
  intro block hblock
  simp only [row051_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row051_layer007_pairs000
  · exact row051_layer007_pairs001
  · exact row051_layer007_pairs002
  · exact row051_layer007_pairs003
  · exact row051_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_checked :
    coverLayerCheck row051.height row051.goods { lower := 326400, upper := 652800, M := 19 } = true := by
  exact coverLayerCheck_of_parts row051_layer007_arithmetic row051_layer007_enumeration row051_bounds_eq row051_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer008_intervals : List ColouredInterval :=
  [(2, 655360, 655410), (2, 720896, 720946), (2, 786432, 786482), (2, 851968, 852018), (2, 917504, 917554), (2, 983040, 983090), (2, 1048576, 1048626), (2, 1114112, 1114162), (2, 1179648, 1179698), (2, 655360, 655410), (2, 786432, 786482), (2, 917504, 917554), (2, 1048576, 1048626), (2, 1179648, 1179698), (2, 786432, 786482), (2, 1048576, 1048626), (2, 1048576, 1048626), (2, 1048576, 1048626), (3, 708588, 708638), (3, 885735, 885785), (3, 1062882, 1062932), (3, 1062882, 1062932), (5, 703125, 703175), (5, 781250, 781300), (5, 859375, 859425), (5, 937500, 937550), (5, 1015625, 1015675), (5, 1093750, 1093800), (5, 1171875, 1171925), (5, 1250000, 1250050), (5, 781250, 781300), (5, 1171875, 1171925), (7, 705894, 705944), (7, 823543, 823593), (7, 941192, 941242), (7, 1058841, 1058891), (7, 1176490, 1176540), (7, 1294139, 1294189), (7, 823543, 823593), (11, 805255, 805305), (11, 966306, 966356), (11, 1127357, 1127407), (11, 1288408, 1288458), (13, 742586, 742636), (13, 1113879, 1113929), (19, 781926, 781976), (19, 912247, 912297), (19, 1042568, 1042618), (19, 1172889, 1172939), (19, 1303210, 1303260), (23, 839523, 839573), (23, 1119364, 1119414), (29, 707281, 707331), (31, 923521, 923571), (37, 658489, 658539), (37, 709142, 709192), (37, 759795, 759845), (37, 810448, 810498), (37, 861101, 861151), (37, 911754, 911804), (41, 689210, 689260), (41, 758131, 758181), (41, 827052, 827102), (41, 895973, 896023), (41, 964894, 964944), (41, 1033815, 1033865), (41, 1102736, 1102786), (41, 1171657, 1171707), (41, 1240578, 1240628), (43, 715563, 715613), (43, 795070, 795120), (43, 874577, 874627), (43, 954084, 954134), (43, 1033591, 1033641), (43, 1113098, 1113148), (43, 1192605, 1192655), (43, 1272112, 1272162), (47, 726761, 726811), (47, 830584, 830634), (47, 934407, 934457), (47, 1038230, 1038280), (47, 1142053, 1142103), (47, 1245876, 1245926)]

def row051_layer008_block000 : List ColouredInterval :=
  [(2, 655360, 655410), (2, 720896, 720946), (2, 786432, 786482), (2, 851968, 852018), (2, 917504, 917554), (2, 983040, 983090), (2, 1048576, 1048626), (2, 1114112, 1114162), (2, 1179648, 1179698), (2, 655360, 655410), (2, 786432, 786482), (2, 917504, 917554), (2, 1048576, 1048626), (2, 1179648, 1179698), (2, 786432, 786482), (2, 1048576, 1048626)]

def row051_layer008_block001 : List ColouredInterval :=
  [(2, 1048576, 1048626), (2, 1048576, 1048626), (3, 708588, 708638), (3, 885735, 885785), (3, 1062882, 1062932), (3, 1062882, 1062932), (5, 703125, 703175), (5, 781250, 781300), (5, 859375, 859425), (5, 937500, 937550), (5, 1015625, 1015675), (5, 1093750, 1093800), (5, 1171875, 1171925), (5, 1250000, 1250050), (5, 781250, 781300), (5, 1171875, 1171925)]

def row051_layer008_block002 : List ColouredInterval :=
  [(7, 705894, 705944), (7, 823543, 823593), (7, 941192, 941242), (7, 1058841, 1058891), (7, 1176490, 1176540), (7, 1294139, 1294189), (7, 823543, 823593), (11, 805255, 805305), (11, 966306, 966356), (11, 1127357, 1127407), (11, 1288408, 1288458), (13, 742586, 742636), (13, 1113879, 1113929), (19, 781926, 781976), (19, 912247, 912297), (19, 1042568, 1042618)]

def row051_layer008_block003 : List ColouredInterval :=
  [(19, 1172889, 1172939), (19, 1303210, 1303260), (23, 839523, 839573), (23, 1119364, 1119414), (29, 707281, 707331), (31, 923521, 923571), (37, 658489, 658539), (37, 709142, 709192), (37, 759795, 759845), (37, 810448, 810498), (37, 861101, 861151), (37, 911754, 911804), (41, 689210, 689260), (41, 758131, 758181), (41, 827052, 827102), (41, 895973, 896023)]

def row051_layer008_block004 : List ColouredInterval :=
  [(41, 964894, 964944), (41, 1033815, 1033865), (41, 1102736, 1102786), (41, 1171657, 1171707), (41, 1240578, 1240628), (43, 715563, 715613), (43, 795070, 795120), (43, 874577, 874627), (43, 954084, 954134), (43, 1033591, 1033641), (43, 1113098, 1113148), (43, 1192605, 1192655), (43, 1272112, 1272162), (47, 726761, 726811), (47, 830584, 830634), (47, 934407, 934457)]

def row051_layer008_block005 : List ColouredInterval :=
  [(47, 1038230, 1038280), (47, 1142053, 1142103), (47, 1245876, 1245926)]

def row051_layer008_chunks : List (List ColouredInterval) :=
  [row051_layer008_block000, row051_layer008_block001, row051_layer008_block002, row051_layer008_block003, row051_layer008_block004, row051_layer008_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_arithmetic : LayerArithmeticValid row051.height { lower := 652800, upper := 1305600, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_enumeration :
    activePowerIntervalList 51 18 652800 1305600 = row051_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_pairs000 :
    row051_layer008_block000.all (fun I => row051_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_pairs001 :
    row051_layer008_block001.all (fun I => row051_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_pairs002 :
    row051_layer008_block002.all (fun I => row051_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_pairs003 :
    row051_layer008_block003.all (fun I => row051_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_pairs004 :
    row051_layer008_block004.all (fun I => row051_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_pairs005 :
    row051_layer008_block005.all (fun I => row051_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_chunks_eq : row051_layer008_chunks.flatten = row051_layer008_intervals := by
  rfl

theorem row051_layer008_pairs : pairCoverCheck row051_layer008_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer008_chunks_eq
  intro block hblock
  simp only [row051_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row051_layer008_pairs000
  · exact row051_layer008_pairs001
  · exact row051_layer008_pairs002
  · exact row051_layer008_pairs003
  · exact row051_layer008_pairs004
  · exact row051_layer008_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer008_checked :
    coverLayerCheck row051.height row051.goods { lower := 652800, upper := 1305600, M := 18 } = true := by
  exact coverLayerCheck_of_parts row051_layer008_arithmetic row051_layer008_enumeration row051_bounds_eq row051_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer009_checked :
    coverLayerCheck row051.height row051.goods { lower := 1305600, upper := 2611200, M := 16 } = true := by
  decide +kernel

theorem row051_layer010_checked :
    coverLayerCheck row051.height row051.goods { lower := 2611200, upper := 5222400, M := 15 } = true := by
  decide +kernel

theorem row051_layer011_checked :
    coverLayerCheck row051.height row051.goods { lower := 5222400, upper := 10444800, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer011_checked
