import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090B32.Block000
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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row090_layer002_intervals : List ColouredInterval :=
  [(2, 32768, 32857), (2, 36864, 36953), (2, 40960, 41049), (2, 32768, 32857), (2, 40960, 41049), (2, 49152, 49241), (2, 57344, 57433), (2, 32768, 32857), (2, 49152, 49241), (2, 32768, 32857), (3, 39366, 39455), (3, 59049, 59138), (5, 46875, 46964), (5, 62500, 62589), (7, 33614, 33703), (7, 36015, 36104), (7, 38416, 38505), (7, 40817, 40906), (7, 43218, 43307), (7, 45619, 45708), (7, 48020, 48109), (7, 33614, 33703), (7, 50421, 50510), (11, 43923, 44012), (11, 58564, 58653), (13, 32955, 33044), (13, 35152, 35241), (13, 37349, 37438), (13, 39546, 39635), (13, 41743, 41832), (13, 43940, 44029), (13, 57122, 57211), (17, 34391, 34480), (17, 39304, 39393), (17, 44217, 44306), (17, 49130, 49219), (17, 54043, 54132), (17, 58956, 59045), (17, 63869, 63958), (19, 34295, 34384), (19, 41154, 41243), (19, 48013, 48102), (19, 54872, 54961), (19, 61731, 61820), (23, 36501, 36590), (23, 48668, 48757), (23, 60835, 60924), (29, 48778, 48867), (31, 59582, 59671), (37, 50653, 50742), (41, 33620, 33709), (43, 33282, 33371), (43, 35131, 35220), (43, 36980, 37069), (47, 33135, 33224), (47, 35344, 35433), (47, 37553, 37642), (47, 39762, 39851), (47, 41971, 42060), (47, 44180, 44269), (53, 33708, 33797), (53, 36517, 36606), (53, 39326, 39415), (53, 42135, 42224), (53, 44944, 45033), (53, 47753, 47842), (53, 50562, 50651), (53, 53371, 53460), (53, 56180, 56269), (59, 34810, 34899), (59, 38291, 38380), (59, 41772, 41861), (59, 45253, 45342), (59, 48734, 48823), (59, 52215, 52304), (59, 55696, 55785), (59, 59177, 59266), (59, 62658, 62747), (61, 33489, 33578), (61, 37210, 37299), (61, 40931, 41020), (61, 44652, 44741), (61, 48373, 48462), (61, 52094, 52183), (61, 55815, 55904), (61, 59536, 59625), (61, 63257, 63346), (67, 35912, 36001), (67, 40401, 40490), (67, 44890, 44979), (67, 49379, 49468), (67, 53868, 53957), (67, 58357, 58446), (67, 62846, 62935), (71, 35287, 35376), (71, 40328, 40417), (71, 45369, 45458), (71, 50410, 50499), (71, 55451, 55540), (71, 60492, 60581), (73, 32040, 32063), (73, 37303, 37392), (73, 42632, 42721), (73, 47961, 48050), (73, 53290, 53379), (73, 58619, 58708), (73, 63948, 64037), (79, 37446, 37535), (79, 43687, 43776), (79, 49928, 50017), (79, 56169, 56258), (79, 62410, 62499), (83, 34445, 34534), (83, 41334, 41423), (83, 48223, 48312), (83, 55112, 55201), (83, 62001, 62090), (89, 39605, 39694), (89, 47526, 47615), (89, 55447, 55536), (89, 63368, 63457)]

def row090_layer002_block000 : List ColouredInterval :=
  [(2, 32768, 32857), (2, 36864, 36953), (2, 40960, 41049), (2, 32768, 32857), (2, 40960, 41049), (2, 49152, 49241), (2, 57344, 57433), (2, 32768, 32857), (2, 49152, 49241), (2, 32768, 32857), (3, 39366, 39455), (3, 59049, 59138), (5, 46875, 46964), (5, 62500, 62589), (7, 33614, 33703), (7, 36015, 36104)]

def row090_layer002_block001 : List ColouredInterval :=
  [(7, 38416, 38505), (7, 40817, 40906), (7, 43218, 43307), (7, 45619, 45708), (7, 48020, 48109), (7, 33614, 33703), (7, 50421, 50510), (11, 43923, 44012), (11, 58564, 58653), (13, 32955, 33044), (13, 35152, 35241), (13, 37349, 37438), (13, 39546, 39635), (13, 41743, 41832), (13, 43940, 44029), (13, 57122, 57211)]

def row090_layer002_block002 : List ColouredInterval :=
  [(17, 34391, 34480), (17, 39304, 39393), (17, 44217, 44306), (17, 49130, 49219), (17, 54043, 54132), (17, 58956, 59045), (17, 63869, 63958), (19, 34295, 34384), (19, 41154, 41243), (19, 48013, 48102), (19, 54872, 54961), (19, 61731, 61820), (23, 36501, 36590), (23, 48668, 48757), (23, 60835, 60924), (29, 48778, 48867)]

