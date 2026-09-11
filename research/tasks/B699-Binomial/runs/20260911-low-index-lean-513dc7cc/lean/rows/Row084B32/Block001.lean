import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084B32.Block000
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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row084_layer002_intervals : List ColouredInterval :=
  [(2, 32768, 32851), (2, 40960, 41043), (2, 49152, 49235), (2, 32768, 32851), (2, 49152, 49235), (2, 32768, 32851), (3, 32805, 32888), (3, 39366, 39449), (3, 45927, 46010), (3, 52488, 52571), (3, 39366, 39449), (5, 28125, 28208), (5, 31250, 31333), (5, 34375, 34458), (5, 37500, 37583), (5, 40625, 40708), (5, 43750, 43833), (5, 46875, 46958), (5, 50000, 50083), (5, 53125, 53208), (5, 31250, 31333), (5, 46875, 46958), (7, 33614, 33697), (7, 50421, 50504), (11, 27951, 28034), (11, 29282, 29365), (11, 30613, 30696), (11, 31944, 32027), (11, 29282, 29365), (11, 43923, 44006), (13, 28561, 28644), (13, 30758, 30841), (13, 32955, 33038), (13, 35152, 35235), (13, 37349, 37432), (13, 39546, 39629), (13, 41743, 41826), (13, 43940, 44023), (13, 46137, 46220), (13, 48334, 48417), (13, 50531, 50614), (13, 52728, 52811), (13, 28561, 28644), (17, 29478, 29561), (17, 34391, 34474), (17, 39304, 39387), (17, 44217, 44300), (17, 49130, 49213), (17, 54043, 54126), (19, 34295, 34378), (19, 41154, 41237), (19, 48013, 48096), (19, 54872, 54955), (23, 36501, 36584), (23, 48668, 48751), (29, 48778, 48861), (31, 29791, 29874), (37, 28749, 28832), (37, 30118, 30201), (37, 31487, 31570), (37, 32856, 32939), (37, 50653, 50736), (41, 28577, 28660), (41, 30258, 30341), (41, 31939, 32022), (41, 33620, 33703), (41, 35301, 35384), (41, 36982, 37065), (41, 38663, 38746), (41, 40344, 40427), (43, 29584, 29667), (43, 31433, 31516), (43, 33282, 33365), (43, 35131, 35214), (43, 36980, 37063), (43, 38829, 38912), (43, 40678, 40761), (43, 42527, 42610), (43, 44376, 44459), (47, 28717, 28800), (47, 30926, 31009), (47, 33135, 33218), (47, 35344, 35427), (47, 37553, 37636), (47, 39762, 39845), (47, 41971, 42054), (47, 44180, 44263), (47, 46389, 46472), (47, 48598, 48681), (47, 50807, 50890), (47, 53016, 53099), (53, 28090, 28173), (53, 30899, 30982), (53, 33708, 33791), (53, 36517, 36600), (53, 39326, 39409), (53, 42135, 42218), (53, 44944, 45027), (53, 47753, 47836), (53, 50562, 50645), (53, 53371, 53454), (59, 27888, 27931), (59, 31329, 31412), (59, 34810, 34893), (59, 38291, 38374), (59, 41772, 41855), (59, 45253, 45336), (59, 48734, 48817), (59, 52215, 52298), (59, 55696, 55775), (61, 29768, 29851), (61, 33489, 33572), (61, 37210, 37293), (61, 40931, 41014), (61, 44652, 44735), (61, 48373, 48456), (61, 52094, 52177), (67, 31423, 31506), (67, 35912, 35995), (67, 40401, 40484), (67, 44890, 44973), (67, 49379, 49462), (67, 53868, 53951), (71, 30246, 30329), (71, 35287, 35370), (71, 40328, 40411), (71, 45369, 45452), (71, 50410, 50493), (71, 55451, 55534), (73, 31974, 32057), (73, 37303, 37386), (73, 42632, 42715), (73, 47961, 48044), (73, 53290, 53373), (79, 31205, 31288), (79, 37446, 37529), (79, 43687, 43770), (79, 49928, 50011), (83, 34445, 34528), (83, 41334, 41417), (83, 48223, 48306), (83, 55112, 55195)]

def row084_layer002_block000 : List ColouredInterval :=
  [(2, 32768, 32851), (2, 40960, 41043), (2, 49152, 49235), (2, 32768, 32851), (2, 49152, 49235), (2, 32768, 32851), (3, 32805, 32888), (3, 39366, 39449), (3, 45927, 46010), (3, 52488, 52571), (3, 39366, 39449), (5, 28125, 28208), (5, 31250, 31333), (5, 34375, 34458)]

def row084_layer002_block001 : List ColouredInterval :=
  [(5, 37500, 37583), (5, 40625, 40708), (5, 43750, 43833), (5, 46875, 46958), (5, 50000, 50083), (5, 53125, 53208), (5, 31250, 31333), (5, 46875, 46958), (7, 33614, 33697), (7, 50421, 50504), (11, 27951, 28034), (11, 29282, 29365), (11, 30613, 30696), (11, 31944, 32027)]

def row084_layer002_block002 : List ColouredInterval :=
  [(11, 29282, 29365), (11, 43923, 44006), (13, 28561, 28644), (13, 30758, 30841), (13, 32955, 33038), (13, 35152, 35235), (13, 37349, 37432), (13, 39546, 39629), (13, 41743, 41826), (13, 43940, 44023), (13, 46137, 46220), (13, 48334, 48417), (13, 50531, 50614), (13, 52728, 52811)]

