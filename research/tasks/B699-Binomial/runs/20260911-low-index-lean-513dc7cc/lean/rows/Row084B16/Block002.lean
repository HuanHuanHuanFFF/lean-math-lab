import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_chunks_eq : row084_layer000_chunks.flatten = row084_layer000_intervals := by
  rfl

theorem row084_layer000_pairs : pairCoverCheck row084_layer000_intervals row084_bounds = true := by
  apply pairCoverCheck_of_chunks row084_layer000_chunks_eq
  intro block hblock
  simp only [row084_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row084_layer000_pairs000
  · exact row084_layer000_pairs001
  · exact row084_layer000_pairs002
  · exact row084_layer000_pairs003
  · exact row084_layer000_pairs004
  · exact row084_layer000_pairs005
  · exact row084_layer000_pairs006
  · exact row084_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_checked :
    coverLayerCheck row084.height row084.goods { lower := 6972, upper := 13944, M := 31 } = true := by
  exact coverLayerCheck_of_parts row084_layer000_arithmetic row084_layer000_enumeration row084_bounds_eq row084_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row084_layer001_intervals : List ColouredInterval :=
  [(2, 16384, 16467), (2, 20480, 20563), (2, 24576, 24659), (2, 16384, 16467), (2, 24576, 24659), (2, 16384, 16467), (3, 15309, 15392), (3, 17496, 17579), (3, 19683, 19766), (3, 19683, 19766), (3, 26244, 26327), (3, 19683, 19766), (5, 14375, 14458), (5, 15000, 15083), (5, 15625, 15708), (5, 16250, 16333), (5, 16875, 16958), (5, 15625, 15708), (5, 18750, 18833), (5, 21875, 21958), (5, 25000, 25083), (5, 15625, 15708), (7, 16807, 16890), (11, 14641, 14724), (11, 15972, 16055), (11, 17303, 17386), (11, 18634, 18717), (11, 19965, 20048), (11, 21296, 21379), (11, 22627, 22710), (11, 23958, 24041), (11, 25289, 25372), (11, 26620, 26703), (11, 14641, 14724), (13, 15379, 15462), (13, 17576, 17659), (13, 19773, 19856), (13, 21970, 22053), (13, 24167, 24250), (13, 26364, 26447), (17, 14739, 14822), (17, 19652, 19735), (17, 24565, 24648), (19, 20577, 20660), (19, 27436, 27519), (23, 14283, 14366), (23, 24334, 24417), (29, 14297, 14380), (29, 15138, 15221), (29, 15979, 16062), (29, 16820, 16903), (29, 17661, 17744), (29, 18502, 18585), (29, 19343, 19426), (29, 20184, 20267), (29, 21025, 21108), (29, 21866, 21949), (29, 22707, 22790), (29, 24389, 24472), (31, 14415, 14498), (31, 15376, 15459), (31, 16337, 16420), (31, 17298, 17381), (31, 18259, 18342), (31, 19220, 19303), (31, 20181, 20264), (31, 21142, 21225), (31, 22103, 22186), (31, 23064, 23147), (31, 24025, 24108), (31, 24986, 25069), (31, 25947, 26030), (37, 15059, 15142), (37, 16428, 16511), (37, 17797, 17880), (37, 19166, 19249), (37, 20535, 20618), (37, 21904, 21987), (37, 23273, 23356), (37, 24642, 24725), (37, 26011, 26094), (37, 27380, 27463), (41, 15129, 15212), (41, 16810, 16893), (41, 18491, 18574), (41, 20172, 20255), (41, 21853, 21936), (41, 23534, 23617), (41, 25215, 25298), (41, 26896, 26979), (43, 14792, 14875), (43, 16641, 16724), (43, 18490, 18573), (43, 20339, 20422), (43, 22188, 22271), (43, 24037, 24120), (43, 25886, 25969), (43, 27735, 27818), (47, 15463, 15546), (47, 17672, 17755), (47, 19881, 19964), (47, 22090, 22173), (47, 24299, 24382), (47, 26508, 26591), (53, 14045, 14128), (53, 16854, 16937), (53, 19663, 19746), (53, 22472, 22555), (53, 25281, 25364), (59, 13944, 14007), (59, 17405, 17488), (59, 20886, 20969), (59, 24367, 24450), (59, 27848, 27887), (61, 14884, 14967), (61, 18605, 18688), (61, 22326, 22409), (61, 26047, 26130), (67, 17956, 18039), (67, 22445, 22528), (67, 26934, 27017), (71, 15123, 15206), (71, 20164, 20247), (71, 25205, 25288), (73, 15987, 16070), (73, 21316, 21399), (73, 26645, 26728), (79, 18723, 18806), (79, 24964, 25047), (83, 20667, 20750), (83, 27556, 27639)]

def row084_layer001_block000 : List ColouredInterval :=
  [(2, 16384, 16467), (2, 20480, 20563), (2, 24576, 24659), (2, 16384, 16467), (2, 24576, 24659), (2, 16384, 16467), (3, 15309, 15392), (3, 17496, 17579), (3, 19683, 19766), (3, 19683, 19766), (3, 26244, 26327), (3, 19683, 19766), (5, 14375, 14458), (5, 15000, 15083), (5, 15625, 15708)]

def row084_layer001_block001 : List ColouredInterval :=
  [(5, 16250, 16333), (5, 16875, 16958), (5, 15625, 15708), (5, 18750, 18833), (5, 21875, 21958), (5, 25000, 25083), (5, 15625, 15708), (7, 16807, 16890), (11, 14641, 14724), (11, 15972, 16055), (11, 17303, 17386), (11, 18634, 18717), (11, 19965, 20048), (11, 21296, 21379), (11, 22627, 22710)]

def row084_layer001_block002 : List ColouredInterval :=
  [(11, 23958, 24041), (11, 25289, 25372), (11, 26620, 26703), (11, 14641, 14724), (13, 15379, 15462), (13, 17576, 17659), (13, 19773, 19856), (13, 21970, 22053), (13, 24167, 24250), (13, 26364, 26447), (17, 14739, 14822), (17, 19652, 19735), (17, 24565, 24648), (19, 20577, 20660), (19, 27436, 27519)]

def row084_layer001_block003 : List ColouredInterval :=
  [(23, 14283, 14366), (23, 24334, 24417), (29, 14297, 14380), (29, 15138, 15221), (29, 15979, 16062), (29, 16820, 16903), (29, 17661, 17744), (29, 18502, 18585), (29, 19343, 19426), (29, 20184, 20267), (29, 21025, 21108), (29, 21866, 21949), (29, 22707, 22790), (29, 24389, 24472), (31, 14415, 14498)]

def row084_layer001_block004 : List ColouredInterval :=
  [(31, 15376, 15459), (31, 16337, 16420), (31, 17298, 17381), (31, 18259, 18342), (31, 19220, 19303), (31, 20181, 20264), (31, 21142, 21225), (31, 22103, 22186), (31, 23064, 23147), (31, 24025, 24108), (31, 24986, 25069), (31, 25947, 26030), (37, 15059, 15142), (37, 16428, 16511), (37, 17797, 17880)]

def row084_layer001_block005 : List ColouredInterval :=
  [(37, 19166, 19249), (37, 20535, 20618), (37, 21904, 21987), (37, 23273, 23356), (37, 24642, 24725), (37, 26011, 26094), (37, 27380, 27463), (41, 15129, 15212), (41, 16810, 16893), (41, 18491, 18574), (41, 20172, 20255), (41, 21853, 21936), (41, 23534, 23617), (41, 25215, 25298), (41, 26896, 26979)]

def row084_layer001_block006 : List ColouredInterval :=
  [(43, 14792, 14875), (43, 16641, 16724), (43, 18490, 18573), (43, 20339, 20422), (43, 22188, 22271), (43, 24037, 24120), (43, 25886, 25969), (43, 27735, 27818), (47, 15463, 15546), (47, 17672, 17755), (47, 19881, 19964), (47, 22090, 22173), (47, 24299, 24382), (47, 26508, 26591), (53, 14045, 14128)]

def row084_layer001_block007 : List ColouredInterval :=
  [(53, 16854, 16937), (53, 19663, 19746), (53, 22472, 22555), (53, 25281, 25364), (59, 13944, 14007), (59, 17405, 17488), (59, 20886, 20969), (59, 24367, 24450), (59, 27848, 27887), (61, 14884, 14967), (61, 18605, 18688), (61, 22326, 22409), (61, 26047, 26130), (67, 17956, 18039), (67, 22445, 22528)]

def row084_layer001_block008 : List ColouredInterval :=
  [(67, 26934, 27017), (71, 15123, 15206), (71, 20164, 20247), (71, 25205, 25288), (73, 15987, 16070), (73, 21316, 21399), (73, 26645, 26728), (79, 18723, 18806), (79, 24964, 25047), (83, 20667, 20750), (83, 27556, 27639)]

def row084_layer001_chunks : List (List ColouredInterval) :=
  [row084_layer001_block000, row084_layer001_block001, row084_layer001_block002, row084_layer001_block003, row084_layer001_block004, row084_layer001_block005, row084_layer001_block006, row084_layer001_block007, row084_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_arithmetic : LayerArithmeticValid row084.height { lower := 13944, upper := 27888, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_enumeration :
    activePowerIntervalList 84 27 13944 27888 = row084_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs000 :
    row084_layer001_block000.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs001 :
    row084_layer001_block001.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs002 :
    row084_layer001_block002.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs003 :
    row084_layer001_block003.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs004 :
    row084_layer001_block004.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs005 :
    row084_layer001_block005.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs006 :
    row084_layer001_block006.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs007 :
    row084_layer001_block007.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_pairs008 :
    row084_layer001_block008.all (fun I => row084_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_chunks_eq : row084_layer001_chunks.flatten = row084_layer001_intervals := by
  rfl

theorem row084_layer001_pairs : pairCoverCheck row084_layer001_intervals row084_bounds = true := by
  apply pairCoverCheck_of_chunks row084_layer001_chunks_eq
  intro block hblock
  simp only [row084_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row084_layer001_pairs000
  · exact row084_layer001_pairs001
  · exact row084_layer001_pairs002
  · exact row084_layer001_pairs003
  · exact row084_layer001_pairs004
  · exact row084_layer001_pairs005
  · exact row084_layer001_pairs006
  · exact row084_layer001_pairs007
  · exact row084_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer001_checked :
    coverLayerCheck row084.height row084.goods { lower := 13944, upper := 27888, M := 27 } = true := by
  exact coverLayerCheck_of_parts row084_layer001_arithmetic row084_layer001_enumeration row084_bounds_eq row084_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer001_checked