def row090_layer002_block003 : List ColouredInterval :=
  [(31, 59582, 59671), (37, 50653, 50742), (41, 33620, 33709), (43, 33282, 33371), (43, 35131, 35220), (43, 36980, 37069), (47, 33135, 33224), (47, 35344, 35433), (47, 37553, 37642), (47, 39762, 39851), (47, 41971, 42060), (47, 44180, 44269), (53, 33708, 33797), (53, 36517, 36606), (53, 39326, 39415), (53, 42135, 42224)]

def row090_layer002_block004 : List ColouredInterval :=
  [(53, 44944, 45033), (53, 47753, 47842), (53, 50562, 50651), (53, 53371, 53460), (53, 56180, 56269), (59, 34810, 34899), (59, 38291, 38380), (59, 41772, 41861), (59, 45253, 45342), (59, 48734, 48823), (59, 52215, 52304), (59, 55696, 55785), (59, 59177, 59266), (59, 62658, 62747), (61, 33489, 33578), (61, 37210, 37299)]

def row090_layer002_block005 : List ColouredInterval :=
  [(61, 40931, 41020), (61, 44652, 44741), (61, 48373, 48462), (61, 52094, 52183), (61, 55815, 55904), (61, 59536, 59625), (61, 63257, 63346), (67, 35912, 36001), (67, 40401, 40490), (67, 44890, 44979), (67, 49379, 49468), (67, 53868, 53957), (67, 58357, 58446), (67, 62846, 62935), (71, 35287, 35376), (71, 40328, 40417)]

def row090_layer002_block006 : List ColouredInterval :=
  [(71, 45369, 45458), (71, 50410, 50499), (71, 55451, 55540), (71, 60492, 60581), (73, 32040, 32063), (73, 37303, 37392), (73, 42632, 42721), (73, 47961, 48050), (73, 53290, 53379), (73, 58619, 58708), (73, 63948, 64037), (79, 37446, 37535), (79, 43687, 43776), (79, 49928, 50017), (79, 56169, 56258), (79, 62410, 62499)]

def row090_layer002_block007 : List ColouredInterval :=
  [(83, 34445, 34534), (83, 41334, 41423), (83, 48223, 48312), (83, 55112, 55201), (83, 62001, 62090), (89, 39605, 39694), (89, 47526, 47615), (89, 55447, 55536), (89, 63368, 63457)]