def row084_layer002_block003 : List ColouredInterval :=
  [(13, 28561, 28644), (17, 29478, 29561), (17, 34391, 34474), (17, 39304, 39387), (17, 44217, 44300), (17, 49130, 49213), (17, 54043, 54126), (19, 34295, 34378), (19, 41154, 41237), (19, 48013, 48096), (19, 54872, 54955), (23, 36501, 36584), (23, 48668, 48751), (29, 48778, 48861)]

def row084_layer002_block004 : List ColouredInterval :=
  [(31, 29791, 29874), (37, 28749, 28832), (37, 30118, 30201), (37, 31487, 31570), (37, 32856, 32939), (37, 50653, 50736), (41, 28577, 28660), (41, 30258, 30341), (41, 31939, 32022), (41, 33620, 33703), (41, 35301, 35384), (41, 36982, 37065), (41, 38663, 38746), (41, 40344, 40427)]

def row084_layer002_block005 : List ColouredInterval :=
  [(43, 29584, 29667), (43, 31433, 31516), (43, 33282, 33365), (43, 35131, 35214), (43, 36980, 37063), (43, 38829, 38912), (43, 40678, 40761), (43, 42527, 42610), (43, 44376, 44459), (47, 28717, 28800), (47, 30926, 31009), (47, 33135, 33218), (47, 35344, 35427), (47, 37553, 37636)]

def row084_layer002_block006 : List ColouredInterval :=
  [(47, 39762, 39845), (47, 41971, 42054), (47, 44180, 44263), (47, 46389, 46472), (47, 48598, 48681), (47, 50807, 50890), (47, 53016, 53099), (53, 28090, 28173), (53, 30899, 30982), (53, 33708, 33791), (53, 36517, 36600), (53, 39326, 39409), (53, 42135, 42218), (53, 44944, 45027)]

def row084_layer002_block007 : List ColouredInterval :=
  [(53, 47753, 47836), (53, 50562, 50645), (53, 53371, 53454), (59, 27888, 27931), (59, 31329, 31412), (59, 34810, 34893), (59, 38291, 38374), (59, 41772, 41855), (59, 45253, 45336), (59, 48734, 48817), (59, 52215, 52298), (59, 55696, 55775), (61, 29768, 29851), (61, 33489, 33572)]

def row084_layer002_block008 : List ColouredInterval :=
  [(61, 37210, 37293), (61, 40931, 41014), (61, 44652, 44735), (61, 48373, 48456), (61, 52094, 52177), (67, 31423, 31506), (67, 35912, 35995), (67, 40401, 40484), (67, 44890, 44973), (67, 49379, 49462), (67, 53868, 53951), (71, 30246, 30329), (71, 35287, 35370), (71, 40328, 40411)]

def row084_layer002_block009 : List ColouredInterval :=
  [(71, 45369, 45452), (71, 50410, 50493), (71, 55451, 55534), (73, 31974, 32057), (73, 37303, 37386), (73, 42632, 42715), (73, 47961, 48044), (73, 53290, 53373), (79, 31205, 31288), (79, 37446, 37529), (79, 43687, 43770), (79, 49928, 50011), (83, 34445, 34528), (83, 41334, 41417)]

def row084_layer002_block010 : List ColouredInterval :=
  [(83, 48223, 48306), (83, 55112, 55195)]

def row084_layer002_chunks : List (List ColouredInterval) :=
  [row084_layer002_block000, row084_layer002_block001, row084_layer002_block002, row084_layer002_block003, row084_layer002_block004, row084_layer002_block005, row084_layer002_block006, row084_layer002_block007, row084_layer002_block008, row084_layer002_block009, row084_layer002_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_arithmetic : LayerArithmeticValid row084.height { lower := 27888, upper := 55776, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_enumeration :
    activePowerIntervalList 84 24 27888 55776 = row084_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs000 :
    row084_layer002_block000.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs001 :
    row084_layer002_block001.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs002 :
    row084_layer002_block002.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs003 :
    row084_layer002_block003.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs004 :
    row084_layer002_block004.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs005 :
    row084_layer002_block005.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs006 :
    row084_layer002_block006.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs007 :
    row084_layer002_block007.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs008 :
    row084_layer002_block008.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs009 :
    row084_layer002_block009.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_pairs010 :
    row084_layer002_block010.all (fun I => row084_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_chunks_eq : row084_layer002_chunks.flatten = row084_layer002_intervals := by
  rfl

theorem row084_layer002_pairs : pairCoverCheck row084_layer002_intervals row084_bounds = true := by
  apply pairCoverCheck_of_chunks row084_layer002_chunks_eq
  intro block hblock
  simp only [row084_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row084_layer002_pairs000
  · exact row084_layer002_pairs001
  · exact row084_layer002_pairs002
  · exact row084_layer002_pairs003
  · exact row084_layer002_pairs004
  · exact row084_layer002_pairs005
  · exact row084_layer002_pairs006
  · exact row084_layer002_pairs007
  · exact row084_layer002_pairs008
  · exact row084_layer002_pairs009
  · exact row084_layer002_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer002_checked :
    coverLayerCheck row084.height row084.goods { lower := 27888, upper := 55776, M := 24 } = true := by
  exact coverLayerCheck_of_parts row084_layer002_arithmetic row084_layer002_enumeration row084_bounds_eq row084_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer002_checked
