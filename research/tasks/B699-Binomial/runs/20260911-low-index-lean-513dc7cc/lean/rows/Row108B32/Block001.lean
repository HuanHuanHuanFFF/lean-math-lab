import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row108B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs008 :
    row108_layer000_block008.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_chunks_eq : row108_layer000_chunks.flatten = row108_layer000_intervals := by
  rfl

theorem row108_layer000_pairs : pairCoverCheck row108_layer000_intervals row108_bounds = true := by
  apply pairCoverCheck_of_chunks row108_layer000_chunks_eq
  intro block hblock
  simp only [row108_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row108_layer000_pairs000
  · exact row108_layer000_pairs001
  · exact row108_layer000_pairs002
  · exact row108_layer000_pairs003
  · exact row108_layer000_pairs004
  · exact row108_layer000_pairs005
  · exact row108_layer000_pairs006
  · exact row108_layer000_pairs007
  · exact row108_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_checked :
    coverLayerCheck row108.height row108.goods { lower := 11556, upper := 23112, M := 26 } = true := by
  exact coverLayerCheck_of_parts row108_layer000_arithmetic row108_layer000_enumeration row108_bounds_eq row108_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row108_layer001_intervals : List ColouredInterval :=
  [(2, 24576, 24683), (2, 32768, 32875), (2, 40960, 41067), (2, 32768, 32875), (2, 32768, 32875), (5, 25000, 25107), (5, 28125, 28232), (5, 31250, 31357), (5, 34375, 34482), (5, 37500, 37607), (5, 40625, 40732), (5, 43750, 43857), (5, 31250, 31357), (7, 24010, 24117), (7, 26411, 26518), (7, 28812, 28919), (7, 31213, 31320), (7, 33614, 33721), (7, 36015, 36122), (7, 38416, 38523), (7, 40817, 40924), (7, 43218, 43325), (7, 45619, 45726), (7, 33614, 33721), (11, 23958, 24065), (11, 25289, 25396), (11, 26620, 26727), (11, 27951, 28058), (11, 29282, 29389), (11, 29282, 29389), (11, 43923, 44030), (13, 24167, 24274), (13, 26364, 26471), (13, 28561, 28668), (13, 30758, 30865), (13, 32955, 33062), (13, 35152, 35259), (13, 37349, 37456), (13, 39546, 39653), (13, 41743, 41850), (13, 43940, 44047), (13, 46137, 46223), (13, 28561, 28668), (17, 24565, 24672), (17, 29478, 29585), (17, 34391, 34498), (17, 39304, 39411), (17, 44217, 44324), (19, 27436, 27543), (19, 34295, 34402), (19, 41154, 41261), (23, 24334, 24441), (23, 36501, 36608), (29, 24389, 24496), (31, 29791, 29898), (37, 23273, 23380), (37, 24642, 24749), (37, 26011, 26118), (37, 27380, 27487), (37, 28749, 28856), (37, 30118, 30225), (41, 23534, 23641), (41, 25215, 25322), (41, 26896, 27003), (41, 28577, 28684), (41, 30258, 30365), (41, 31939, 32046), (41, 33620, 33727), (41, 35301, 35408), (41, 36982, 37089), (43, 24037, 24144), (43, 25886, 25993), (43, 27735, 27842), (43, 29584, 29691), (43, 31433, 31540), (43, 33282, 33389), (43, 35131, 35238), (43, 36980, 37087), (43, 38829, 38936), (43, 40678, 40785), (47, 24299, 24406), (47, 26508, 26615), (47, 28717, 28824), (47, 30926, 31033), (47, 33135, 33242), (47, 35344, 35451), (47, 37553, 37660), (47, 39762, 39869), (47, 41971, 42078), (47, 44180, 44287), (53, 25281, 25388), (53, 28090, 28197), (53, 30899, 31006), (53, 33708, 33815), (53, 36517, 36624), (53, 39326, 39433), (53, 42135, 42242), (53, 44944, 45051), (59, 24367, 24474), (59, 27848, 27955), (59, 31329, 31436), (59, 34810, 34917), (59, 38291, 38398), (59, 41772, 41879), (59, 45253, 45360), (61, 26047, 26154), (61, 29768, 29875), (61, 33489, 33596), (61, 37210, 37317), (61, 40931, 41038), (61, 44652, 44759), (67, 26934, 27041), (67, 31423, 31530), (67, 35912, 36019), (67, 40401, 40508), (67, 44890, 44997), (71, 25205, 25312), (71, 30246, 30353), (71, 35287, 35394), (71, 40328, 40435), (71, 45369, 45476), (73, 26645, 26752), (73, 31974, 32081), (73, 37303, 37410), (73, 42632, 42739), (79, 24964, 25071), (79, 31205, 31312), (79, 37446, 37553), (79, 43687, 43794), (83, 27556, 27663), (83, 34445, 34552), (83, 41334, 41441), (89, 23763, 23870), (89, 31684, 31791), (89, 39605, 39712), (97, 28227, 28334), (97, 37636, 37743), (101, 30603, 30710), (101, 40804, 40911), (103, 31827, 31934), (103, 42436, 42543), (107, 34347, 34454), (107, 45796, 45903)]

def row108_layer001_block000 : List ColouredInterval :=
  [(2, 24576, 24683), (2, 32768, 32875), (2, 40960, 41067), (2, 32768, 32875), (2, 32768, 32875), (5, 25000, 25107), (5, 28125, 28232), (5, 31250, 31357), (5, 34375, 34482), (5, 37500, 37607), (5, 40625, 40732), (5, 43750, 43857), (5, 31250, 31357), (7, 24010, 24117)]

def row108_layer001_block001 : List ColouredInterval :=
  [(7, 26411, 26518), (7, 28812, 28919), (7, 31213, 31320), (7, 33614, 33721), (7, 36015, 36122), (7, 38416, 38523), (7, 40817, 40924), (7, 43218, 43325), (7, 45619, 45726), (7, 33614, 33721), (11, 23958, 24065), (11, 25289, 25396), (11, 26620, 26727), (11, 27951, 28058)]

def row108_layer001_block002 : List ColouredInterval :=
  [(11, 29282, 29389), (11, 29282, 29389), (11, 43923, 44030), (13, 24167, 24274), (13, 26364, 26471), (13, 28561, 28668), (13, 30758, 30865), (13, 32955, 33062), (13, 35152, 35259), (13, 37349, 37456), (13, 39546, 39653), (13, 41743, 41850), (13, 43940, 44047), (13, 46137, 46223)]

def row108_layer001_block003 : List ColouredInterval :=
  [(13, 28561, 28668), (17, 24565, 24672), (17, 29478, 29585), (17, 34391, 34498), (17, 39304, 39411), (17, 44217, 44324), (19, 27436, 27543), (19, 34295, 34402), (19, 41154, 41261), (23, 24334, 24441), (23, 36501, 36608), (29, 24389, 24496), (31, 29791, 29898), (37, 23273, 23380)]

def row108_layer001_block004 : List ColouredInterval :=
  [(37, 24642, 24749), (37, 26011, 26118), (37, 27380, 27487), (37, 28749, 28856), (37, 30118, 30225), (41, 23534, 23641), (41, 25215, 25322), (41, 26896, 27003), (41, 28577, 28684), (41, 30258, 30365), (41, 31939, 32046), (41, 33620, 33727), (41, 35301, 35408), (41, 36982, 37089)]

def row108_layer001_block005 : List ColouredInterval :=
  [(43, 24037, 24144), (43, 25886, 25993), (43, 27735, 27842), (43, 29584, 29691), (43, 31433, 31540), (43, 33282, 33389), (43, 35131, 35238), (43, 36980, 37087), (43, 38829, 38936), (43, 40678, 40785), (47, 24299, 24406), (47, 26508, 26615), (47, 28717, 28824), (47, 30926, 31033)]

def row108_layer001_block006 : List ColouredInterval :=
  [(47, 33135, 33242), (47, 35344, 35451), (47, 37553, 37660), (47, 39762, 39869), (47, 41971, 42078), (47, 44180, 44287), (53, 25281, 25388), (53, 28090, 28197), (53, 30899, 31006), (53, 33708, 33815), (53, 36517, 36624), (53, 39326, 39433), (53, 42135, 42242), (53, 44944, 45051)]

def row108_layer001_block007 : List ColouredInterval :=
  [(59, 24367, 24474), (59, 27848, 27955), (59, 31329, 31436), (59, 34810, 34917), (59, 38291, 38398), (59, 41772, 41879), (59, 45253, 45360), (61, 26047, 26154), (61, 29768, 29875), (61, 33489, 33596), (61, 37210, 37317), (61, 40931, 41038), (61, 44652, 44759), (67, 26934, 27041)]

def row108_layer001_block008 : List ColouredInterval :=
  [(67, 31423, 31530), (67, 35912, 36019), (67, 40401, 40508), (67, 44890, 44997), (71, 25205, 25312), (71, 30246, 30353), (71, 35287, 35394), (71, 40328, 40435), (71, 45369, 45476), (73, 26645, 26752), (73, 31974, 32081), (73, 37303, 37410), (73, 42632, 42739), (79, 24964, 25071)]

def row108_layer001_block009 : List ColouredInterval :=
  [(79, 31205, 31312), (79, 37446, 37553), (79, 43687, 43794), (83, 27556, 27663), (83, 34445, 34552), (83, 41334, 41441), (89, 23763, 23870), (89, 31684, 31791), (89, 39605, 39712), (97, 28227, 28334), (97, 37636, 37743), (101, 30603, 30710), (101, 40804, 40911), (103, 31827, 31934)]

def row108_layer001_block010 : List ColouredInterval :=
  [(103, 42436, 42543), (107, 34347, 34454), (107, 45796, 45903)]

def row108_layer001_chunks : List (List ColouredInterval) :=
  [row108_layer001_block000, row108_layer001_block001, row108_layer001_block002, row108_layer001_block003, row108_layer001_block004, row108_layer001_block005, row108_layer001_block006, row108_layer001_block007, row108_layer001_block008, row108_layer001_block009, row108_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_arithmetic : LayerArithmeticValid row108.height { lower := 23112, upper := 46224, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_enumeration :
    activePowerIntervalList 108 22 23112 46224 = row108_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs000 :
    row108_layer001_block000.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs001 :
    row108_layer001_block001.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs002 :
    row108_layer001_block002.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs003 :
    row108_layer001_block003.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs004 :
    row108_layer001_block004.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs005 :
    row108_layer001_block005.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs006 :
    row108_layer001_block006.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs007 :
    row108_layer001_block007.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs008 :
    row108_layer001_block008.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs009 :
    row108_layer001_block009.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_pairs010 :
    row108_layer001_block010.all (fun I => row108_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_chunks_eq : row108_layer001_chunks.flatten = row108_layer001_intervals := by
  rfl

theorem row108_layer001_pairs : pairCoverCheck row108_layer001_intervals row108_bounds = true := by
  apply pairCoverCheck_of_chunks row108_layer001_chunks_eq
  intro block hblock
  simp only [row108_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row108_layer001_pairs000
  · exact row108_layer001_pairs001
  · exact row108_layer001_pairs002
  · exact row108_layer001_pairs003
  · exact row108_layer001_pairs004
  · exact row108_layer001_pairs005
  · exact row108_layer001_pairs006
  · exact row108_layer001_pairs007
  · exact row108_layer001_pairs008
  · exact row108_layer001_pairs009
  · exact row108_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer001_checked :
    coverLayerCheck row108.height row108.goods { lower := 23112, upper := 46224, M := 22 } = true := by
  exact coverLayerCheck_of_parts row108_layer001_arithmetic row108_layer001_enumeration row108_bounds_eq row108_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row108_layer002_intervals : List ColouredInterval :=
  [(2, 49152, 49259), (2, 65536, 65643), (2, 65536, 65643), (2, 65536, 65643), (5, 46875, 46982), (5, 50000, 50107), (5, 53125, 53232), (5, 56250, 56357), (5, 46875, 46982), (5, 62500, 62607), (5, 78125, 78232), (5, 78125, 78232), (7, 50421, 50528), (7, 67228, 67335), (7, 84035, 84142), (11, 58564, 58671), (11, 73205, 73312), (11, 87846, 87953), (13, 57122, 57229), (13, 85683, 85790), (17, 49130, 49237), (17, 54043, 54150), (17, 58956, 59063), (17, 63869, 63976), (17, 68782, 68889), (17, 73695, 73802), (17, 78608, 78715), (17, 83521, 83628), (17, 88434, 88541), (17, 83521, 83628), (19, 48013, 48120), (19, 54872, 54979), (19, 61731, 61838), (19, 68590, 68697), (19, 75449, 75556), (19, 82308, 82415), (19, 89167, 89274), (23, 48668, 48775), (23, 60835, 60942), (23, 73002, 73109), (23, 85169, 85276), (29, 48778, 48885), (29, 73167, 73274), (31, 59582, 59689), (31, 89373, 89480), (37, 50653, 50760), (41, 68921, 69028), (43, 79507, 79614), (53, 47753, 47860), (53, 50562, 50669), (59, 48734, 48841), (59, 52215, 52322), (59, 55696, 55803), (59, 59177, 59284), (59, 62658, 62765), (61, 48373, 48480), (61, 52094, 52201), (61, 55815, 55922), (61, 59536, 59643), (61, 63257, 63364), (61, 66978, 67085), (67, 49379, 49486), (67, 53868, 53975), (67, 58357, 58464), (67, 62846, 62953), (67, 67335, 67442), (67, 71824, 71931), (67, 76313, 76420), (67, 80802, 80909), (71, 50410, 50517), (71, 55451, 55558), (71, 60492, 60599), (71, 65533, 65640), (71, 70574, 70681), (71, 75615, 75722), (71, 80656, 80763), (71, 85697, 85804), (71, 90738, 90845), (73, 47961, 48068), (73, 53290, 53397), (73, 58619, 58726), (73, 63948, 64055), (73, 69277, 69384), (73, 74606, 74713), (73, 79935, 80042), (73, 85264, 85371), (73, 90593, 90700), (79, 49928, 50035), (79, 56169, 56276), (79, 62410, 62517), (79, 68651, 68758), (79, 74892, 74999), (79, 81133, 81240), (79, 87374, 87481), (83, 48223, 48330), (83, 55112, 55219), (83, 62001, 62108), (83, 68890, 68997), (83, 75779, 75886), (83, 82668, 82775), (83, 89557, 89664), (89, 47526, 47633), (89, 55447, 55554), (89, 63368, 63475), (89, 71289, 71396), (89, 79210, 79317), (89, 87131, 87238), (97, 47045, 47152), (97, 56454, 56561), (97, 65863, 65970), (97, 75272, 75379), (97, 84681, 84788), (101, 51005, 51112), (101, 61206, 61313), (101, 71407, 71514), (101, 81608, 81715), (101, 91809, 91916), (103, 53045, 53152), (103, 63654, 63761), (103, 74263, 74370), (103, 84872, 84979), (107, 57245, 57352), (107, 68694, 68801), (107, 80143, 80250), (107, 91592, 91699)]

def row108_layer002_block000 : List ColouredInterval :=
  [(2, 49152, 49259), (2, 65536, 65643), (2, 65536, 65643), (2, 65536, 65643), (5, 46875, 46982), (5, 50000, 50107), (5, 53125, 53232), (5, 56250, 56357), (5, 46875, 46982), (5, 62500, 62607), (5, 78125, 78232), (5, 78125, 78232), (7, 50421, 50528), (7, 67228, 67335), (7, 84035, 84142), (11, 58564, 58671)]

def row108_layer002_block001 : List ColouredInterval :=
  [(11, 73205, 73312), (11, 87846, 87953), (13, 57122, 57229), (13, 85683, 85790), (17, 49130, 49237), (17, 54043, 54150), (17, 58956, 59063), (17, 63869, 63976), (17, 68782, 68889), (17, 73695, 73802), (17, 78608, 78715), (17, 83521, 83628), (17, 88434, 88541), (17, 83521, 83628), (19, 48013, 48120), (19, 54872, 54979)]

def row108_layer002_block002 : List ColouredInterval :=
  [(19, 61731, 61838), (19, 68590, 68697), (19, 75449, 75556), (19, 82308, 82415), (19, 89167, 89274), (23, 48668, 48775), (23, 60835, 60942), (23, 73002, 73109), (23, 85169, 85276), (29, 48778, 48885), (29, 73167, 73274), (31, 59582, 59689), (31, 89373, 89480), (37, 50653, 50760), (41, 68921, 69028), (43, 79507, 79614)]

def row108_layer002_block003 : List ColouredInterval :=
  [(53, 47753, 47860), (53, 50562, 50669), (59, 48734, 48841), (59, 52215, 52322), (59, 55696, 55803), (59, 59177, 59284), (59, 62658, 62765), (61, 48373, 48480), (61, 52094, 52201), (61, 55815, 55922), (61, 59536, 59643), (61, 63257, 63364), (61, 66978, 67085), (67, 49379, 49486), (67, 53868, 53975), (67, 58357, 58464)]

def row108_layer002_block004 : List ColouredInterval :=
  [(67, 62846, 62953), (67, 67335, 67442), (67, 71824, 71931), (67, 76313, 76420), (67, 80802, 80909), (71, 50410, 50517), (71, 55451, 55558), (71, 60492, 60599), (71, 65533, 65640), (71, 70574, 70681), (71, 75615, 75722), (71, 80656, 80763), (71, 85697, 85804), (71, 90738, 90845), (73, 47961, 48068), (73, 53290, 53397)]

def row108_layer002_block005 : List ColouredInterval :=
  [(73, 58619, 58726), (73, 63948, 64055), (73, 69277, 69384), (73, 74606, 74713), (73, 79935, 80042), (73, 85264, 85371), (73, 90593, 90700), (79, 49928, 50035), (79, 56169, 56276), (79, 62410, 62517), (79, 68651, 68758), (79, 74892, 74999), (79, 81133, 81240), (79, 87374, 87481), (83, 48223, 48330), (83, 55112, 55219)]

def row108_layer002_block006 : List ColouredInterval :=
  [(83, 62001, 62108), (83, 68890, 68997), (83, 75779, 75886), (83, 82668, 82775), (83, 89557, 89664), (89, 47526, 47633), (89, 55447, 55554), (89, 63368, 63475), (89, 71289, 71396), (89, 79210, 79317), (89, 87131, 87238), (97, 47045, 47152), (97, 56454, 56561), (97, 65863, 65970), (97, 75272, 75379), (97, 84681, 84788)]

def row108_layer002_block007 : List ColouredInterval :=
  [(101, 51005, 51112), (101, 61206, 61313), (101, 71407, 71514), (101, 81608, 81715), (101, 91809, 91916), (103, 53045, 53152), (103, 63654, 63761), (103, 74263, 74370), (103, 84872, 84979), (107, 57245, 57352), (107, 68694, 68801), (107, 80143, 80250), (107, 91592, 91699)]

def row108_layer002_chunks : List (List ColouredInterval) :=
  [row108_layer002_block000, row108_layer002_block001, row108_layer002_block002, row108_layer002_block003, row108_layer002_block004, row108_layer002_block005, row108_layer002_block006, row108_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_arithmetic : LayerArithmeticValid row108.height { lower := 46224, upper := 92448, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_enumeration :
    activePowerIntervalList 108 18 46224 92448 = row108_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_pairs000 :
    row108_layer002_block000.all (fun I => row108_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_pairs001 :
    row108_layer002_block001.all (fun I => row108_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_pairs002 :
    row108_layer002_block002.all (fun I => row108_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_pairs003 :
    row108_layer002_block003.all (fun I => row108_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_pairs004 :
    row108_layer002_block004.all (fun I => row108_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_pairs005 :
    row108_layer002_block005.all (fun I => row108_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_pairs006 :
    row108_layer002_block006.all (fun I => row108_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_pairs007 :
    row108_layer002_block007.all (fun I => row108_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_chunks_eq : row108_layer002_chunks.flatten = row108_layer002_intervals := by
  rfl

theorem row108_layer002_pairs : pairCoverCheck row108_layer002_intervals row108_bounds = true := by
  apply pairCoverCheck_of_chunks row108_layer002_chunks_eq
  intro block hblock
  simp only [row108_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row108_layer002_pairs000
  · exact row108_layer002_pairs001
  · exact row108_layer002_pairs002
  · exact row108_layer002_pairs003
  · exact row108_layer002_pairs004
  · exact row108_layer002_pairs005
  · exact row108_layer002_pairs006
  · exact row108_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer002_checked :
    coverLayerCheck row108.height row108.goods { lower := 46224, upper := 92448, M := 18 } = true := by
  exact coverLayerCheck_of_parts row108_layer002_arithmetic row108_layer002_enumeration row108_bounds_eq row108_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer002_checked
