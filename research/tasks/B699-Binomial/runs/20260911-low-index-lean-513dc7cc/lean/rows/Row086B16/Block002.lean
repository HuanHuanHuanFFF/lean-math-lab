import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_pairs008 :
    row086_layer000_block008.all (fun I => row086_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_chunks_eq : row086_layer000_chunks.flatten = row086_layer000_intervals := by
  rfl

theorem row086_layer000_pairs : pairCoverCheck row086_layer000_intervals row086_bounds = true := by
  apply pairCoverCheck_of_chunks row086_layer000_chunks_eq
  intro block hblock
  simp only [row086_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row086_layer000_pairs000
  · exact row086_layer000_pairs001
  · exact row086_layer000_pairs002
  · exact row086_layer000_pairs003
  · exact row086_layer000_pairs004
  · exact row086_layer000_pairs005
  · exact row086_layer000_pairs006
  · exact row086_layer000_pairs007
  · exact row086_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer000_checked :
    coverLayerCheck row086.height row086.goods { lower := 7310, upper := 14620, M := 28 } = true := by
  exact coverLayerCheck_of_parts row086_layer000_arithmetic row086_layer000_enumeration row086_bounds_eq row086_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row086_layer001_intervals : List ColouredInterval :=
  [(2, 16384, 16469), (2, 18432, 18517), (2, 20480, 20565), (2, 22528, 22613), (2, 24576, 24661), (2, 16384, 16469), (2, 20480, 20565), (2, 24576, 24661), (2, 28672, 28757), (2, 16384, 16469), (2, 24576, 24661), (2, 16384, 16469), (3, 14620, 14665), (3, 15309, 15394), (3, 16038, 16123), (3, 16767, 16852), (3, 17496, 17581), (3, 15309, 15394), (3, 17496, 17581), (3, 19683, 19768), (3, 21870, 21955), (3, 24057, 24142), (3, 26244, 26329), (3, 28431, 28516), (3, 19683, 19768), (3, 26244, 26329), (3, 19683, 19768), (5, 15000, 15085), (5, 15625, 15710), (5, 18750, 18835), (5, 21875, 21960), (5, 25000, 25085), (5, 28125, 28210), (5, 15625, 15710), (7, 16807, 16892), (7, 19208, 19293), (7, 21609, 21694), (7, 24010, 24095), (7, 26411, 26496), (7, 28812, 28897), (7, 16807, 16892), (11, 14641, 14726), (11, 15972, 16057), (11, 17303, 17388), (11, 18634, 18719), (11, 19965, 20050), (11, 21296, 21381), (11, 22627, 22712), (11, 23958, 24043), (11, 25289, 25374), (11, 26620, 26705), (11, 27951, 28036), (11, 14641, 14726), (13, 15379, 15464), (13, 17576, 17661), (13, 19773, 19858), (13, 21970, 22055), (13, 24167, 24252), (13, 26364, 26449), (13, 28561, 28646), (13, 28561, 28646), (17, 14739, 14824), (17, 19652, 19737), (17, 24565, 24650), (19, 20577, 20662), (19, 27436, 27521), (23, 24334, 24419), (29, 15138, 15223), (29, 15979, 16064), (29, 16820, 16905), (29, 17661, 17746), (29, 18502, 18587), (29, 19343, 19428), (29, 20184, 20269), (29, 24389, 24474), (31, 15376, 15461), (31, 16337, 16422), (31, 17298, 17383), (31, 18259, 18344), (31, 19220, 19305), (31, 20181, 20266), (31, 21142, 21227), (31, 22103, 22188), (31, 23064, 23149), (37, 15059, 15144), (37, 16428, 16513), (37, 17797, 17882), (37, 19166, 19251), (37, 20535, 20620), (37, 21904, 21989), (37, 23273, 23358), (37, 24642, 24727), (37, 26011, 26096), (37, 27380, 27465), (37, 28749, 28834), (41, 15129, 15214), (41, 16810, 16895), (41, 18491, 18576), (41, 20172, 20257), (41, 21853, 21938), (41, 23534, 23619), (41, 25215, 25300), (41, 26896, 26981), (41, 28577, 28662), (47, 15463, 15548), (47, 17672, 17757), (47, 19881, 19966), (47, 22090, 22175), (47, 24299, 24384), (47, 26508, 26593), (47, 28717, 28802), (53, 16854, 16939), (53, 19663, 19748), (53, 22472, 22557), (53, 25281, 25366), (53, 28090, 28175), (59, 17405, 17490), (59, 20886, 20971), (59, 24367, 24452), (59, 27848, 27933), (61, 14884, 14969), (61, 18605, 18690), (61, 22326, 22411), (61, 26047, 26132), (67, 17956, 18041), (67, 22445, 22530), (67, 26934, 27019), (71, 15123, 15208), (71, 20164, 20249), (71, 25205, 25290), (73, 15987, 16072), (73, 21316, 21401), (73, 26645, 26730), (79, 18723, 18808), (79, 24964, 25049), (83, 20667, 20752), (83, 27556, 27641)]

def row086_layer001_block000 : List ColouredInterval :=
  [(2, 16384, 16469), (2, 18432, 18517), (2, 20480, 20565), (2, 22528, 22613), (2, 24576, 24661), (2, 16384, 16469), (2, 20480, 20565), (2, 24576, 24661), (2, 28672, 28757), (2, 16384, 16469), (2, 24576, 24661), (2, 16384, 16469), (3, 14620, 14665), (3, 15309, 15394)]

def row086_layer001_block001 : List ColouredInterval :=
  [(3, 16038, 16123), (3, 16767, 16852), (3, 17496, 17581), (3, 15309, 15394), (3, 17496, 17581), (3, 19683, 19768), (3, 21870, 21955), (3, 24057, 24142), (3, 26244, 26329), (3, 28431, 28516), (3, 19683, 19768), (3, 26244, 26329), (3, 19683, 19768), (5, 15000, 15085)]

def row086_layer001_block002 : List ColouredInterval :=
  [(5, 15625, 15710), (5, 18750, 18835), (5, 21875, 21960), (5, 25000, 25085), (5, 28125, 28210), (5, 15625, 15710), (7, 16807, 16892), (7, 19208, 19293), (7, 21609, 21694), (7, 24010, 24095), (7, 26411, 26496), (7, 28812, 28897), (7, 16807, 16892), (11, 14641, 14726)]

def row086_layer001_block003 : List ColouredInterval :=
  [(11, 15972, 16057), (11, 17303, 17388), (11, 18634, 18719), (11, 19965, 20050), (11, 21296, 21381), (11, 22627, 22712), (11, 23958, 24043), (11, 25289, 25374), (11, 26620, 26705), (11, 27951, 28036), (11, 14641, 14726), (13, 15379, 15464), (13, 17576, 17661), (13, 19773, 19858)]

def row086_layer001_block004 : List ColouredInterval :=
  [(13, 21970, 22055), (13, 24167, 24252), (13, 26364, 26449), (13, 28561, 28646), (13, 28561, 28646), (17, 14739, 14824), (17, 19652, 19737), (17, 24565, 24650), (19, 20577, 20662), (19, 27436, 27521), (23, 24334, 24419), (29, 15138, 15223), (29, 15979, 16064), (29, 16820, 16905)]

def row086_layer001_block005 : List ColouredInterval :=
  [(29, 17661, 17746), (29, 18502, 18587), (29, 19343, 19428), (29, 20184, 20269), (29, 24389, 24474), (31, 15376, 15461), (31, 16337, 16422), (31, 17298, 17383), (31, 18259, 18344), (31, 19220, 19305), (31, 20181, 20266), (31, 21142, 21227), (31, 22103, 22188), (31, 23064, 23149)]

def row086_layer001_block006 : List ColouredInterval :=
  [(37, 15059, 15144), (37, 16428, 16513), (37, 17797, 17882), (37, 19166, 19251), (37, 20535, 20620), (37, 21904, 21989), (37, 23273, 23358), (37, 24642, 24727), (37, 26011, 26096), (37, 27380, 27465), (37, 28749, 28834), (41, 15129, 15214), (41, 16810, 16895), (41, 18491, 18576)]

def row086_layer001_block007 : List ColouredInterval :=
  [(41, 20172, 20257), (41, 21853, 21938), (41, 23534, 23619), (41, 25215, 25300), (41, 26896, 26981), (41, 28577, 28662), (47, 15463, 15548), (47, 17672, 17757), (47, 19881, 19966), (47, 22090, 22175), (47, 24299, 24384), (47, 26508, 26593), (47, 28717, 28802), (53, 16854, 16939)]

def row086_layer001_block008 : List ColouredInterval :=
  [(53, 19663, 19748), (53, 22472, 22557), (53, 25281, 25366), (53, 28090, 28175), (59, 17405, 17490), (59, 20886, 20971), (59, 24367, 24452), (59, 27848, 27933), (61, 14884, 14969), (61, 18605, 18690), (61, 22326, 22411), (61, 26047, 26132), (67, 17956, 18041), (67, 22445, 22530)]

def row086_layer001_block009 : List ColouredInterval :=
  [(67, 26934, 27019), (71, 15123, 15208), (71, 20164, 20249), (71, 25205, 25290), (73, 15987, 16072), (73, 21316, 21401), (73, 26645, 26730), (79, 18723, 18808), (79, 24964, 25049), (83, 20667, 20752), (83, 27556, 27641)]

def row086_layer001_chunks : List (List ColouredInterval) :=
  [row086_layer001_block000, row086_layer001_block001, row086_layer001_block002, row086_layer001_block003, row086_layer001_block004, row086_layer001_block005, row086_layer001_block006, row086_layer001_block007, row086_layer001_block008, row086_layer001_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_arithmetic : LayerArithmeticValid row086.height { lower := 14620, upper := 29240, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_enumeration :
    activePowerIntervalList 86 24 14620 29240 = row086_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs000 :
    row086_layer001_block000.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs001 :
    row086_layer001_block001.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs002 :
    row086_layer001_block002.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs003 :
    row086_layer001_block003.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs004 :
    row086_layer001_block004.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs005 :
    row086_layer001_block005.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs006 :
    row086_layer001_block006.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs007 :
    row086_layer001_block007.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs008 :
    row086_layer001_block008.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_pairs009 :
    row086_layer001_block009.all (fun I => row086_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs009
