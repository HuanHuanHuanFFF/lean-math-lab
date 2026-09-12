import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row091B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs009 :
    row091_layer000_block009.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_chunks_eq : row091_layer000_chunks.flatten = row091_layer000_intervals := by
  rfl

theorem row091_layer000_pairs : pairCoverCheck row091_layer000_intervals row091_bounds = true := by
  apply pairCoverCheck_of_chunks row091_layer000_chunks_eq
  intro block hblock
  simp only [row091_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row091_layer000_pairs000
  · exact row091_layer000_pairs001
  · exact row091_layer000_pairs002
  · exact row091_layer000_pairs003
  · exact row091_layer000_pairs004
  · exact row091_layer000_pairs005
  · exact row091_layer000_pairs006
  · exact row091_layer000_pairs007
  · exact row091_layer000_pairs008
  · exact row091_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_checked :
    coverLayerCheck row091.height row091.goods { lower := 8190, upper := 16380, M := 26 } = true := by
  exact coverLayerCheck_of_parts row091_layer000_arithmetic row091_layer000_enumeration row091_bounds_eq row091_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row091_layer001_intervals : List ColouredInterval :=
  [(2, 16384, 16474), (2, 17408, 17498), (2, 18432, 18522), (2, 19456, 19546), (2, 20480, 20570), (2, 21504, 21594), (2, 22528, 22618), (2, 16384, 16474), (2, 18432, 18522), (2, 20480, 20570), (2, 22528, 22618), (2, 24576, 24666), (2, 26624, 26714), (2, 28672, 28762), (2, 30720, 30810), (2, 16384, 16474), (2, 20480, 20570), (2, 24576, 24666), (2, 28672, 28762), (2, 16384, 16474), (2, 24576, 24666), (2, 16384, 16474), (3, 17496, 17586), (3, 19683, 19773), (3, 21870, 21960), (3, 24057, 24147), (3, 26244, 26334), (3, 28431, 28521), (3, 30618, 30708), (3, 19683, 19773), (3, 26244, 26334), (3, 19683, 19773), (5, 18750, 18840), (5, 21875, 21965), (5, 25000, 25090), (5, 28125, 28215), (5, 31250, 31340), (5, 31250, 31340), (7, 16807, 16897), (11, 17303, 17393), (11, 18634, 18724), (11, 19965, 20055), (11, 21296, 21386), (11, 22627, 22717), (11, 23958, 24048), (11, 25289, 25379), (11, 26620, 26710), (11, 27951, 28041), (11, 29282, 29372), (11, 29282, 29372), (13, 28561, 28651), (17, 19652, 19742), (17, 24565, 24655), (17, 29478, 29568), (19, 20577, 20667), (19, 27436, 27526), (23, 24334, 24424), (29, 16820, 16910), (29, 17661, 17751), (29, 18502, 18592), (29, 24389, 24479), (31, 16380, 16427), (31, 17298, 17388), (31, 18259, 18349), (31, 19220, 19310), (31, 20181, 20271), (31, 21142, 21232), (31, 29791, 29881), (37, 16428, 16518), (37, 17797, 17887), (37, 19166, 19256), (37, 20535, 20625), (37, 21904, 21994), (37, 23273, 23363), (37, 24642, 24732), (37, 26011, 26101), (37, 27380, 27470), (37, 28749, 28839), (37, 30118, 30208), (41, 16810, 16900), (41, 18491, 18581), (41, 20172, 20262), (41, 21853, 21943), (41, 23534, 23624), (41, 25215, 25305), (41, 26896, 26986), (41, 28577, 28667), (41, 30258, 30348), (41, 31939, 32029), (43, 16641, 16731), (43, 18490, 18580), (43, 20339, 20429), (43, 22188, 22278), (43, 24037, 24127), (43, 25886, 25976), (43, 27735, 27825), (43, 29584, 29674), (43, 31433, 31523), (47, 17672, 17762), (47, 19881, 19971), (47, 22090, 22180), (47, 24299, 24389), (47, 26508, 26598), (47, 28717, 28807), (47, 30926, 31016), (53, 16854, 16944), (53, 19663, 19753), (53, 22472, 22562), (53, 25281, 25371), (53, 28090, 28180), (53, 30899, 30989), (59, 17405, 17495), (59, 20886, 20976), (59, 24367, 24457), (59, 27848, 27938), (59, 31329, 31419), (61, 18605, 18695), (61, 22326, 22416), (61, 26047, 26137), (61, 29768, 29858), (67, 17956, 18046), (67, 22445, 22535), (67, 26934, 27024), (67, 31423, 31513), (71, 20164, 20254), (71, 25205, 25295), (71, 30246, 30336), (73, 21316, 21406), (73, 26645, 26735), (73, 31974, 32064), (79, 18723, 18813), (79, 24964, 25054), (79, 31205, 31295), (83, 20667, 20757), (83, 27556, 27646), (89, 23763, 23853), (89, 31684, 31774)]

def row091_layer001_block000 : List ColouredInterval :=
  [(2, 16384, 16474), (2, 17408, 17498), (2, 18432, 18522), (2, 19456, 19546), (2, 20480, 20570), (2, 21504, 21594), (2, 22528, 22618), (2, 16384, 16474), (2, 18432, 18522), (2, 20480, 20570), (2, 22528, 22618), (2, 24576, 24666), (2, 26624, 26714), (2, 28672, 28762)]

def row091_layer001_block001 : List ColouredInterval :=
  [(2, 30720, 30810), (2, 16384, 16474), (2, 20480, 20570), (2, 24576, 24666), (2, 28672, 28762), (2, 16384, 16474), (2, 24576, 24666), (2, 16384, 16474), (3, 17496, 17586), (3, 19683, 19773), (3, 21870, 21960), (3, 24057, 24147), (3, 26244, 26334), (3, 28431, 28521)]

def row091_layer001_block002 : List ColouredInterval :=
  [(3, 30618, 30708), (3, 19683, 19773), (3, 26244, 26334), (3, 19683, 19773), (5, 18750, 18840), (5, 21875, 21965), (5, 25000, 25090), (5, 28125, 28215), (5, 31250, 31340), (5, 31250, 31340), (7, 16807, 16897), (11, 17303, 17393), (11, 18634, 18724), (11, 19965, 20055)]

def row091_layer001_block003 : List ColouredInterval :=
  [(11, 21296, 21386), (11, 22627, 22717), (11, 23958, 24048), (11, 25289, 25379), (11, 26620, 26710), (11, 27951, 28041), (11, 29282, 29372), (11, 29282, 29372), (13, 28561, 28651), (17, 19652, 19742), (17, 24565, 24655), (17, 29478, 29568), (19, 20577, 20667), (19, 27436, 27526)]

def row091_layer001_block004 : List ColouredInterval :=
  [(23, 24334, 24424), (29, 16820, 16910), (29, 17661, 17751), (29, 18502, 18592), (29, 24389, 24479), (31, 16380, 16427), (31, 17298, 17388), (31, 18259, 18349), (31, 19220, 19310), (31, 20181, 20271), (31, 21142, 21232), (31, 29791, 29881), (37, 16428, 16518), (37, 17797, 17887)]

def row091_layer001_block005 : List ColouredInterval :=
  [(37, 19166, 19256), (37, 20535, 20625), (37, 21904, 21994), (37, 23273, 23363), (37, 24642, 24732), (37, 26011, 26101), (37, 27380, 27470), (37, 28749, 28839), (37, 30118, 30208), (41, 16810, 16900), (41, 18491, 18581), (41, 20172, 20262), (41, 21853, 21943), (41, 23534, 23624)]

def row091_layer001_block006 : List ColouredInterval :=
  [(41, 25215, 25305), (41, 26896, 26986), (41, 28577, 28667), (41, 30258, 30348), (41, 31939, 32029), (43, 16641, 16731), (43, 18490, 18580), (43, 20339, 20429), (43, 22188, 22278), (43, 24037, 24127), (43, 25886, 25976), (43, 27735, 27825), (43, 29584, 29674), (43, 31433, 31523)]

def row091_layer001_block007 : List ColouredInterval :=
  [(47, 17672, 17762), (47, 19881, 19971), (47, 22090, 22180), (47, 24299, 24389), (47, 26508, 26598), (47, 28717, 28807), (47, 30926, 31016), (53, 16854, 16944), (53, 19663, 19753), (53, 22472, 22562), (53, 25281, 25371), (53, 28090, 28180), (53, 30899, 30989), (59, 17405, 17495)]

def row091_layer001_block008 : List ColouredInterval :=
  [(59, 20886, 20976), (59, 24367, 24457), (59, 27848, 27938), (59, 31329, 31419), (61, 18605, 18695), (61, 22326, 22416), (61, 26047, 26137), (61, 29768, 29858), (67, 17956, 18046), (67, 22445, 22535), (67, 26934, 27024), (67, 31423, 31513), (71, 20164, 20254), (71, 25205, 25295)]

def row091_layer001_block009 : List ColouredInterval :=
  [(71, 30246, 30336), (73, 21316, 21406), (73, 26645, 26735), (73, 31974, 32064), (79, 18723, 18813), (79, 24964, 25054), (79, 31205, 31295), (83, 20667, 20757), (83, 27556, 27646), (89, 23763, 23853), (89, 31684, 31774)]

def row091_layer001_chunks : List (List ColouredInterval) :=
  [row091_layer001_block000, row091_layer001_block001, row091_layer001_block002, row091_layer001_block003, row091_layer001_block004, row091_layer001_block005, row091_layer001_block006, row091_layer001_block007, row091_layer001_block008, row091_layer001_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_arithmetic : LayerArithmeticValid row091.height { lower := 16380, upper := 32760, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_enumeration :
    activePowerIntervalList 91 22 16380 32760 = row091_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs000 :
    row091_layer001_block000.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs001 :
    row091_layer001_block001.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs002 :
    row091_layer001_block002.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs003 :
    row091_layer001_block003.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs004 :
    row091_layer001_block004.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs005 :
    row091_layer001_block005.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs006 :
    row091_layer001_block006.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs007 :
    row091_layer001_block007.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs008 :
    row091_layer001_block008.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_pairs009 :
    row091_layer001_block009.all (fun I => row091_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_chunks_eq : row091_layer001_chunks.flatten = row091_layer001_intervals := by
  rfl

theorem row091_layer001_pairs : pairCoverCheck row091_layer001_intervals row091_bounds = true := by
  apply pairCoverCheck_of_chunks row091_layer001_chunks_eq
  intro block hblock
  simp only [row091_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row091_layer001_pairs000
  · exact row091_layer001_pairs001
  · exact row091_layer001_pairs002
  · exact row091_layer001_pairs003
  · exact row091_layer001_pairs004
  · exact row091_layer001_pairs005
  · exact row091_layer001_pairs006
  · exact row091_layer001_pairs007
  · exact row091_layer001_pairs008
  · exact row091_layer001_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer001_checked :
    coverLayerCheck row091.height row091.goods { lower := 16380, upper := 32760, M := 22 } = true := by
  exact coverLayerCheck_of_parts row091_layer001_arithmetic row091_layer001_enumeration row091_bounds_eq row091_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row091_layer002_intervals : List ColouredInterval :=
  [(2, 32768, 32858), (2, 34816, 34906), (2, 36864, 36954), (2, 38912, 39002), (2, 32768, 32858), (2, 36864, 36954), (2, 40960, 41050), (2, 45056, 45146), (2, 49152, 49242), (2, 53248, 53338), (2, 57344, 57434), (2, 61440, 61530), (2, 32768, 32858), (2, 40960, 41050), (2, 49152, 49242), (2, 57344, 57434), (2, 32768, 32858), (2, 49152, 49242), (2, 32768, 32858), (3, 32805, 32895), (3, 34992, 35082), (3, 37179, 37269), (3, 39366, 39456), (3, 41553, 41643), (3, 32805, 32895), (3, 39366, 39456), (3, 45927, 46017), (3, 52488, 52578), (3, 59049, 59139), (3, 39366, 39456), (3, 59049, 59139), (3, 59049, 59139), (5, 34375, 34465), (5, 37500, 37590), (5, 40625, 40715), (5, 43750, 43840), (5, 46875, 46965), (5, 50000, 50090), (5, 53125, 53215), (5, 56250, 56340), (5, 59375, 59465), (5, 46875, 46965), (5, 62500, 62590), (7, 33614, 33704), (11, 43923, 44013), (11, 58564, 58654), (17, 34391, 34481), (17, 39304, 39394), (17, 44217, 44307), (17, 49130, 49220), (17, 54043, 54133), (17, 58956, 59046), (17, 63869, 63959), (19, 34295, 34385), (19, 41154, 41244), (19, 48013, 48103), (19, 54872, 54962), (19, 61731, 61821), (23, 36501, 36591), (23, 48668, 48758), (23, 60835, 60925), (29, 48778, 48868), (31, 59582, 59672), (37, 50653, 50743), (43, 33282, 33372), (43, 35131, 35221), (47, 33135, 33225), (47, 35344, 35434), (47, 37553, 37643), (47, 39762, 39852), (47, 41971, 42061), (53, 33708, 33798), (53, 36517, 36607), (53, 39326, 39416), (53, 42135, 42225), (53, 44944, 45034), (53, 47753, 47843), (53, 50562, 50652), (53, 53371, 53461), (59, 34810, 34900), (59, 38291, 38381), (59, 41772, 41862), (59, 45253, 45343), (59, 48734, 48824), (59, 52215, 52305), (59, 55696, 55786), (59, 59177, 59267), (59, 62658, 62748), (61, 33489, 33579), (61, 37210, 37300), (61, 40931, 41021), (61, 44652, 44742), (61, 48373, 48463), (61, 52094, 52184), (61, 55815, 55905), (61, 59536, 59626), (61, 63257, 63347), (67, 35912, 36002), (67, 40401, 40491), (67, 44890, 44980), (67, 49379, 49469), (67, 53868, 53958), (67, 58357, 58447), (67, 62846, 62936), (71, 35287, 35377), (71, 40328, 40418), (71, 45369, 45459), (71, 50410, 50500), (71, 55451, 55541), (71, 60492, 60582), (73, 37303, 37393), (73, 42632, 42722), (73, 47961, 48051), (73, 53290, 53380), (73, 58619, 58709), (73, 63948, 64038), (79, 37446, 37536), (79, 43687, 43777), (79, 49928, 50018), (79, 56169, 56259), (79, 62410, 62500), (83, 34445, 34535), (83, 41334, 41424), (83, 48223, 48313), (83, 55112, 55202), (83, 62001, 62091), (89, 39605, 39695), (89, 47526, 47616), (89, 55447, 55537), (89, 63368, 63458)]

def row091_layer002_block000 : List ColouredInterval :=
  [(2, 32768, 32858), (2, 34816, 34906), (2, 36864, 36954), (2, 38912, 39002), (2, 32768, 32858), (2, 36864, 36954), (2, 40960, 41050), (2, 45056, 45146), (2, 49152, 49242), (2, 53248, 53338), (2, 57344, 57434), (2, 61440, 61530), (2, 32768, 32858), (2, 40960, 41050), (2, 49152, 49242)]

def row091_layer002_block001 : List ColouredInterval :=
  [(2, 57344, 57434), (2, 32768, 32858), (2, 49152, 49242), (2, 32768, 32858), (3, 32805, 32895), (3, 34992, 35082), (3, 37179, 37269), (3, 39366, 39456), (3, 41553, 41643), (3, 32805, 32895), (3, 39366, 39456), (3, 45927, 46017), (3, 52488, 52578), (3, 59049, 59139), (3, 39366, 39456)]

def row091_layer002_block002 : List ColouredInterval :=
  [(3, 59049, 59139), (3, 59049, 59139), (5, 34375, 34465), (5, 37500, 37590), (5, 40625, 40715), (5, 43750, 43840), (5, 46875, 46965), (5, 50000, 50090), (5, 53125, 53215), (5, 56250, 56340), (5, 59375, 59465), (5, 46875, 46965), (5, 62500, 62590), (7, 33614, 33704), (11, 43923, 44013)]

def row091_layer002_block003 : List ColouredInterval :=
  [(11, 58564, 58654), (17, 34391, 34481), (17, 39304, 39394), (17, 44217, 44307), (17, 49130, 49220), (17, 54043, 54133), (17, 58956, 59046), (17, 63869, 63959), (19, 34295, 34385), (19, 41154, 41244), (19, 48013, 48103), (19, 54872, 54962), (19, 61731, 61821), (23, 36501, 36591), (23, 48668, 48758)]

def row091_layer002_block004 : List ColouredInterval :=
  [(23, 60835, 60925), (29, 48778, 48868), (31, 59582, 59672), (37, 50653, 50743), (43, 33282, 33372), (43, 35131, 35221), (47, 33135, 33225), (47, 35344, 35434), (47, 37553, 37643), (47, 39762, 39852), (47, 41971, 42061), (53, 33708, 33798), (53, 36517, 36607), (53, 39326, 39416), (53, 42135, 42225)]

def row091_layer002_block005 : List ColouredInterval :=
  [(53, 44944, 45034), (53, 47753, 47843), (53, 50562, 50652), (53, 53371, 53461), (59, 34810, 34900), (59, 38291, 38381), (59, 41772, 41862), (59, 45253, 45343), (59, 48734, 48824), (59, 52215, 52305), (59, 55696, 55786), (59, 59177, 59267), (59, 62658, 62748), (61, 33489, 33579), (61, 37210, 37300)]

def row091_layer002_block006 : List ColouredInterval :=
  [(61, 40931, 41021), (61, 44652, 44742), (61, 48373, 48463), (61, 52094, 52184), (61, 55815, 55905), (61, 59536, 59626), (61, 63257, 63347), (67, 35912, 36002), (67, 40401, 40491), (67, 44890, 44980), (67, 49379, 49469), (67, 53868, 53958), (67, 58357, 58447), (67, 62846, 62936), (71, 35287, 35377)]

def row091_layer002_block007 : List ColouredInterval :=
  [(71, 40328, 40418), (71, 45369, 45459), (71, 50410, 50500), (71, 55451, 55541), (71, 60492, 60582), (73, 37303, 37393), (73, 42632, 42722), (73, 47961, 48051), (73, 53290, 53380), (73, 58619, 58709), (73, 63948, 64038), (79, 37446, 37536), (79, 43687, 43777), (79, 49928, 50018), (79, 56169, 56259)]

def row091_layer002_block008 : List ColouredInterval :=
  [(79, 62410, 62500), (83, 34445, 34535), (83, 41334, 41424), (83, 48223, 48313), (83, 55112, 55202), (83, 62001, 62091), (89, 39605, 39695), (89, 47526, 47616), (89, 55447, 55537), (89, 63368, 63458)]

def row091_layer002_chunks : List (List ColouredInterval) :=
  [row091_layer002_block000, row091_layer002_block001, row091_layer002_block002, row091_layer002_block003, row091_layer002_block004, row091_layer002_block005, row091_layer002_block006, row091_layer002_block007, row091_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_arithmetic : LayerArithmeticValid row091.height { lower := 32760, upper := 65520, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_enumeration :
    activePowerIntervalList 91 19 32760 65520 = row091_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs000 :
    row091_layer002_block000.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs001 :
    row091_layer002_block001.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs002 :
    row091_layer002_block002.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs003 :
    row091_layer002_block003.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs004 :
    row091_layer002_block004.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs005 :
    row091_layer002_block005.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs006 :
    row091_layer002_block006.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs007 :
    row091_layer002_block007.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_pairs008 :
    row091_layer002_block008.all (fun I => row091_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_chunks_eq : row091_layer002_chunks.flatten = row091_layer002_intervals := by
  rfl

theorem row091_layer002_pairs : pairCoverCheck row091_layer002_intervals row091_bounds = true := by
  apply pairCoverCheck_of_chunks row091_layer002_chunks_eq
  intro block hblock
  simp only [row091_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row091_layer002_pairs000
  · exact row091_layer002_pairs001
  · exact row091_layer002_pairs002
  · exact row091_layer002_pairs003
  · exact row091_layer002_pairs004
  · exact row091_layer002_pairs005
  · exact row091_layer002_pairs006
  · exact row091_layer002_pairs007
  · exact row091_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer002_checked :
    coverLayerCheck row091.height row091.goods { lower := 32760, upper := 65520, M := 19 } = true := by
  exact coverLayerCheck_of_parts row091_layer002_arithmetic row091_layer002_enumeration row091_bounds_eq row091_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer002_checked
