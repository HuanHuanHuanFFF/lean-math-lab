import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs008 :
    row085_layer000_block008.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_chunks_eq : row085_layer000_chunks.flatten = row085_layer000_intervals := by
  rfl

theorem row085_layer000_pairs : pairCoverCheck row085_layer000_intervals row085_bounds = true := by
  apply pairCoverCheck_of_chunks row085_layer000_chunks_eq
  intro block hblock
  simp only [row085_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row085_layer000_pairs000
  · exact row085_layer000_pairs001
  · exact row085_layer000_pairs002
  · exact row085_layer000_pairs003
  · exact row085_layer000_pairs004
  · exact row085_layer000_pairs005
  · exact row085_layer000_pairs006
  · exact row085_layer000_pairs007
  · exact row085_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_checked :
    coverLayerCheck row085.height row085.goods { lower := 7140, upper := 14280, M := 29 } = true := by
  exact coverLayerCheck_of_parts row085_layer000_arithmetic row085_layer000_enumeration row085_bounds_eq row085_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_layer001_intervals : List ColouredInterval :=
  [(2, 14336, 14420), (2, 15360, 15444), (2, 16384, 16468), (2, 17408, 17492), (2, 18432, 18516), (2, 19456, 19540), (2, 20480, 20564), (2, 21504, 21588), (2, 22528, 22612), (2, 23552, 23636), (2, 24576, 24660), (2, 25600, 25684), (2, 14336, 14420), (2, 16384, 16468), (2, 18432, 18516), (2, 20480, 20564), (2, 22528, 22612), (2, 24576, 24660), (2, 26624, 26708), (2, 16384, 16468), (2, 20480, 20564), (2, 24576, 24660), (2, 16384, 16468), (2, 24576, 24660), (2, 16384, 16468), (3, 14580, 14664), (3, 15309, 15393), (3, 16038, 16122), (3, 16767, 16851), (3, 17496, 17580), (3, 18225, 18309), (3, 15309, 15393), (3, 17496, 17580), (3, 19683, 19767), (3, 21870, 21954), (3, 24057, 24141), (3, 26244, 26328), (3, 28431, 28515), (3, 19683, 19767), (3, 26244, 26328), (3, 19683, 19767), (5, 15625, 15709), (5, 15625, 15709), (7, 14406, 14490), (7, 16807, 16891), (7, 19208, 19292), (7, 21609, 21693), (7, 24010, 24094), (7, 26411, 26495), (7, 16807, 16891), (11, 14641, 14725), (11, 15972, 16056), (11, 17303, 17387), (11, 18634, 18718), (11, 19965, 20049), (11, 21296, 21380), (11, 22627, 22711), (11, 23958, 24042), (11, 25289, 25373), (11, 26620, 26704), (11, 27951, 28035), (11, 14641, 14725), (13, 15379, 15463), (13, 17576, 17660), (13, 19773, 19857), (13, 21970, 22054), (13, 24167, 24251), (13, 26364, 26448), (19, 20577, 20661), (19, 27436, 27520), (23, 24334, 24418), (29, 14297, 14381), (29, 15138, 15222), (29, 15979, 16063), (29, 16820, 16904), (29, 17661, 17745), (29, 18502, 18586), (29, 19343, 19427), (29, 20184, 20268), (29, 21025, 21109), (29, 24389, 24473), (31, 14415, 14499), (31, 15376, 15460), (31, 16337, 16421), (31, 17298, 17382), (31, 18259, 18343), (31, 19220, 19304), (31, 20181, 20265), (31, 21142, 21226), (31, 22103, 22187), (31, 23064, 23148), (31, 24025, 24109), (37, 15059, 15143), (37, 16428, 16512), (37, 17797, 17881), (37, 19166, 19250), (37, 20535, 20619), (37, 21904, 21988), (37, 23273, 23357), (37, 24642, 24726), (37, 26011, 26095), (37, 27380, 27464), (41, 15129, 15213), (41, 16810, 16894), (41, 18491, 18575), (41, 20172, 20256), (41, 21853, 21937), (41, 23534, 23618), (41, 25215, 25299), (41, 26896, 26980), (43, 14792, 14876), (43, 16641, 16725), (43, 18490, 18574), (43, 20339, 20423), (43, 22188, 22272), (43, 24037, 24121), (43, 25886, 25970), (43, 27735, 27819), (47, 15463, 15547), (47, 17672, 17756), (47, 19881, 19965), (47, 22090, 22174), (47, 24299, 24383), (47, 26508, 26592), (53, 16854, 16938), (53, 19663, 19747), (53, 22472, 22556), (53, 25281, 25365), (53, 28090, 28174), (59, 17405, 17489), (59, 20886, 20970), (59, 24367, 24451), (59, 27848, 27932), (61, 14884, 14968), (61, 18605, 18689), (61, 22326, 22410), (61, 26047, 26131), (67, 17956, 18040), (67, 22445, 22529), (67, 26934, 27018), (71, 15123, 15207), (71, 20164, 20248), (71, 25205, 25289), (73, 15987, 16071), (73, 21316, 21400), (73, 26645, 26729), (79, 18723, 18807), (79, 24964, 25048), (83, 20667, 20751), (83, 27556, 27640)]

def row085_layer001_block000 : List ColouredInterval :=
  [(2, 14336, 14420), (2, 15360, 15444), (2, 16384, 16468), (2, 17408, 17492), (2, 18432, 18516), (2, 19456, 19540), (2, 20480, 20564), (2, 21504, 21588), (2, 22528, 22612), (2, 23552, 23636), (2, 24576, 24660), (2, 25600, 25684), (2, 14336, 14420)]

def row085_layer001_block001 : List ColouredInterval :=
  [(2, 16384, 16468), (2, 18432, 18516), (2, 20480, 20564), (2, 22528, 22612), (2, 24576, 24660), (2, 26624, 26708), (2, 16384, 16468), (2, 20480, 20564), (2, 24576, 24660), (2, 16384, 16468), (2, 24576, 24660), (2, 16384, 16468), (3, 14580, 14664)]

def row085_layer001_block002 : List ColouredInterval :=
  [(3, 15309, 15393), (3, 16038, 16122), (3, 16767, 16851), (3, 17496, 17580), (3, 18225, 18309), (3, 15309, 15393), (3, 17496, 17580), (3, 19683, 19767), (3, 21870, 21954), (3, 24057, 24141), (3, 26244, 26328), (3, 28431, 28515), (3, 19683, 19767)]

def row085_layer001_block003 : List ColouredInterval :=
  [(3, 26244, 26328), (3, 19683, 19767), (5, 15625, 15709), (5, 15625, 15709), (7, 14406, 14490), (7, 16807, 16891), (7, 19208, 19292), (7, 21609, 21693), (7, 24010, 24094), (7, 26411, 26495), (7, 16807, 16891), (11, 14641, 14725), (11, 15972, 16056)]

def row085_layer001_block004 : List ColouredInterval :=
  [(11, 17303, 17387), (11, 18634, 18718), (11, 19965, 20049), (11, 21296, 21380), (11, 22627, 22711), (11, 23958, 24042), (11, 25289, 25373), (11, 26620, 26704), (11, 27951, 28035), (11, 14641, 14725), (13, 15379, 15463), (13, 17576, 17660), (13, 19773, 19857)]

def row085_layer001_block005 : List ColouredInterval :=
  [(13, 21970, 22054), (13, 24167, 24251), (13, 26364, 26448), (19, 20577, 20661), (19, 27436, 27520), (23, 24334, 24418), (29, 14297, 14381), (29, 15138, 15222), (29, 15979, 16063), (29, 16820, 16904), (29, 17661, 17745), (29, 18502, 18586), (29, 19343, 19427)]

def row085_layer001_block006 : List ColouredInterval :=
  [(29, 20184, 20268), (29, 21025, 21109), (29, 24389, 24473), (31, 14415, 14499), (31, 15376, 15460), (31, 16337, 16421), (31, 17298, 17382), (31, 18259, 18343), (31, 19220, 19304), (31, 20181, 20265), (31, 21142, 21226), (31, 22103, 22187), (31, 23064, 23148)]

def row085_layer001_block007 : List ColouredInterval :=
  [(31, 24025, 24109), (37, 15059, 15143), (37, 16428, 16512), (37, 17797, 17881), (37, 19166, 19250), (37, 20535, 20619), (37, 21904, 21988), (37, 23273, 23357), (37, 24642, 24726), (37, 26011, 26095), (37, 27380, 27464), (41, 15129, 15213), (41, 16810, 16894)]

def row085_layer001_block008 : List ColouredInterval :=
  [(41, 18491, 18575), (41, 20172, 20256), (41, 21853, 21937), (41, 23534, 23618), (41, 25215, 25299), (41, 26896, 26980), (43, 14792, 14876), (43, 16641, 16725), (43, 18490, 18574), (43, 20339, 20423), (43, 22188, 22272), (43, 24037, 24121), (43, 25886, 25970)]

def row085_layer001_block009 : List ColouredInterval :=
  [(43, 27735, 27819), (47, 15463, 15547), (47, 17672, 17756), (47, 19881, 19965), (47, 22090, 22174), (47, 24299, 24383), (47, 26508, 26592), (53, 16854, 16938), (53, 19663, 19747), (53, 22472, 22556), (53, 25281, 25365), (53, 28090, 28174), (59, 17405, 17489)]

def row085_layer001_block010 : List ColouredInterval :=
  [(59, 20886, 20970), (59, 24367, 24451), (59, 27848, 27932), (61, 14884, 14968), (61, 18605, 18689), (61, 22326, 22410), (61, 26047, 26131), (67, 17956, 18040), (67, 22445, 22529), (67, 26934, 27018), (71, 15123, 15207), (71, 20164, 20248), (71, 25205, 25289)]

def row085_layer001_block011 : List ColouredInterval :=
  [(73, 15987, 16071), (73, 21316, 21400), (73, 26645, 26729), (79, 18723, 18807), (79, 24964, 25048), (83, 20667, 20751), (83, 27556, 27640)]

def row085_layer001_chunks : List (List ColouredInterval) :=
  [row085_layer001_block000, row085_layer001_block001, row085_layer001_block002, row085_layer001_block003, row085_layer001_block004, row085_layer001_block005, row085_layer001_block006, row085_layer001_block007, row085_layer001_block008, row085_layer001_block009, row085_layer001_block010, row085_layer001_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_arithmetic : LayerArithmeticValid row085.height { lower := 14280, upper := 28560, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_enumeration :
    activePowerIntervalList 85 25 14280 28560 = row085_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs000 :
    row085_layer001_block000.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs001 :
    row085_layer001_block001.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs002 :
    row085_layer001_block002.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs003 :
    row085_layer001_block003.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs004 :
    row085_layer001_block004.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs005 :
    row085_layer001_block005.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs006 :
    row085_layer001_block006.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs007 :
    row085_layer001_block007.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs008 :
    row085_layer001_block008.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs009 :
    row085_layer001_block009.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs010 :
    row085_layer001_block010.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_pairs011 :
    row085_layer001_block011.all (fun I => row085_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_chunks_eq : row085_layer001_chunks.flatten = row085_layer001_intervals := by
  rfl

theorem row085_layer001_pairs : pairCoverCheck row085_layer001_intervals row085_bounds = true := by
  apply pairCoverCheck_of_chunks row085_layer001_chunks_eq
  intro block hblock
  simp only [row085_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row085_layer001_pairs000
  · exact row085_layer001_pairs001
  · exact row085_layer001_pairs002
  · exact row085_layer001_pairs003
  · exact row085_layer001_pairs004
  · exact row085_layer001_pairs005
  · exact row085_layer001_pairs006
  · exact row085_layer001_pairs007
  · exact row085_layer001_pairs008
  · exact row085_layer001_pairs009
  · exact row085_layer001_pairs010
  · exact row085_layer001_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer001_checked :
    coverLayerCheck row085.height row085.goods { lower := 14280, upper := 28560, M := 25 } = true := by
  exact coverLayerCheck_of_parts row085_layer001_arithmetic row085_layer001_enumeration row085_bounds_eq row085_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_layer002_intervals : List ColouredInterval :=
  [(2, 28672, 28756), (2, 30720, 30804), (2, 32768, 32852), (2, 34816, 34900), (2, 36864, 36948), (2, 38912, 38996), (2, 40960, 41044), (2, 43008, 43092), (2, 45056, 45140), (2, 28672, 28756), (2, 32768, 32852), (2, 36864, 36948), (2, 40960, 41044), (2, 45056, 45140), (2, 49152, 49236), (2, 53248, 53332), (2, 32768, 32852), (2, 40960, 41044), (2, 49152, 49236), (2, 32768, 32852), (2, 49152, 49236), (2, 32768, 32852), (3, 30618, 30702), (3, 32805, 32889), (3, 34992, 35076), (3, 37179, 37263), (3, 39366, 39450), (3, 41553, 41637), (3, 43740, 43824), (3, 45927, 46011), (3, 48114, 48198), (3, 32805, 32889), (3, 39366, 39450), (3, 45927, 46011), (3, 52488, 52572), (3, 39366, 39450), (5, 31250, 31334), (5, 46875, 46959), (7, 28812, 28896), (7, 31213, 31297), (7, 33614, 33698), (7, 36015, 36099), (7, 38416, 38500), (7, 40817, 40901), (7, 43218, 43302), (7, 45619, 45703), (7, 48020, 48104), (7, 50421, 50505), (7, 52822, 52906), (7, 33614, 33698), (7, 50421, 50505), (11, 29282, 29366), (11, 29282, 29366), (11, 43923, 44007), (13, 28561, 28645), (13, 30758, 30842), (13, 32955, 33039), (13, 35152, 35236), (13, 37349, 37433), (13, 39546, 39630), (13, 41743, 41827), (13, 43940, 44024), (13, 46137, 46221), (13, 48334, 48418), (13, 28561, 28645), (19, 34295, 34379), (19, 41154, 41238), (19, 48013, 48097), (19, 54872, 54956), (23, 36501, 36585), (23, 48668, 48752), (29, 48778, 48862), (31, 29791, 29875), (37, 28749, 28833), (37, 30118, 30202), (37, 50653, 50737), (41, 28577, 28661), (41, 30258, 30342), (41, 31939, 32023), (41, 33620, 33704), (41, 35301, 35385), (41, 36982, 37066), (43, 29584, 29668), (43, 31433, 31517), (43, 33282, 33366), (43, 35131, 35215), (43, 36980, 37064), (43, 38829, 38913), (43, 40678, 40762), (47, 28717, 28801), (47, 30926, 31010), (47, 33135, 33219), (47, 35344, 35428), (47, 37553, 37637), (47, 39762, 39846), (47, 41971, 42055), (47, 44180, 44264), (47, 46389, 46473), (47, 48598, 48682), (53, 30899, 30983), (53, 33708, 33792), (53, 36517, 36601), (53, 39326, 39410), (53, 42135, 42219), (53, 44944, 45028), (53, 47753, 47837), (53, 50562, 50646), (53, 53371, 53455), (53, 56180, 56264), (59, 31329, 31413), (59, 34810, 34894), (59, 38291, 38375), (59, 41772, 41856), (59, 45253, 45337), (59, 48734, 48818), (59, 52215, 52299), (59, 55696, 55780), (61, 29768, 29852), (61, 33489, 33573), (61, 37210, 37294), (61, 40931, 41015), (61, 44652, 44736), (61, 48373, 48457), (61, 52094, 52178), (61, 55815, 55899), (67, 31423, 31507), (67, 35912, 35996), (67, 40401, 40485), (67, 44890, 44974), (67, 49379, 49463), (67, 53868, 53952), (71, 30246, 30330), (71, 35287, 35371), (71, 40328, 40412), (71, 45369, 45453), (71, 50410, 50494), (71, 55451, 55535), (73, 31974, 32058), (73, 37303, 37387), (73, 42632, 42716), (73, 47961, 48045), (73, 53290, 53374), (79, 31205, 31289), (79, 37446, 37530), (79, 43687, 43771), (79, 49928, 50012), (79, 56169, 56253), (83, 34445, 34529), (83, 41334, 41418), (83, 48223, 48307), (83, 55112, 55196)]

def row085_layer002_block000 : List ColouredInterval :=
  [(2, 28672, 28756), (2, 30720, 30804), (2, 32768, 32852), (2, 34816, 34900), (2, 36864, 36948), (2, 38912, 38996), (2, 40960, 41044), (2, 43008, 43092), (2, 45056, 45140), (2, 28672, 28756), (2, 32768, 32852), (2, 36864, 36948), (2, 40960, 41044)]

def row085_layer002_block001 : List ColouredInterval :=
  [(2, 45056, 45140), (2, 49152, 49236), (2, 53248, 53332), (2, 32768, 32852), (2, 40960, 41044), (2, 49152, 49236), (2, 32768, 32852), (2, 49152, 49236), (2, 32768, 32852), (3, 30618, 30702), (3, 32805, 32889), (3, 34992, 35076), (3, 37179, 37263)]

def row085_layer002_block002 : List ColouredInterval :=
  [(3, 39366, 39450), (3, 41553, 41637), (3, 43740, 43824), (3, 45927, 46011), (3, 48114, 48198), (3, 32805, 32889), (3, 39366, 39450), (3, 45927, 46011), (3, 52488, 52572), (3, 39366, 39450), (5, 31250, 31334), (5, 46875, 46959), (7, 28812, 28896)]

def row085_layer002_block003 : List ColouredInterval :=
  [(7, 31213, 31297), (7, 33614, 33698), (7, 36015, 36099), (7, 38416, 38500), (7, 40817, 40901), (7, 43218, 43302), (7, 45619, 45703), (7, 48020, 48104), (7, 50421, 50505), (7, 52822, 52906), (7, 33614, 33698), (7, 50421, 50505), (11, 29282, 29366)]

def row085_layer002_block004 : List ColouredInterval :=
  [(11, 29282, 29366), (11, 43923, 44007), (13, 28561, 28645), (13, 30758, 30842), (13, 32955, 33039), (13, 35152, 35236), (13, 37349, 37433), (13, 39546, 39630), (13, 41743, 41827), (13, 43940, 44024), (13, 46137, 46221), (13, 48334, 48418), (13, 28561, 28645)]

def row085_layer002_block005 : List ColouredInterval :=
  [(19, 34295, 34379), (19, 41154, 41238), (19, 48013, 48097), (19, 54872, 54956), (23, 36501, 36585), (23, 48668, 48752), (29, 48778, 48862), (31, 29791, 29875), (37, 28749, 28833), (37, 30118, 30202), (37, 50653, 50737), (41, 28577, 28661), (41, 30258, 30342)]

def row085_layer002_block006 : List ColouredInterval :=
  [(41, 31939, 32023), (41, 33620, 33704), (41, 35301, 35385), (41, 36982, 37066), (43, 29584, 29668), (43, 31433, 31517), (43, 33282, 33366), (43, 35131, 35215), (43, 36980, 37064), (43, 38829, 38913), (43, 40678, 40762), (47, 28717, 28801), (47, 30926, 31010)]

def row085_layer002_block007 : List ColouredInterval :=
  [(47, 33135, 33219), (47, 35344, 35428), (47, 37553, 37637), (47, 39762, 39846), (47, 41971, 42055), (47, 44180, 44264), (47, 46389, 46473), (47, 48598, 48682), (53, 30899, 30983), (53, 33708, 33792), (53, 36517, 36601), (53, 39326, 39410), (53, 42135, 42219)]

def row085_layer002_block008 : List ColouredInterval :=
  [(53, 44944, 45028), (53, 47753, 47837), (53, 50562, 50646), (53, 53371, 53455), (53, 56180, 56264), (59, 31329, 31413), (59, 34810, 34894), (59, 38291, 38375), (59, 41772, 41856), (59, 45253, 45337), (59, 48734, 48818), (59, 52215, 52299), (59, 55696, 55780)]

def row085_layer002_block009 : List ColouredInterval :=
  [(61, 29768, 29852), (61, 33489, 33573), (61, 37210, 37294), (61, 40931, 41015), (61, 44652, 44736), (61, 48373, 48457), (61, 52094, 52178), (61, 55815, 55899), (67, 31423, 31507), (67, 35912, 35996), (67, 40401, 40485), (67, 44890, 44974), (67, 49379, 49463)]

def row085_layer002_block010 : List ColouredInterval :=
  [(67, 53868, 53952), (71, 30246, 30330), (71, 35287, 35371), (71, 40328, 40412), (71, 45369, 45453), (71, 50410, 50494), (71, 55451, 55535), (73, 31974, 32058), (73, 37303, 37387), (73, 42632, 42716), (73, 47961, 48045), (73, 53290, 53374), (79, 31205, 31289)]

def row085_layer002_block011 : List ColouredInterval :=
  [(79, 37446, 37530), (79, 43687, 43771), (79, 49928, 50012), (79, 56169, 56253), (83, 34445, 34529), (83, 41334, 41418), (83, 48223, 48307), (83, 55112, 55196)]

def row085_layer002_chunks : List (List ColouredInterval) :=
  [row085_layer002_block000, row085_layer002_block001, row085_layer002_block002, row085_layer002_block003, row085_layer002_block004, row085_layer002_block005, row085_layer002_block006, row085_layer002_block007, row085_layer002_block008, row085_layer002_block009, row085_layer002_block010, row085_layer002_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_arithmetic : LayerArithmeticValid row085.height { lower := 28560, upper := 57120, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_enumeration :
    activePowerIntervalList 85 22 28560 57120 = row085_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs000 :
    row085_layer002_block000.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs001 :
    row085_layer002_block001.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs002 :
    row085_layer002_block002.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs003 :
    row085_layer002_block003.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs004 :
    row085_layer002_block004.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs005 :
    row085_layer002_block005.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs006 :
    row085_layer002_block006.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs007 :
    row085_layer002_block007.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs008 :
    row085_layer002_block008.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs008
