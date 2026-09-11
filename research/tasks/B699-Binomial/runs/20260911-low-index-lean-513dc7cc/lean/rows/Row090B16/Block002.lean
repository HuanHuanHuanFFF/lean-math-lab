import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_checked :
    coverLayerCheck row090.height row090.goods { lower := 8010, upper := 16020, M := 28 } = true := by
  exact coverLayerCheck_of_parts row090_layer000_arithmetic row090_layer000_enumeration row090_bounds_eq row090_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row090_layer001_intervals : List ColouredInterval :=
  [(2, 16384, 16473), (2, 18432, 18521), (2, 20480, 20569), (2, 22528, 22617), (2, 24576, 24665), (2, 16384, 16473), (2, 20480, 20569), (2, 24576, 24665), (2, 28672, 28761), (2, 16384, 16473), (2, 24576, 24665), (2, 16384, 16473), (3, 19683, 19772), (5, 31250, 31339), (7, 16807, 16896), (7, 19208, 19297), (7, 21609, 21698), (7, 24010, 24099), (7, 26411, 26500), (7, 28812, 28901), (7, 31213, 31302), (7, 16807, 16896), (11, 16020, 16061), (11, 17303, 17392), (11, 18634, 18723), (11, 19965, 20054), (11, 21296, 21385), (11, 22627, 22716), (11, 23958, 24047), (11, 25289, 25378), (11, 26620, 26709), (11, 27951, 28040), (11, 29282, 29371), (11, 30613, 30702), (11, 31944, 32033), (11, 29282, 29371), (13, 17576, 17665), (13, 19773, 19862), (13, 21970, 22059), (13, 24167, 24256), (13, 26364, 26453), (13, 28561, 28650), (13, 30758, 30847), (13, 28561, 28650), (17, 19652, 19741), (17, 24565, 24654), (17, 29478, 29567), (19, 20577, 20666), (19, 27436, 27525), (23, 24334, 24423), (29, 16020, 16068), (29, 16820, 16909), (29, 17661, 17750), (29, 18502, 18591), (29, 19343, 19432), (29, 20184, 20273), (29, 24389, 24478), (31, 16337, 16426), (31, 17298, 17387), (31, 18259, 18348), (31, 19220, 19309), (31, 20181, 20270), (31, 21142, 21231), (31, 22103, 22192), (31, 23064, 23153), (31, 29791, 29880), (37, 16428, 16517), (37, 17797, 17886), (37, 19166, 19255), (37, 20535, 20624), (37, 21904, 21993), (37, 23273, 23362), (37, 24642, 24731), (37, 26011, 26100), (37, 27380, 27469), (37, 28749, 28838), (37, 30118, 30207), (37, 31487, 31576), (41, 16810, 16899), (41, 18491, 18580), (41, 20172, 20261), (41, 21853, 21942), (41, 23534, 23623), (41, 25215, 25304), (41, 26896, 26985), (41, 28577, 28666), (41, 30258, 30347), (41, 31939, 32028), (43, 16641, 16730), (43, 18490, 18579), (43, 20339, 20428), (43, 22188, 22277), (43, 24037, 24126), (43, 25886, 25975), (43, 27735, 27824), (43, 29584, 29673), (43, 31433, 31522), (47, 17672, 17761), (47, 19881, 19970), (47, 22090, 22179), (47, 24299, 24388), (47, 26508, 26597), (47, 28717, 28806), (47, 30926, 31015), (53, 16854, 16943), (53, 19663, 19752), (53, 22472, 22561), (53, 25281, 25370), (53, 28090, 28179), (53, 30899, 30988), (59, 17405, 17494), (59, 20886, 20975), (59, 24367, 24456), (59, 27848, 27937), (59, 31329, 31418), (61, 18605, 18694), (61, 22326, 22415), (61, 26047, 26136), (61, 29768, 29857), (67, 17956, 18045), (67, 22445, 22534), (67, 26934, 27023), (67, 31423, 31512), (71, 20164, 20253), (71, 25205, 25294), (71, 30246, 30335), (73, 16020, 16076), (73, 21316, 21405), (73, 26645, 26734), (73, 31974, 32039), (79, 18723, 18812), (79, 24964, 25053), (79, 31205, 31294), (83, 20667, 20756), (83, 27556, 27645), (89, 23763, 23852), (89, 31684, 31773)]

def row090_layer001_block000 : List ColouredInterval :=
  [(2, 16384, 16473), (2, 18432, 18521), (2, 20480, 20569), (2, 22528, 22617), (2, 24576, 24665), (2, 16384, 16473), (2, 20480, 20569), (2, 24576, 24665), (2, 28672, 28761), (2, 16384, 16473), (2, 24576, 24665), (2, 16384, 16473), (3, 19683, 19772), (5, 31250, 31339)]

def row090_layer001_block001 : List ColouredInterval :=
  [(7, 16807, 16896), (7, 19208, 19297), (7, 21609, 21698), (7, 24010, 24099), (7, 26411, 26500), (7, 28812, 28901), (7, 31213, 31302), (7, 16807, 16896), (11, 16020, 16061), (11, 17303, 17392), (11, 18634, 18723), (11, 19965, 20054), (11, 21296, 21385), (11, 22627, 22716)]