def row090_layer002_chunks : List (List ColouredInterval) :=
  [row090_layer002_block000, row090_layer002_block001, row090_layer002_block002, row090_layer002_block003, row090_layer002_block004, row090_layer002_block005, row090_layer002_block006, row090_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_arithmetic : LayerArithmeticValid row090.height { lower := 32040, upper := 64080, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_enumeration :
    activePowerIntervalList 90 20 32040 64080 = row090_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_pairs000 :
    row090_layer002_block000.all (fun I => row090_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_pairs001 :
    row090_layer002_block001.all (fun I => row090_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_pairs002 :
    row090_layer002_block002.all (fun I => row090_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_pairs003 :
    row090_layer002_block003.all (fun I => row090_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_pairs004 :
    row090_layer002_block004.all (fun I => row090_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_pairs005 :
    row090_layer002_block005.all (fun I => row090_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_pairs006 :
    row090_layer002_block006.all (fun I => row090_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_pairs007 :
    row090_layer002_block007.all (fun I => row090_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_chunks_eq : row090_layer002_chunks.flatten = row090_layer002_intervals := by
  rfl

theorem row090_layer002_pairs : pairCoverCheck row090_layer002_intervals row090_bounds = true := by
  apply pairCoverCheck_of_chunks row090_layer002_chunks_eq
  intro block hblock
  simp only [row090_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row090_layer002_pairs000
  · exact row090_layer002_pairs001
  · exact row090_layer002_pairs002
  · exact row090_layer002_pairs003
  · exact row090_layer002_pairs004
  · exact row090_layer002_pairs005
  · exact row090_layer002_pairs006
  · exact row090_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer002_checked :
    coverLayerCheck row090.height row090.goods { lower := 32040, upper := 64080, M := 20 } = true := by
  exact coverLayerCheck_of_parts row090_layer002_arithmetic row090_layer002_enumeration row090_bounds_eq row090_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row090_layer003_intervals : List ColouredInterval :=
  [(2, 65536, 65625), (2, 65536, 65625), (2, 81920, 82009), (2, 98304, 98393), (2, 114688, 114777), (2, 65536, 65625), (2, 98304, 98393), (2, 65536, 65625), (5, 78125, 78214), (7, 67228, 67317), (7, 84035, 84124), (7, 100842, 100931), (7, 117649, 117738), (7, 117649, 117738), (11, 73205, 73294), (11, 87846, 87935), (11, 102487, 102576), (11, 117128, 117217), (13, 85683, 85772), (13, 114244, 114333), (17, 68782, 68871), (17, 73695, 73784), (17, 78608, 78697), (17, 83521, 83610), (17, 83521, 83610), (19, 68590, 68679), (19, 75449, 75538), (19, 82308, 82397), (19, 89167, 89256), (19, 96026, 96115), (19, 102885, 102974), (19, 109744, 109833), (19, 116603, 116692), (23, 73002, 73091), (23, 85169, 85258), (23, 97336, 97425), (23, 109503, 109592), (23, 121670, 121759), (29, 73167, 73256), (29, 97556, 97645), (29, 121945, 122034), (31, 89373, 89462), (31, 119164, 119253), (37, 101306, 101395), (41, 68921, 69010), (43, 79507, 79596), (47, 103823, 103912), (67, 67335, 67424), (67, 71824, 71913), (67, 76313, 76402), (71, 65533, 65622), (71, 70574, 70663), (71, 75615, 75704), (71, 80656, 80745), (71, 85697, 85786), (73, 69277, 69366), (73, 74606, 74695), (73, 79935, 80024), (73, 85264, 85353), (73, 90593, 90682), (79, 68651, 68740), (79, 74892, 74981), (79, 81133, 81222), (79, 87374, 87463), (79, 93615, 93704), (79, 99856, 99945), (79, 106097, 106186), (83, 68890, 68979), (83, 75779, 75868), (83, 82668, 82757), (83, 89557, 89646), (83, 96446, 96535), (83, 103335, 103424), (83, 110224, 110313), (83, 117113, 117202), (89, 71289, 71378), (89, 79210, 79299), (89, 87131, 87220), (89, 95052, 95141), (89, 102973, 103062), (89, 110894, 110983), (89, 118815, 118904), (89, 126736, 126825)]

def row090_layer003_block000 : List ColouredInterval :=
  [(2, 65536, 65625), (2, 65536, 65625), (2, 81920, 82009), (2, 98304, 98393), (2, 114688, 114777), (2, 65536, 65625), (2, 98304, 98393), (2, 65536, 65625), (5, 78125, 78214), (7, 67228, 67317), (7, 84035, 84124), (7, 100842, 100931), (7, 117649, 117738), (7, 117649, 117738), (11, 73205, 73294), (11, 87846, 87935)]

def row090_layer003_block001 : List ColouredInterval :=
  [(11, 102487, 102576), (11, 117128, 117217), (13, 85683, 85772), (13, 114244, 114333), (17, 68782, 68871), (17, 73695, 73784), (17, 78608, 78697), (17, 83521, 83610), (17, 83521, 83610), (19, 68590, 68679), (19, 75449, 75538), (19, 82308, 82397), (19, 89167, 89256), (19, 96026, 96115), (19, 102885, 102974), (19, 109744, 109833)]

def row090_layer003_block002 : List ColouredInterval :=
  [(19, 116603, 116692), (23, 73002, 73091), (23, 85169, 85258), (23, 97336, 97425), (23, 109503, 109592), (23, 121670, 121759), (29, 73167, 73256), (29, 97556, 97645), (29, 121945, 122034), (31, 89373, 89462), (31, 119164, 119253), (37, 101306, 101395), (41, 68921, 69010), (43, 79507, 79596), (47, 103823, 103912), (67, 67335, 67424)]

def row090_layer003_block003 : List ColouredInterval :=
  [(67, 71824, 71913), (67, 76313, 76402), (71, 65533, 65622), (71, 70574, 70663), (71, 75615, 75704), (71, 80656, 80745), (71, 85697, 85786), (73, 69277, 69366), (73, 74606, 74695), (73, 79935, 80024), (73, 85264, 85353), (73, 90593, 90682), (79, 68651, 68740), (79, 74892, 74981), (79, 81133, 81222), (79, 87374, 87463)]

def row090_layer003_block004 : List ColouredInterval :=
  [(79, 93615, 93704), (79, 99856, 99945), (79, 106097, 106186), (83, 68890, 68979), (83, 75779, 75868), (83, 82668, 82757), (83, 89557, 89646), (83, 96446, 96535), (83, 103335, 103424), (83, 110224, 110313), (83, 117113, 117202), (89, 71289, 71378), (89, 79210, 79299), (89, 87131, 87220), (89, 95052, 95141), (89, 102973, 103062)]

def row090_layer003_block005 : List ColouredInterval :=
  [(89, 110894, 110983), (89, 118815, 118904), (89, 126736, 126825)]

def row090_layer003_chunks : List (List ColouredInterval) :=
  [row090_layer003_block000, row090_layer003_block001, row090_layer003_block002, row090_layer003_block003, row090_layer003_block004, row090_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_arithmetic : LayerArithmeticValid row090.height { lower := 64080, upper := 128160, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_enumeration :
    activePowerIntervalList 90 17 64080 128160 = row090_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_enumeration
