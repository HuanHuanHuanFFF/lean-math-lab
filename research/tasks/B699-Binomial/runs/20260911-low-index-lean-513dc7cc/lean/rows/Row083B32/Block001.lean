import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs008 :
    row083_layer000_block008.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs009 :
    row083_layer000_block009.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_pairs010 :
    row083_layer000_block010.all (fun I => row083_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_chunks_eq : row083_layer000_chunks.flatten = row083_layer000_intervals := by
  rfl

theorem row083_layer000_pairs : pairCoverCheck row083_layer000_intervals row083_bounds = true := by
  apply pairCoverCheck_of_chunks row083_layer000_chunks_eq
  intro block hblock
  simp only [row083_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row083_layer000_pairs000
  · exact row083_layer000_pairs001
  · exact row083_layer000_pairs002
  · exact row083_layer000_pairs003
  · exact row083_layer000_pairs004
  · exact row083_layer000_pairs005
  · exact row083_layer000_pairs006
  · exact row083_layer000_pairs007
  · exact row083_layer000_pairs008
  · exact row083_layer000_pairs009
  · exact row083_layer000_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer000_checked :
    coverLayerCheck row083.height row083.goods { lower := 6806, upper := 13612, M := 26 } = true := by
  exact coverLayerCheck_of_parts row083_layer000_arithmetic row083_layer000_enumeration row083_bounds_eq row083_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row083_layer001_intervals : List ColouredInterval :=
  [(2, 14336, 14418), (2, 15360, 15442), (2, 16384, 16466), (2, 17408, 17490), (2, 18432, 18514), (2, 19456, 19538), (2, 20480, 20562), (2, 21504, 21586), (2, 22528, 22610), (2, 14336, 14418), (2, 16384, 16466), (2, 18432, 18514), (2, 20480, 20562), (2, 22528, 22610), (2, 24576, 24658), (2, 26624, 26706), (2, 16384, 16466), (2, 20480, 20562), (2, 24576, 24658), (2, 16384, 16466), (2, 24576, 24658), (2, 16384, 16466), (3, 13851, 13933), (3, 14580, 14662), (3, 15309, 15391), (3, 16038, 16120), (3, 15309, 15391), (3, 17496, 17578), (3, 19683, 19765), (3, 21870, 21952), (3, 24057, 24139), (3, 26244, 26326), (3, 19683, 19765), (3, 26244, 26326), (3, 19683, 19765), (5, 13750, 13832), (5, 15625, 15707), (5, 18750, 18832), (5, 21875, 21957), (5, 25000, 25082), (5, 15625, 15707), (7, 14406, 14488), (7, 16807, 16889), (7, 19208, 19290), (7, 21609, 21691), (7, 24010, 24092), (7, 26411, 26493), (7, 16807, 16889), (11, 14641, 14723), (11, 15972, 16054), (11, 17303, 17385), (11, 18634, 18716), (11, 19965, 20047), (11, 21296, 21378), (11, 22627, 22709), (11, 23958, 24040), (11, 25289, 25371), (11, 26620, 26702), (11, 14641, 14723), (13, 15379, 15461), (13, 17576, 17658), (13, 19773, 19855), (13, 21970, 22052), (13, 24167, 24249), (13, 26364, 26446), (17, 14739, 14821), (17, 19652, 19734), (17, 24565, 24647), (19, 13718, 13800), (19, 20577, 20659), (23, 24334, 24416), (29, 14297, 14379), (29, 15138, 15220), (29, 15979, 16061), (29, 16820, 16902), (29, 17661, 17743), (29, 18502, 18584), (29, 24389, 24471), (31, 14415, 14497), (31, 15376, 15458), (31, 16337, 16419), (31, 17298, 17380), (31, 18259, 18341), (31, 19220, 19302), (31, 20181, 20263), (31, 21142, 21224), (37, 13690, 13772), (37, 15059, 15141), (37, 16428, 16510), (37, 17797, 17879), (37, 19166, 19248), (37, 20535, 20617), (37, 21904, 21986), (37, 23273, 23355), (37, 24642, 24724), (37, 26011, 26093), (41, 15129, 15211), (41, 16810, 16892), (41, 18491, 18573), (41, 20172, 20254), (41, 21853, 21935), (41, 23534, 23616), (41, 25215, 25297), (41, 26896, 26978), (43, 14792, 14874), (43, 16641, 16723), (43, 18490, 18572), (43, 20339, 20421), (43, 22188, 22270), (43, 24037, 24119), (43, 25886, 25968), (47, 15463, 15545), (47, 17672, 17754), (47, 19881, 19963), (47, 22090, 22172), (47, 24299, 24381), (47, 26508, 26590), (53, 14045, 14127), (53, 16854, 16936), (53, 19663, 19745), (53, 22472, 22554), (53, 25281, 25363), (59, 13924, 14006), (59, 17405, 17487), (59, 20886, 20968), (59, 24367, 24449), (61, 14884, 14966), (61, 18605, 18687), (61, 22326, 22408), (61, 26047, 26129), (67, 17956, 18038), (67, 22445, 22527), (67, 26934, 27016), (71, 15123, 15205), (71, 20164, 20246), (71, 25205, 25287), (73, 15987, 16069), (73, 21316, 21398), (73, 26645, 26727), (79, 18723, 18805), (79, 24964, 25046)]

def row083_layer001_block000 : List ColouredInterval :=
  [(2, 14336, 14418), (2, 15360, 15442), (2, 16384, 16466), (2, 17408, 17490), (2, 18432, 18514), (2, 19456, 19538), (2, 20480, 20562), (2, 21504, 21586), (2, 22528, 22610), (2, 14336, 14418), (2, 16384, 16466), (2, 18432, 18514), (2, 20480, 20562), (2, 22528, 22610)]

def row083_layer001_block001 : List ColouredInterval :=
  [(2, 24576, 24658), (2, 26624, 26706), (2, 16384, 16466), (2, 20480, 20562), (2, 24576, 24658), (2, 16384, 16466), (2, 24576, 24658), (2, 16384, 16466), (3, 13851, 13933), (3, 14580, 14662), (3, 15309, 15391), (3, 16038, 16120), (3, 15309, 15391), (3, 17496, 17578)]

def row083_layer001_block002 : List ColouredInterval :=
  [(3, 19683, 19765), (3, 21870, 21952), (3, 24057, 24139), (3, 26244, 26326), (3, 19683, 19765), (3, 26244, 26326), (3, 19683, 19765), (5, 13750, 13832), (5, 15625, 15707), (5, 18750, 18832), (5, 21875, 21957), (5, 25000, 25082), (5, 15625, 15707), (7, 14406, 14488)]

def row083_layer001_block003 : List ColouredInterval :=
  [(7, 16807, 16889), (7, 19208, 19290), (7, 21609, 21691), (7, 24010, 24092), (7, 26411, 26493), (7, 16807, 16889), (11, 14641, 14723), (11, 15972, 16054), (11, 17303, 17385), (11, 18634, 18716), (11, 19965, 20047), (11, 21296, 21378), (11, 22627, 22709), (11, 23958, 24040)]

def row083_layer001_block004 : List ColouredInterval :=
  [(11, 25289, 25371), (11, 26620, 26702), (11, 14641, 14723), (13, 15379, 15461), (13, 17576, 17658), (13, 19773, 19855), (13, 21970, 22052), (13, 24167, 24249), (13, 26364, 26446), (17, 14739, 14821), (17, 19652, 19734), (17, 24565, 24647), (19, 13718, 13800), (19, 20577, 20659)]

def row083_layer001_block005 : List ColouredInterval :=
  [(23, 24334, 24416), (29, 14297, 14379), (29, 15138, 15220), (29, 15979, 16061), (29, 16820, 16902), (29, 17661, 17743), (29, 18502, 18584), (29, 24389, 24471), (31, 14415, 14497), (31, 15376, 15458), (31, 16337, 16419), (31, 17298, 17380), (31, 18259, 18341), (31, 19220, 19302)]

def row083_layer001_block006 : List ColouredInterval :=
  [(31, 20181, 20263), (31, 21142, 21224), (37, 13690, 13772), (37, 15059, 15141), (37, 16428, 16510), (37, 17797, 17879), (37, 19166, 19248), (37, 20535, 20617), (37, 21904, 21986), (37, 23273, 23355), (37, 24642, 24724), (37, 26011, 26093), (41, 15129, 15211), (41, 16810, 16892)]

def row083_layer001_block007 : List ColouredInterval :=
  [(41, 18491, 18573), (41, 20172, 20254), (41, 21853, 21935), (41, 23534, 23616), (41, 25215, 25297), (41, 26896, 26978), (43, 14792, 14874), (43, 16641, 16723), (43, 18490, 18572), (43, 20339, 20421), (43, 22188, 22270), (43, 24037, 24119), (43, 25886, 25968), (47, 15463, 15545)]

def row083_layer001_block008 : List ColouredInterval :=
  [(47, 17672, 17754), (47, 19881, 19963), (47, 22090, 22172), (47, 24299, 24381), (47, 26508, 26590), (53, 14045, 14127), (53, 16854, 16936), (53, 19663, 19745), (53, 22472, 22554), (53, 25281, 25363), (59, 13924, 14006), (59, 17405, 17487), (59, 20886, 20968), (59, 24367, 24449)]

def row083_layer001_block009 : List ColouredInterval :=
  [(61, 14884, 14966), (61, 18605, 18687), (61, 22326, 22408), (61, 26047, 26129), (67, 17956, 18038), (67, 22445, 22527), (67, 26934, 27016), (71, 15123, 15205), (71, 20164, 20246), (71, 25205, 25287), (73, 15987, 16069), (73, 21316, 21398), (73, 26645, 26727), (79, 18723, 18805)]

def row083_layer001_block010 : List ColouredInterval :=
  [(79, 24964, 25046)]

def row083_layer001_chunks : List (List ColouredInterval) :=
  [row083_layer001_block000, row083_layer001_block001, row083_layer001_block002, row083_layer001_block003, row083_layer001_block004, row083_layer001_block005, row083_layer001_block006, row083_layer001_block007, row083_layer001_block008, row083_layer001_block009, row083_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_arithmetic : LayerArithmeticValid row083.height { lower := 13612, upper := 27224, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_enumeration :
    activePowerIntervalList 83 22 13612 27224 = row083_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs000 :
    row083_layer001_block000.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs001 :
    row083_layer001_block001.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs002 :
    row083_layer001_block002.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs003 :
    row083_layer001_block003.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs004 :
    row083_layer001_block004.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs005 :
    row083_layer001_block005.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs006 :
    row083_layer001_block006.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs007 :
    row083_layer001_block007.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs008 :
    row083_layer001_block008.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs009 :
    row083_layer001_block009.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_pairs010 :
    row083_layer001_block010.all (fun I => row083_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_chunks_eq : row083_layer001_chunks.flatten = row083_layer001_intervals := by
  rfl

theorem row083_layer001_pairs : pairCoverCheck row083_layer001_intervals row083_bounds = true := by
  apply pairCoverCheck_of_chunks row083_layer001_chunks_eq
  intro block hblock
  simp only [row083_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row083_layer001_pairs000
  · exact row083_layer001_pairs001
  · exact row083_layer001_pairs002
  · exact row083_layer001_pairs003
  · exact row083_layer001_pairs004
  · exact row083_layer001_pairs005
  · exact row083_layer001_pairs006
  · exact row083_layer001_pairs007
  · exact row083_layer001_pairs008
  · exact row083_layer001_pairs009
  · exact row083_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer001_checked :
    coverLayerCheck row083.height row083.goods { lower := 13612, upper := 27224, M := 22 } = true := by
  exact coverLayerCheck_of_parts row083_layer001_arithmetic row083_layer001_enumeration row083_bounds_eq row083_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row083_layer002_intervals : List ColouredInterval :=
  [(2, 28672, 28754), (2, 30720, 30802), (2, 32768, 32850), (2, 34816, 34898), (2, 36864, 36946), (2, 38912, 38994), (2, 28672, 28754), (2, 32768, 32850), (2, 36864, 36946), (2, 40960, 41042), (2, 45056, 45138), (2, 49152, 49234), (2, 53248, 53330), (2, 32768, 32850), (2, 40960, 41042), (2, 49152, 49234), (2, 32768, 32850), (2, 49152, 49234), (2, 32768, 32850), (3, 28431, 28513), (3, 30618, 30700), (3, 32805, 32887), (3, 34992, 35074), (3, 37179, 37261), (3, 39366, 39448), (3, 41553, 41635), (3, 32805, 32887), (3, 39366, 39448), (3, 45927, 46009), (3, 52488, 52570), (3, 39366, 39448), (5, 28125, 28207), (5, 31250, 31332), (5, 34375, 34457), (5, 37500, 37582), (5, 40625, 40707), (5, 43750, 43832), (5, 46875, 46957), (5, 50000, 50082), (5, 53125, 53207), (5, 31250, 31332), (5, 46875, 46957), (7, 28812, 28894), (7, 31213, 31295), (7, 33614, 33696), (7, 36015, 36097), (7, 38416, 38498), (7, 40817, 40899), (7, 43218, 43300), (7, 45619, 45701), (7, 33614, 33696), (7, 50421, 50503), (11, 29282, 29364), (11, 43923, 44005), (13, 28561, 28643), (13, 30758, 30840), (13, 32955, 33037), (13, 35152, 35234), (13, 37349, 37431), (13, 39546, 39628), (13, 41743, 41825), (13, 28561, 28643), (17, 29478, 29560), (17, 34391, 34473), (17, 39304, 39386), (17, 44217, 44299), (17, 49130, 49212), (17, 54043, 54125), (19, 27436, 27518), (19, 34295, 34377), (19, 41154, 41236), (19, 48013, 48095), (23, 36501, 36583), (23, 48668, 48750), (29, 48778, 48860), (31, 29791, 29873), (37, 50653, 50735), (41, 28577, 28659), (41, 30258, 30340), (41, 31939, 32021), (43, 27735, 27817), (43, 29584, 29666), (43, 31433, 31515), (43, 33282, 33364), (43, 35131, 35213), (47, 28717, 28799), (47, 30926, 31008), (47, 33135, 33217), (47, 35344, 35426), (47, 37553, 37635), (47, 39762, 39844), (47, 41971, 42053), (53, 28090, 28172), (53, 30899, 30981), (53, 33708, 33790), (53, 36517, 36599), (53, 39326, 39408), (53, 42135, 42217), (53, 44944, 45026), (53, 47753, 47835), (53, 50562, 50644), (53, 53371, 53453), (59, 27848, 27930), (59, 31329, 31411), (59, 34810, 34892), (59, 38291, 38373), (59, 41772, 41854), (59, 45253, 45335), (59, 48734, 48816), (59, 52215, 52297), (61, 29768, 29850), (61, 33489, 33571), (61, 37210, 37292), (61, 40931, 41013), (61, 44652, 44734), (61, 48373, 48455), (61, 52094, 52176), (67, 31423, 31505), (67, 35912, 35994), (67, 40401, 40483), (67, 44890, 44972), (67, 49379, 49461), (67, 53868, 53950), (71, 30246, 30328), (71, 35287, 35369), (71, 40328, 40410), (71, 45369, 45451), (71, 50410, 50492), (73, 31974, 32056), (73, 37303, 37385), (73, 42632, 42714), (73, 47961, 48043), (73, 53290, 53372), (79, 31205, 31287), (79, 37446, 37528), (79, 43687, 43769), (79, 49928, 50010)]

def row083_layer002_block000 : List ColouredInterval :=
  [(2, 28672, 28754), (2, 30720, 30802), (2, 32768, 32850), (2, 34816, 34898), (2, 36864, 36946), (2, 38912, 38994), (2, 28672, 28754), (2, 32768, 32850), (2, 36864, 36946), (2, 40960, 41042), (2, 45056, 45138), (2, 49152, 49234), (2, 53248, 53330), (2, 32768, 32850)]

def row083_layer002_block001 : List ColouredInterval :=
  [(2, 40960, 41042), (2, 49152, 49234), (2, 32768, 32850), (2, 49152, 49234), (2, 32768, 32850), (3, 28431, 28513), (3, 30618, 30700), (3, 32805, 32887), (3, 34992, 35074), (3, 37179, 37261), (3, 39366, 39448), (3, 41553, 41635), (3, 32805, 32887), (3, 39366, 39448)]

def row083_layer002_block002 : List ColouredInterval :=
  [(3, 45927, 46009), (3, 52488, 52570), (3, 39366, 39448), (5, 28125, 28207), (5, 31250, 31332), (5, 34375, 34457), (5, 37500, 37582), (5, 40625, 40707), (5, 43750, 43832), (5, 46875, 46957), (5, 50000, 50082), (5, 53125, 53207), (5, 31250, 31332), (5, 46875, 46957)]

def row083_layer002_block003 : List ColouredInterval :=
  [(7, 28812, 28894), (7, 31213, 31295), (7, 33614, 33696), (7, 36015, 36097), (7, 38416, 38498), (7, 40817, 40899), (7, 43218, 43300), (7, 45619, 45701), (7, 33614, 33696), (7, 50421, 50503), (11, 29282, 29364), (11, 43923, 44005), (13, 28561, 28643), (13, 30758, 30840)]

def row083_layer002_block004 : List ColouredInterval :=
  [(13, 32955, 33037), (13, 35152, 35234), (13, 37349, 37431), (13, 39546, 39628), (13, 41743, 41825), (13, 28561, 28643), (17, 29478, 29560), (17, 34391, 34473), (17, 39304, 39386), (17, 44217, 44299), (17, 49130, 49212), (17, 54043, 54125), (19, 27436, 27518), (19, 34295, 34377)]

def row083_layer002_block005 : List ColouredInterval :=
  [(19, 41154, 41236), (19, 48013, 48095), (23, 36501, 36583), (23, 48668, 48750), (29, 48778, 48860), (31, 29791, 29873), (37, 50653, 50735), (41, 28577, 28659), (41, 30258, 30340), (41, 31939, 32021), (43, 27735, 27817), (43, 29584, 29666), (43, 31433, 31515), (43, 33282, 33364)]

def row083_layer002_block006 : List ColouredInterval :=
  [(43, 35131, 35213), (47, 28717, 28799), (47, 30926, 31008), (47, 33135, 33217), (47, 35344, 35426), (47, 37553, 37635), (47, 39762, 39844), (47, 41971, 42053), (53, 28090, 28172), (53, 30899, 30981), (53, 33708, 33790), (53, 36517, 36599), (53, 39326, 39408), (53, 42135, 42217)]

def row083_layer002_block007 : List ColouredInterval :=
  [(53, 44944, 45026), (53, 47753, 47835), (53, 50562, 50644), (53, 53371, 53453), (59, 27848, 27930), (59, 31329, 31411), (59, 34810, 34892), (59, 38291, 38373), (59, 41772, 41854), (59, 45253, 45335), (59, 48734, 48816), (59, 52215, 52297), (61, 29768, 29850), (61, 33489, 33571)]

def row083_layer002_block008 : List ColouredInterval :=
  [(61, 37210, 37292), (61, 40931, 41013), (61, 44652, 44734), (61, 48373, 48455), (61, 52094, 52176), (67, 31423, 31505), (67, 35912, 35994), (67, 40401, 40483), (67, 44890, 44972), (67, 49379, 49461), (67, 53868, 53950), (71, 30246, 30328), (71, 35287, 35369), (71, 40328, 40410)]

def row083_layer002_block009 : List ColouredInterval :=
  [(71, 45369, 45451), (71, 50410, 50492), (73, 31974, 32056), (73, 37303, 37385), (73, 42632, 42714), (73, 47961, 48043), (73, 53290, 53372), (79, 31205, 31287), (79, 37446, 37528), (79, 43687, 43769), (79, 49928, 50010)]

def row083_layer002_chunks : List (List ColouredInterval) :=
  [row083_layer002_block000, row083_layer002_block001, row083_layer002_block002, row083_layer002_block003, row083_layer002_block004, row083_layer002_block005, row083_layer002_block006, row083_layer002_block007, row083_layer002_block008, row083_layer002_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_arithmetic : LayerArithmeticValid row083.height { lower := 27224, upper := 54448, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_enumeration :
    activePowerIntervalList 83 19 27224 54448 = row083_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs000 :
    row083_layer002_block000.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs001 :
    row083_layer002_block001.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs002 :
    row083_layer002_block002.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs003 :
    row083_layer002_block003.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs004 :
    row083_layer002_block004.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs005 :
    row083_layer002_block005.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs006 :
    row083_layer002_block006.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs007 :
    row083_layer002_block007.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs007