def row090_layer001_block002 : List ColouredInterval :=
  [(11, 23958, 24047), (11, 25289, 25378), (11, 26620, 26709), (11, 27951, 28040), (11, 29282, 29371), (11, 30613, 30702), (11, 31944, 32033), (11, 29282, 29371), (13, 17576, 17665), (13, 19773, 19862), (13, 21970, 22059), (13, 24167, 24256), (13, 26364, 26453), (13, 28561, 28650)]

def row090_layer001_block003 : List ColouredInterval :=
  [(13, 30758, 30847), (13, 28561, 28650), (17, 19652, 19741), (17, 24565, 24654), (17, 29478, 29567), (19, 20577, 20666), (19, 27436, 27525), (23, 24334, 24423), (29, 16020, 16068), (29, 16820, 16909), (29, 17661, 17750), (29, 18502, 18591), (29, 19343, 19432), (29, 20184, 20273)]

def row090_layer001_block004 : List ColouredInterval :=
  [(29, 24389, 24478), (31, 16337, 16426), (31, 17298, 17387), (31, 18259, 18348), (31, 19220, 19309), (31, 20181, 20270), (31, 21142, 21231), (31, 22103, 22192), (31, 23064, 23153), (31, 29791, 29880), (37, 16428, 16517), (37, 17797, 17886), (37, 19166, 19255), (37, 20535, 20624)]

def row090_layer001_block005 : List ColouredInterval :=
  [(37, 21904, 21993), (37, 23273, 23362), (37, 24642, 24731), (37, 26011, 26100), (37, 27380, 27469), (37, 28749, 28838), (37, 30118, 30207), (37, 31487, 31576), (41, 16810, 16899), (41, 18491, 18580), (41, 20172, 20261), (41, 21853, 21942), (41, 23534, 23623), (41, 25215, 25304)]

def row090_layer001_block006 : List ColouredInterval :=
  [(41, 26896, 26985), (41, 28577, 28666), (41, 30258, 30347), (41, 31939, 32028), (43, 16641, 16730), (43, 18490, 18579), (43, 20339, 20428), (43, 22188, 22277), (43, 24037, 24126), (43, 25886, 25975), (43, 27735, 27824), (43, 29584, 29673), (43, 31433, 31522), (47, 17672, 17761)]

def row090_layer001_block007 : List ColouredInterval :=
  [(47, 19881, 19970), (47, 22090, 22179), (47, 24299, 24388), (47, 26508, 26597), (47, 28717, 28806), (47, 30926, 31015), (53, 16854, 16943), (53, 19663, 19752), (53, 22472, 22561), (53, 25281, 25370), (53, 28090, 28179), (53, 30899, 30988), (59, 17405, 17494), (59, 20886, 20975)]

def row090_layer001_block008 : List ColouredInterval :=
  [(59, 24367, 24456), (59, 27848, 27937), (59, 31329, 31418), (61, 18605, 18694), (61, 22326, 22415), (61, 26047, 26136), (61, 29768, 29857), (67, 17956, 18045), (67, 22445, 22534), (67, 26934, 27023), (67, 31423, 31512), (71, 20164, 20253), (71, 25205, 25294), (71, 30246, 30335)]

def row090_layer001_block009 : List ColouredInterval :=
  [(73, 16020, 16076), (73, 21316, 21405), (73, 26645, 26734), (73, 31974, 32039), (79, 18723, 18812), (79, 24964, 25053), (79, 31205, 31294), (83, 20667, 20756), (83, 27556, 27645), (89, 23763, 23852), (89, 31684, 31773)]

def row090_layer001_chunks : List (List ColouredInterval) :=
  [row090_layer001_block000, row090_layer001_block001, row090_layer001_block002, row090_layer001_block003, row090_layer001_block004, row090_layer001_block005, row090_layer001_block006, row090_layer001_block007, row090_layer001_block008, row090_layer001_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_arithmetic : LayerArithmeticValid row090.height { lower := 16020, upper := 32040, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_enumeration :
    activePowerIntervalList 90 24 16020 32040 = row090_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs000 :
    row090_layer001_block000.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs001 :
    row090_layer001_block001.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs002 :
    row090_layer001_block002.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs003 :
    row090_layer001_block003.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs004 :
    row090_layer001_block004.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs005 :
    row090_layer001_block005.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs006 :
    row090_layer001_block006.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs007 :
    row090_layer001_block007.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs008 :
    row090_layer001_block008.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_pairs009 :
    row090_layer001_block009.all (fun I => row090_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_chunks_eq : row090_layer001_chunks.flatten = row090_layer001_intervals := by
  rfl

theorem row090_layer001_pairs : pairCoverCheck row090_layer001_intervals row090_bounds = true := by
  apply pairCoverCheck_of_chunks row090_layer001_chunks_eq
  intro block hblock
  simp only [row090_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row090_layer001_pairs000
  · exact row090_layer001_pairs001
  · exact row090_layer001_pairs002
  · exact row090_layer001_pairs003
  · exact row090_layer001_pairs004
  · exact row090_layer001_pairs005
  · exact row090_layer001_pairs006
  · exact row090_layer001_pairs007
  · exact row090_layer001_pairs008
  · exact row090_layer001_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer001_checked :
    coverLayerCheck row090.height row090.goods { lower := 16020, upper := 32040, M := 24 } = true := by
  exact coverLayerCheck_of_parts row090_layer001_arithmetic row090_layer001_enumeration row090_bounds_eq row090_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_checked
