import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer000_pairs007 :
    row081_layer000_block007.all (fun I => row081_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer000_pairs008 :
    row081_layer000_block008.all (fun I => row081_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer000_pairs009 :
    row081_layer000_block009.all (fun I => row081_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer000_chunks_eq : row081_layer000_chunks.flatten = row081_layer000_intervals := by
  rfl

theorem row081_layer000_pairs : pairCoverCheck row081_layer000_intervals row081_bounds = true := by
  apply pairCoverCheck_of_chunks row081_layer000_chunks_eq
  intro block hblock
  simp only [row081_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row081_layer000_pairs000
  · exact row081_layer000_pairs001
  · exact row081_layer000_pairs002
  · exact row081_layer000_pairs003
  · exact row081_layer000_pairs004
  · exact row081_layer000_pairs005
  · exact row081_layer000_pairs006
  · exact row081_layer000_pairs007
  · exact row081_layer000_pairs008
  · exact row081_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer000_checked :
    coverLayerCheck row081.height row081.goods { lower := 6480, upper := 12960, M := 29 } = true := by
  exact coverLayerCheck_of_parts row081_layer000_arithmetic row081_layer000_enumeration row081_bounds_eq row081_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row081_layer001_intervals : List ColouredInterval :=
  [(2, 13312, 13392), (2, 14336, 14416), (2, 15360, 15440), (2, 16384, 16464), (2, 17408, 17488), (2, 18432, 18512), (2, 19456, 19536), (2, 20480, 20560), (2, 21504, 21584), (2, 22528, 22608), (2, 23552, 23632), (2, 24576, 24656), (2, 25600, 25680), (2, 14336, 14416), (2, 16384, 16464), (2, 18432, 18512), (2, 20480, 20560), (2, 22528, 22608), (2, 24576, 24656), (2, 16384, 16464), (2, 20480, 20560), (2, 24576, 24656), (2, 16384, 16464), (2, 24576, 24656), (2, 16384, 16464), (5, 13125, 13205), (5, 13750, 13830), (5, 14375, 14455), (5, 15000, 15080), (5, 15625, 15705), (5, 15625, 15705), (5, 18750, 18830), (5, 21875, 21955), (5, 25000, 25080), (5, 15625, 15705), (7, 14406, 14486), (7, 16807, 16887), (7, 19208, 19288), (7, 21609, 21689), (7, 24010, 24090), (7, 16807, 16887), (11, 13310, 13390), (11, 14641, 14721), (11, 15972, 16052), (11, 17303, 17383), (11, 18634, 18714), (11, 19965, 20045), (11, 21296, 21376), (11, 22627, 22707), (11, 23958, 24038), (11, 25289, 25369), (11, 14641, 14721), (13, 13182, 13262), (13, 15379, 15459), (13, 17576, 17656), (13, 19773, 19853), (13, 21970, 22050), (13, 24167, 24247), (17, 14739, 14819), (17, 19652, 19732), (17, 24565, 24645), (19, 13718, 13798), (19, 20577, 20657), (23, 13225, 13305), (23, 24334, 24414), (29, 13456, 13536), (29, 14297, 14377), (29, 15138, 15218), (29, 15979, 16059), (29, 16820, 16900), (29, 17661, 17741), (29, 18502, 18582), (29, 19343, 19423), (29, 20184, 20264), (29, 21025, 21105), (29, 24389, 24469), (31, 13454, 13534), (31, 14415, 14495), (31, 15376, 15456), (31, 16337, 16417), (31, 17298, 17378), (31, 18259, 18339), (31, 19220, 19300), (31, 20181, 20261), (31, 21142, 21222), (31, 22103, 22183), (31, 23064, 23144), (31, 24025, 24105), (37, 13690, 13770), (37, 15059, 15139), (37, 16428, 16508), (37, 17797, 17877), (37, 19166, 19246), (37, 20535, 20615), (37, 21904, 21984), (37, 23273, 23353), (37, 24642, 24722), (41, 13448, 13528), (41, 15129, 15209), (41, 16810, 16890), (41, 18491, 18571), (41, 20172, 20252), (41, 21853, 21933), (41, 23534, 23614), (41, 25215, 25295), (43, 12960, 13023), (43, 14792, 14872), (43, 16641, 16721), (43, 18490, 18570), (43, 20339, 20419), (43, 22188, 22268), (43, 24037, 24117), (43, 25886, 25919), (47, 13254, 13334), (47, 15463, 15543), (47, 17672, 17752), (47, 19881, 19961), (47, 22090, 22170), (47, 24299, 24379), (53, 14045, 14125), (53, 16854, 16934), (53, 19663, 19743), (53, 22472, 22552), (53, 25281, 25361), (59, 13924, 14004), (59, 17405, 17485), (59, 20886, 20966), (59, 24367, 24447), (61, 14884, 14964), (61, 18605, 18685), (61, 22326, 22406), (67, 13467, 13547), (67, 17956, 18036), (67, 22445, 22525), (71, 15123, 15203), (71, 20164, 20244), (71, 25205, 25285), (73, 15987, 16067), (73, 21316, 21396), (79, 18723, 18803), (79, 24964, 25044)]

def row081_layer001_block000 : List ColouredInterval :=
  [(2, 13312, 13392), (2, 14336, 14416), (2, 15360, 15440), (2, 16384, 16464), (2, 17408, 17488), (2, 18432, 18512), (2, 19456, 19536), (2, 20480, 20560), (2, 21504, 21584), (2, 22528, 22608), (2, 23552, 23632), (2, 24576, 24656), (2, 25600, 25680), (2, 14336, 14416)]

def row081_layer001_block001 : List ColouredInterval :=
  [(2, 16384, 16464), (2, 18432, 18512), (2, 20480, 20560), (2, 22528, 22608), (2, 24576, 24656), (2, 16384, 16464), (2, 20480, 20560), (2, 24576, 24656), (2, 16384, 16464), (2, 24576, 24656), (2, 16384, 16464), (5, 13125, 13205), (5, 13750, 13830), (5, 14375, 14455)]

def row081_layer001_block002 : List ColouredInterval :=
  [(5, 15000, 15080), (5, 15625, 15705), (5, 15625, 15705), (5, 18750, 18830), (5, 21875, 21955), (5, 25000, 25080), (5, 15625, 15705), (7, 14406, 14486), (7, 16807, 16887), (7, 19208, 19288), (7, 21609, 21689), (7, 24010, 24090), (7, 16807, 16887), (11, 13310, 13390)]

def row081_layer001_block003 : List ColouredInterval :=
  [(11, 14641, 14721), (11, 15972, 16052), (11, 17303, 17383), (11, 18634, 18714), (11, 19965, 20045), (11, 21296, 21376), (11, 22627, 22707), (11, 23958, 24038), (11, 25289, 25369), (11, 14641, 14721), (13, 13182, 13262), (13, 15379, 15459), (13, 17576, 17656), (13, 19773, 19853)]

def row081_layer001_block004 : List ColouredInterval :=
  [(13, 21970, 22050), (13, 24167, 24247), (17, 14739, 14819), (17, 19652, 19732), (17, 24565, 24645), (19, 13718, 13798), (19, 20577, 20657), (23, 13225, 13305), (23, 24334, 24414), (29, 13456, 13536), (29, 14297, 14377), (29, 15138, 15218), (29, 15979, 16059), (29, 16820, 16900)]

def row081_layer001_block005 : List ColouredInterval :=
  [(29, 17661, 17741), (29, 18502, 18582), (29, 19343, 19423), (29, 20184, 20264), (29, 21025, 21105), (29, 24389, 24469), (31, 13454, 13534), (31, 14415, 14495), (31, 15376, 15456), (31, 16337, 16417), (31, 17298, 17378), (31, 18259, 18339), (31, 19220, 19300), (31, 20181, 20261)]

def row081_layer001_block006 : List ColouredInterval :=
  [(31, 21142, 21222), (31, 22103, 22183), (31, 23064, 23144), (31, 24025, 24105), (37, 13690, 13770), (37, 15059, 15139), (37, 16428, 16508), (37, 17797, 17877), (37, 19166, 19246), (37, 20535, 20615), (37, 21904, 21984), (37, 23273, 23353), (37, 24642, 24722), (41, 13448, 13528)]

def row081_layer001_block007 : List ColouredInterval :=
  [(41, 15129, 15209), (41, 16810, 16890), (41, 18491, 18571), (41, 20172, 20252), (41, 21853, 21933), (41, 23534, 23614), (41, 25215, 25295), (43, 12960, 13023), (43, 14792, 14872), (43, 16641, 16721), (43, 18490, 18570), (43, 20339, 20419), (43, 22188, 22268), (43, 24037, 24117)]

def row081_layer001_block008 : List ColouredInterval :=
  [(43, 25886, 25919), (47, 13254, 13334), (47, 15463, 15543), (47, 17672, 17752), (47, 19881, 19961), (47, 22090, 22170), (47, 24299, 24379), (53, 14045, 14125), (53, 16854, 16934), (53, 19663, 19743), (53, 22472, 22552), (53, 25281, 25361), (59, 13924, 14004), (59, 17405, 17485)]

def row081_layer001_block009 : List ColouredInterval :=
  [(59, 20886, 20966), (59, 24367, 24447), (61, 14884, 14964), (61, 18605, 18685), (61, 22326, 22406), (67, 13467, 13547), (67, 17956, 18036), (67, 22445, 22525), (71, 15123, 15203), (71, 20164, 20244), (71, 25205, 25285), (73, 15987, 16067), (73, 21316, 21396), (79, 18723, 18803)]

def row081_layer001_block010 : List ColouredInterval :=
  [(79, 24964, 25044)]

def row081_layer001_chunks : List (List ColouredInterval) :=
  [row081_layer001_block000, row081_layer001_block001, row081_layer001_block002, row081_layer001_block003, row081_layer001_block004, row081_layer001_block005, row081_layer001_block006, row081_layer001_block007, row081_layer001_block008, row081_layer001_block009, row081_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_arithmetic : LayerArithmeticValid row081.height { lower := 12960, upper := 25920, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_enumeration :
    activePowerIntervalList 81 25 12960 25920 = row081_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs000 :
    row081_layer001_block000.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs001 :
    row081_layer001_block001.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs002 :
    row081_layer001_block002.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs003 :
    row081_layer001_block003.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs004 :
    row081_layer001_block004.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs005 :
    row081_layer001_block005.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs006 :
    row081_layer001_block006.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs007 :
    row081_layer001_block007.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs008 :
    row081_layer001_block008.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs009 :
    row081_layer001_block009.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_pairs010 :
    row081_layer001_block010.all (fun I => row081_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_chunks_eq : row081_layer001_chunks.flatten = row081_layer001_intervals := by
  rfl

theorem row081_layer001_pairs : pairCoverCheck row081_layer001_intervals row081_bounds = true := by
  apply pairCoverCheck_of_chunks row081_layer001_chunks_eq
  intro block hblock
  simp only [row081_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row081_layer001_pairs000
  · exact row081_layer001_pairs001
  · exact row081_layer001_pairs002
  · exact row081_layer001_pairs003
  · exact row081_layer001_pairs004
  · exact row081_layer001_pairs005
  · exact row081_layer001_pairs006
  · exact row081_layer001_pairs007
  · exact row081_layer001_pairs008
  · exact row081_layer001_pairs009
  · exact row081_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer001_checked :
    coverLayerCheck row081.height row081.goods { lower := 12960, upper := 25920, M := 25 } = true := by
  exact coverLayerCheck_of_parts row081_layer001_arithmetic row081_layer001_enumeration row081_bounds_eq row081_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row081_layer002_intervals : List ColouredInterval :=
  [(2, 26624, 26704), (2, 28672, 28752), (2, 30720, 30800), (2, 32768, 32848), (2, 34816, 34896), (2, 36864, 36944), (2, 38912, 38992), (2, 40960, 41040), (2, 43008, 43088), (2, 45056, 45136), (2, 28672, 28752), (2, 32768, 32848), (2, 36864, 36944), (2, 40960, 41040), (2, 45056, 45136), (2, 49152, 49232), (2, 32768, 32848), (2, 40960, 41040), (2, 49152, 49232), (2, 32768, 32848), (2, 49152, 49232), (2, 32768, 32848), (5, 28125, 28205), (5, 31250, 31330), (5, 34375, 34455), (5, 37500, 37580), (5, 40625, 40705), (5, 43750, 43830), (5, 46875, 46955), (5, 50000, 50080), (5, 31250, 31330), (5, 46875, 46955), (7, 26411, 26491), (7, 28812, 28892), (7, 31213, 31293), (7, 33614, 33694), (7, 36015, 36095), (7, 38416, 38496), (7, 40817, 40897), (7, 43218, 43298), (7, 45619, 45699), (7, 48020, 48100), (7, 50421, 50501), (7, 33614, 33694), (7, 50421, 50501), (11, 26620, 26700), (11, 27951, 28031), (11, 29282, 29362), (11, 29282, 29362), (11, 43923, 44003), (13, 26364, 26444), (13, 28561, 28641), (13, 30758, 30838), (13, 32955, 33035), (13, 35152, 35232), (13, 37349, 37429), (13, 39546, 39626), (13, 41743, 41823), (13, 43940, 44020), (13, 46137, 46217), (13, 48334, 48414), (13, 28561, 28641), (17, 29478, 29558), (17, 34391, 34471), (17, 39304, 39384), (17, 44217, 44297), (17, 49130, 49210), (19, 27436, 27516), (19, 34295, 34375), (19, 41154, 41234), (19, 48013, 48093), (23, 36501, 36581), (23, 48668, 48748), (29, 48778, 48858), (31, 29791, 29871), (37, 26011, 26091), (37, 27380, 27460), (37, 28749, 28829), (37, 30118, 30198), (37, 50653, 50733), (41, 26896, 26976), (41, 28577, 28657), (41, 30258, 30338), (41, 31939, 32019), (41, 33620, 33700), (41, 35301, 35381), (41, 36982, 37062), (43, 25920, 25966), (43, 27735, 27815), (43, 29584, 29664), (43, 31433, 31513), (43, 33282, 33362), (43, 35131, 35211), (43, 36980, 37060), (43, 38829, 38909), (43, 40678, 40758), (47, 26508, 26588), (47, 28717, 28797), (47, 30926, 31006), (47, 33135, 33215), (47, 35344, 35424), (47, 37553, 37633), (47, 39762, 39842), (47, 41971, 42051), (47, 44180, 44260), (47, 46389, 46469), (47, 48598, 48678), (53, 28090, 28170), (53, 30899, 30979), (53, 33708, 33788), (53, 36517, 36597), (53, 39326, 39406), (53, 42135, 42215), (53, 44944, 45024), (53, 47753, 47833), (53, 50562, 50642), (59, 27848, 27928), (59, 31329, 31409), (59, 34810, 34890), (59, 38291, 38371), (59, 41772, 41852), (59, 45253, 45333), (59, 48734, 48814), (61, 26047, 26127), (61, 29768, 29848), (61, 33489, 33569), (61, 37210, 37290), (61, 40931, 41011), (61, 44652, 44732), (61, 48373, 48453), (67, 26934, 27014), (67, 31423, 31503), (67, 35912, 35992), (67, 40401, 40481), (67, 44890, 44970), (67, 49379, 49459), (71, 30246, 30326), (71, 35287, 35367), (71, 40328, 40408), (71, 45369, 45449), (71, 50410, 50490), (73, 26645, 26725), (73, 31974, 32054), (73, 37303, 37383), (73, 42632, 42712), (73, 47961, 48041), (79, 31205, 31285), (79, 37446, 37526), (79, 43687, 43767), (79, 49928, 50008)]

def row081_layer002_block000 : List ColouredInterval :=
  [(2, 26624, 26704), (2, 28672, 28752), (2, 30720, 30800), (2, 32768, 32848), (2, 34816, 34896), (2, 36864, 36944), (2, 38912, 38992), (2, 40960, 41040), (2, 43008, 43088), (2, 45056, 45136), (2, 28672, 28752), (2, 32768, 32848), (2, 36864, 36944)]

def row081_layer002_block001 : List ColouredInterval :=
  [(2, 40960, 41040), (2, 45056, 45136), (2, 49152, 49232), (2, 32768, 32848), (2, 40960, 41040), (2, 49152, 49232), (2, 32768, 32848), (2, 49152, 49232), (2, 32768, 32848), (5, 28125, 28205), (5, 31250, 31330), (5, 34375, 34455), (5, 37500, 37580)]

def row081_layer002_block002 : List ColouredInterval :=
  [(5, 40625, 40705), (5, 43750, 43830), (5, 46875, 46955), (5, 50000, 50080), (5, 31250, 31330), (5, 46875, 46955), (7, 26411, 26491), (7, 28812, 28892), (7, 31213, 31293), (7, 33614, 33694), (7, 36015, 36095), (7, 38416, 38496), (7, 40817, 40897)]

def row081_layer002_block003 : List ColouredInterval :=
  [(7, 43218, 43298), (7, 45619, 45699), (7, 48020, 48100), (7, 50421, 50501), (7, 33614, 33694), (7, 50421, 50501), (11, 26620, 26700), (11, 27951, 28031), (11, 29282, 29362), (11, 29282, 29362), (11, 43923, 44003), (13, 26364, 26444), (13, 28561, 28641)]

def row081_layer002_block004 : List ColouredInterval :=
  [(13, 30758, 30838), (13, 32955, 33035), (13, 35152, 35232), (13, 37349, 37429), (13, 39546, 39626), (13, 41743, 41823), (13, 43940, 44020), (13, 46137, 46217), (13, 48334, 48414), (13, 28561, 28641), (17, 29478, 29558), (17, 34391, 34471), (17, 39304, 39384)]

def row081_layer002_block005 : List ColouredInterval :=
  [(17, 44217, 44297), (17, 49130, 49210), (19, 27436, 27516), (19, 34295, 34375), (19, 41154, 41234), (19, 48013, 48093), (23, 36501, 36581), (23, 48668, 48748), (29, 48778, 48858), (31, 29791, 29871), (37, 26011, 26091), (37, 27380, 27460), (37, 28749, 28829)]

def row081_layer002_block006 : List ColouredInterval :=
  [(37, 30118, 30198), (37, 50653, 50733), (41, 26896, 26976), (41, 28577, 28657), (41, 30258, 30338), (41, 31939, 32019), (41, 33620, 33700), (41, 35301, 35381), (41, 36982, 37062), (43, 25920, 25966), (43, 27735, 27815), (43, 29584, 29664), (43, 31433, 31513)]

def row081_layer002_block007 : List ColouredInterval :=
  [(43, 33282, 33362), (43, 35131, 35211), (43, 36980, 37060), (43, 38829, 38909), (43, 40678, 40758), (47, 26508, 26588), (47, 28717, 28797), (47, 30926, 31006), (47, 33135, 33215), (47, 35344, 35424), (47, 37553, 37633), (47, 39762, 39842), (47, 41971, 42051)]

def row081_layer002_block008 : List ColouredInterval :=
  [(47, 44180, 44260), (47, 46389, 46469), (47, 48598, 48678), (53, 28090, 28170), (53, 30899, 30979), (53, 33708, 33788), (53, 36517, 36597), (53, 39326, 39406), (53, 42135, 42215), (53, 44944, 45024), (53, 47753, 47833), (53, 50562, 50642), (59, 27848, 27928)]

def row081_layer002_block009 : List ColouredInterval :=
  [(59, 31329, 31409), (59, 34810, 34890), (59, 38291, 38371), (59, 41772, 41852), (59, 45253, 45333), (59, 48734, 48814), (61, 26047, 26127), (61, 29768, 29848), (61, 33489, 33569), (61, 37210, 37290), (61, 40931, 41011), (61, 44652, 44732), (61, 48373, 48453)]

def row081_layer002_block010 : List ColouredInterval :=
  [(67, 26934, 27014), (67, 31423, 31503), (67, 35912, 35992), (67, 40401, 40481), (67, 44890, 44970), (67, 49379, 49459), (71, 30246, 30326), (71, 35287, 35367), (71, 40328, 40408), (71, 45369, 45449), (71, 50410, 50490), (73, 26645, 26725), (73, 31974, 32054)]

def row081_layer002_block011 : List ColouredInterval :=
  [(73, 37303, 37383), (73, 42632, 42712), (73, 47961, 48041), (79, 31205, 31285), (79, 37446, 37526), (79, 43687, 43767), (79, 49928, 50008)]

def row081_layer002_chunks : List (List ColouredInterval) :=
  [row081_layer002_block000, row081_layer002_block001, row081_layer002_block002, row081_layer002_block003, row081_layer002_block004, row081_layer002_block005, row081_layer002_block006, row081_layer002_block007, row081_layer002_block008, row081_layer002_block009, row081_layer002_block010, row081_layer002_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_arithmetic : LayerArithmeticValid row081.height { lower := 25920, upper := 51840, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_enumeration :
    activePowerIntervalList 81 22 25920 51840 = row081_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs000 :
    row081_layer002_block000.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs001 :
    row081_layer002_block001.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs002 :
    row081_layer002_block002.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs003 :
    row081_layer002_block003.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs004 :
    row081_layer002_block004.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs005 :
    row081_layer002_block005.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs006 :
    row081_layer002_block006.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs007 :
    row081_layer002_block007.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs007
